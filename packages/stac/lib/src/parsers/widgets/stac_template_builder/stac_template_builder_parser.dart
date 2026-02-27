import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/widgets/stac_dynamic_data_provider/dynamic_data_scope.dart';
import 'package:stac/src/utils/template_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

class StacTemplateBuilderParser extends StacParser<StacTemplateBuilder> {
  const StacTemplateBuilderParser();

  /// Widget types that accept a `children` array of [StacWidget] and are
  /// valid as TemplateBuilder child targets. Others would silently drop
  /// injected children.
  static const Set<String> _layoutWidgetTypesWithChildren = {
    'column',
    'row',
    'listView',
    'gridView',
    'stack',
    'wrap',
    'sliverList',
    'sliverGrid',
    'carouselView',
    'pageView',
    'tabBarView',
    'bottomNavigationView',
  };

  @override
  String get type => WidgetType.templateBuilder.name;

  @override
  StacTemplateBuilder getModel(Map<String, dynamic> json) {
    return StacTemplateBuilder.fromJson(json);
  }

  @override
  Widget parse(BuildContext context, StacTemplateBuilder model) {
    final listData = _resolveListData(context, model);

    if (listData == null) {
      Log.w(
        'TemplateBuilder: No data resolved. '
        'Provide either "data" or "providerId".',
      );
      return model.child.parse(context) ?? const SizedBox();
    }

    if (listData.isEmpty) {
      return model.emptyWidget.parse(context) ??
          model.child.parse(context) ??
          const SizedBox();
    }

    final itemTemplateJson = model.itemTemplate.toJson();
    final processedChildren = processItemTemplate(
      itemTemplate: itemTemplateJson,
      listData: listData,
    );

    // Deep copy the child JSON and inject the generated children
    final childJson =
        jsonDecode(jsonEncode(model.child.toJson())) as Map<String, dynamic>;

    final childType = childJson['type'] as String?;
    if (childType == null || !_layoutWidgetTypesWithChildren.contains(childType)) {
      throw FormatException(
        'TemplateBuilder child must be a layout widget that supports "children". '
        'Got type: ${childType ?? "null"}. '
        'Supported types: ${_layoutWidgetTypesWithChildren.join(", ")}.',
      );
    }

    if (!childJson.containsKey('children')) {
      childJson['children'] = [];
    }
    if (childJson['children'] is List) {
      (childJson['children'] as List).addAll(processedChildren);
    } else {
      childJson['children'] = processedChildren;
    }

    return Stac.fromJson(childJson, context) ?? const SizedBox();
  }

  List<dynamic>? _resolveListData(
    BuildContext context,
    StacTemplateBuilder model,
  ) {
    // Direct data takes priority
    if (model.data != null) {
      return model.data;
    }

    // Fall back to DynamicDataScope lookup
    if (model.providerId != null) {
      final scope = DynamicDataScope.of(context);
      if (scope == null) {
        Log.w(
          'TemplateBuilder: No DynamicDataScope found in widget tree '
          'for providerId "${model.providerId}".',
        );
        return null;
      }

      dynamic providerData = scope.getData(model.providerId!);
      if (providerData == null) {
        Log.w(
          'TemplateBuilder: No data found for '
          'providerId "${model.providerId}".',
        );
        return null;
      }

      // Extract nested list via dataPath if specified
      if (model.dataPath?.isNotEmpty ?? false) {
        providerData = extractNestedData(
          providerData,
          model.dataPath!.split('.'),
        );
      }

      if (providerData is List) {
        return providerData;
      }

      Log.w(
        'TemplateBuilder: Resolved data is not a List. '
        'providerId="${model.providerId}", dataPath="${model.dataPath}".',
      );
      return null;
    }

    return null;
  }
}
