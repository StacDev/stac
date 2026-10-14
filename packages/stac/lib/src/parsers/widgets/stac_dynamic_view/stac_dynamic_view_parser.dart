import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stac/src/expressions/stac_expression_runtime.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/services/stac_data_loader.dart';
import 'package:stac/src/state/stac_state_reader.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

/// Loads data with a request and renders a template with it.
///
/// Loading is shared with `dataProvider`. The template pass is kept for
/// existing screens: item fields are read by their bare names, and the root
/// widget's `itemTemplate` is repeated into its `children`. A template whose
/// root has `items` is rendered like any layout with items instead, reading
/// `$item` and `$index`.
class StacDynamicViewParser extends StacParser<StacDynamicView> {
  const StacDynamicViewParser();

  @override
  String get type => WidgetType.dynamicView.name;

  @override
  StacDynamicView getModel(Map<String, dynamic> json) {
    return StacDynamicView.fromJson(json);
  }

  @override
  Widget parse(BuildContext context, StacDynamicView model) {
    return _DynamicView(model: model);
  }
}

/// Fetches once and keeps the data across rebuilds. A new request is sent
/// only when the request itself changes.
class _DynamicView extends StatefulWidget {
  const _DynamicView({required this.model});

  final StacDynamicView model;

  @override
  State<_DynamicView> createState() => _DynamicViewState();
}

class _DynamicViewState extends State<_DynamicView> {
  late final StacDataLoader _loader = StacDataLoader(onChange: _onChange);
  Map<String, dynamic>? _request;
  bool _rebuildScheduled = false;

  // The template rendered for the last data. Reusing it keeps the rendered
  // widgets' JSON identical across rebuilds, so they are not rebuilt. It is
  // dropped when the model or the state it read changes.
  Object? _renderedFor;
  Map<String, dynamic>? _rendered;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _rendered = null;
    if (_request == null) _load();
  }

  @override
  void didUpdateWidget(covariant _DynamicView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.model, widget.model)) _rendered = null;
    if (!stacDeepEquals(_request, widget.model.request.toJson())) _load();
  }

  @override
  void dispose() {
    _loader.dispose();
    super.dispose();
  }

  void _load() {
    _request = widget.model.request.toJson();
    unawaited(_loader.load(context, widget.model.request));
  }

  void _onChange(StacDataState state) {
    if (!mounted) return;
    final binding = SchedulerBinding.instance;
    if (binding.schedulerPhase != SchedulerPhase.persistentCallbacks) {
      setState(() {});
      return;
    }
    if (_rebuildScheduled) return;
    _rebuildScheduled = true;
    binding.addPostFrameCallback((_) {
      _rebuildScheduled = false;
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = widget.model;
    final state = _loader.state;
    if (state.isLoading) {
      return model.loaderWidget.parse(context) ??
          const Center(child: CircularProgressIndicator());
    }
    if (state.error != null) {
      return model.errorWidget.parse(context) ?? const SizedBox();
    }
    if (!state.hasData) return const SizedBox();
    return _buildFromData(context, model, state.data);
  }

  Widget _buildFromData(
    BuildContext context,
    StacDynamicView model,
    Object? body,
  ) {
    try {
      final found = readStacTargetPath(body, model.targetPath);
      final data = identical(found, stacUnbound) ? null : found;

      if (data == null) return const SizedBox();

      // An empty list, or data holding one, shows the empty template.
      if (_isEmptyList(data) && model.emptyTemplate != null) {
        return model.emptyTemplate.parse(context) ?? const SizedBox();
      }

      final resultTarget = model.resultTarget ?? '';
      final dataForTemplate = resultTarget.isNotEmpty
          ? {resultTarget: data}
          : data;

      if (_rendered == null || !identical(_renderedFor, body)) {
        _renderedFor = body;
        _rendered = _applyDataToTemplate(
          model.template ?? StacSizedBox(),
          dataForTemplate,
          resultTarget,
        );
      }
      return Stac.fromJson(_rendered, context) ?? const SizedBox();
    } catch (e) {
      Log.e('Error parsing API response: $e');
      return model.errorWidget.parse(context) ?? const SizedBox();
    }
  }

  /// Renders [currentTemplate] with [data] without modifying the template.
  ///
  /// With an `itemTemplate` on the root and a list, one child is rendered
  /// per item; each reads its fields by name, and also `$item` and
  /// `$index`. A root with `items` renders its items itself. Placeholders
  /// are then resolved against the whole data when it is a map.
  Map<String, dynamic> _applyDataToTemplate(
    StacWidget currentTemplate,
    Object? data,
    String resultTarget,
  ) {
    final templateJson =
        _deepCopy(currentTemplate.toJson()) as Map<String, dynamic>;

    const itemTemplateKey = 'itemTemplate';
    final itemTemplate = templateJson[itemTemplateKey];
    if (itemTemplate is Map && !templateJson.containsKey('items')) {
      List<dynamic>? items;
      if (resultTarget.isNotEmpty &&
          data is Map &&
          data[resultTarget] is List) {
        items = data[resultTarget] as List;
      } else if (resultTarget.isEmpty && data is List) {
        items = data;
      }

      if (items != null) {
        templateJson.remove(itemTemplateKey);
        if (items.isEmpty) {
          templateJson['children'] = <dynamic>[];
          return templateJson;
        }

        final children = <dynamic>[];
        for (var index = 0; index < items.length; index++) {
          final item = items[index];
          final itemData = <String, Object?>{
            if (resultTarget.isNotEmpty)
              resultTarget: item
            else if (item is Map)
              for (final entry in item.entries)
                entry.key.toString(): entry.value,
            r'$item': item,
            r'$index': index,
          };
          children.add(_resolveWithData(itemTemplate, itemData));
        }

        final existing = templateJson['children'];
        if (existing is List) {
          templateJson['children'] = <dynamic>[...existing, ...children];
        } else {
          if (existing != null) {
            Log.w(
              "Template has 'children' but it's not a List. Overwriting with processed items.",
            );
          }
          templateJson['children'] = children;
        }
      } else {
        Log.d(
          "itemTemplate found but no list to iterate in dataContext. Template: $currentTemplate, DataContext: $data",
        );
      }
    }

    if (data is Map) {
      return _resolveWithData(templateJson, data) as Map<String, dynamic>;
    }
    return templateJson;
  }

  /// Resolves placeholders in [json] with [data] first, then Stac state.
  ///
  /// Reading state here makes this view render again when that state
  /// changes.
  Object? _resolveWithData(Object? json, Map<dynamic, dynamic> data) {
    final values = <String, Object?>{
      for (final entry in data.entries) entry.key.toString(): entry.value,
    };
    return stacJsonResolver.resolveTemplate(
      json,
      data: StacMapScopeReader(values),
      scope: StacMapScopeReader(
        values,
        parent: StacStateReader.watching(context),
      ),
    );
  }

  static Object? _deepCopy(Object? value) {
    if (value is Map) {
      return <String, dynamic>{
        for (final entry in value.entries)
          entry.key.toString(): _deepCopy(entry.value),
      };
    }
    if (value is List) {
      return <dynamic>[for (final item in value) _deepCopy(item)];
    }
    return value;
  }

  /// Whether [data] is an empty list or a map holding one at any depth.
  bool _isEmptyList(Object? data) {
    if (data is List) return data.isEmpty;
    if (data is Map) {
      for (final value in data.values) {
        if (value is List && value.isEmpty) return true;
        if (value is Map && _isEmptyList(value)) return true;
      }
    }
    return false;
  }
}
