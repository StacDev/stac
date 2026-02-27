import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/widgets/stac_dynamic_data_provider/dynamic_data_scope.dart';
import 'package:stac/src/services/stac_network_service.dart';
import 'package:stac/src/utils/template_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

class StacDynamicDataProviderParser
    extends StacParser<StacDynamicDataProvider> {
  const StacDynamicDataProviderParser();

  @override
  String get type => WidgetType.dynamicDataProvider.name;

  @override
  StacDynamicDataProvider getModel(Map<String, dynamic> json) {
    return StacDynamicDataProvider.fromJson(json);
  }

  @override
  Widget parse(BuildContext context, StacDynamicDataProvider model) {
    return _DynamicDataProviderWidget(model: model);
  }
}

class _DynamicDataProviderWidget extends StatefulWidget {
  const _DynamicDataProviderWidget({required this.model});

  final StacDynamicDataProvider model;

  @override
  State<_DynamicDataProviderWidget> createState() =>
      _DynamicDataProviderWidgetState();
}

class _DynamicDataProviderWidgetState
    extends State<_DynamicDataProviderWidget> {
  late Future<Response?> _future;

  @override
  void initState() {
    super.initState();
    _future = _fetchData();
  }

  @override
  void didUpdateWidget(covariant _DynamicDataProviderWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.model.request != oldWidget.model.request) {
      setState(() => _future = _fetchData());
    }
  }

  Future<Response?> _fetchData() async {
    try {
      return await StacNetworkService.request(context, widget.model.request);
    } catch (e) {
      Log.e('Error fetching dynamic data provider content: $e');
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Response?>(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return widget.model.loaderWidget.parse(context) ??
              const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          Log.e(snapshot.error);
          return widget.model.errorWidget.parse(context) ?? const SizedBox();
        } else if (snapshot.hasData) {
          final response = snapshot.data;
          if (response != null) {
            try {
              dynamic responseData;
              if (response.data is String) {
                responseData = jsonDecode(response.data);
              } else if (response.data is Map) {
                responseData = response.data;
              } else {
                responseData = response.data;
              }

              final data = widget.model.targetPath?.isEmpty ?? true
                  ? responseData
                  : extractNestedData(
                      responseData,
                      widget.model.targetPath?.split('.') ?? [],
                    );

              // Merge with any parent scope's data
              final parentScope = DynamicDataScope.maybeOf(context);
              final mergedDataMap = <String, dynamic>{
                if (parentScope != null) ...parentScope.dataMap,
                widget.model.id: data,
              };

              return DynamicDataScope(
                dataMap: mergedDataMap,
                child: Builder(
                  builder: (scopedContext) {
                    return widget.model.child.parse(scopedContext) ??
                        const SizedBox();
                  },
                ),
              );
            } catch (e) {
              Log.e('Error parsing DynamicDataProvider response: $e');
              return widget.model.errorWidget.parse(context) ??
                  const SizedBox();
            }
          }
          return const SizedBox();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
