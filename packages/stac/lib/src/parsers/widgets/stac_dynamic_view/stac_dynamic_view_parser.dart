import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/services/stac_network_service.dart';
import 'package:stac/src/utils/template_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

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
    return FutureBuilder<Response?>(
      future: _fetchData(context, model),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return model.loaderWidget.parse(context) ??
              const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          Log.e(snapshot.error);
          return model.errorWidget.parse(context) ?? const SizedBox();
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

              final data = model.targetPath?.isEmpty ?? true
                  ? responseData
                  : extractNestedData(
                      responseData,
                      model.targetPath?.split('.') ?? [],
                    );

              Log.d("data: $data");

              if (data != null) {
                if (isEmptyList(data) && model.emptyTemplate != null) {
                  Log.d("Data is empty list, using empty template");
                  return model.emptyTemplate.parse(context) ?? const SizedBox();
                }

                final dataForTemplate =
                    (model.resultTarget?.isNotEmpty ?? false)
                    ? {model.resultTarget: data}
                    : data;

                final renderedTemplate = _applyDataToTemplate(
                  model.template ?? StacSizedBox(),
                  dataForTemplate,
                  model.resultTarget ?? "",
                );
                return Stac.fromJson(renderedTemplate, context) ??
                    const SizedBox();
              }
            } catch (e) {
              Log.e('Error parsing API response: $e');
              return model.errorWidget.parse(context) ?? const SizedBox();
            }
          }
          return const SizedBox();
        } else {
          return const SizedBox();
        }
      },
    );
  }

  Future<Response?> _fetchData(
    BuildContext context,
    StacDynamicView model,
  ) async {
    try {
      return await StacNetworkService.request(context, model.request);
    } catch (e) {
      Log.e('Error fetching dynamic content: $e');
      rethrow;
    }
  }

  Map<String, dynamic> _applyDataToTemplate(
    StacWidget currentTemplate,
    dynamic data,
    String resultTarget,
  ) {
    Map<String, dynamic> resolvedTemplateJson = currentTemplate.toJson();

    if (resolvedTemplateJson.containsKey('itemTemplate')) {
      dynamic listForIteration;
      final String itemTemplateKey = 'itemTemplate';
      final itemTemplateActual =
          resolvedTemplateJson[itemTemplateKey] as Map<String, dynamic>;

      if (resultTarget.isNotEmpty &&
          data is Map &&
          data.containsKey(resultTarget) &&
          data[resultTarget] is List) {
        listForIteration = data[resultTarget];
      } else if (resultTarget.isEmpty && data is List) {
        listForIteration = data;
      }

      if (listForIteration != null) {
        if (listForIteration is List && listForIteration.isEmpty) {
          Log.d(
            "List for iteration is empty, removing itemTemplate and children",
          );
          resolvedTemplateJson.remove(itemTemplateKey);
          resolvedTemplateJson['children'] = [];
          return resolvedTemplateJson;
        }

        resolvedTemplateJson.remove(itemTemplateKey);
        final processedChildItems = processItemTemplate(
          itemTemplate: itemTemplateActual,
          listData: listForIteration as List,
          resultTarget: resultTarget,
        );

        if (!resolvedTemplateJson.containsKey('children')) {
          resolvedTemplateJson['children'] = [];
        }
        if (resolvedTemplateJson['children'] is List) {
          (resolvedTemplateJson['children'] as List).addAll(
            processedChildItems,
          );
        } else {
          Log.w(
            "Template has 'children' but it's not a List. Overwriting with processed items.",
          );
          resolvedTemplateJson['children'] = processedChildItems;
        }
      } else {
        Log.d(
          "itemTemplate found but no list to iterate in dataContext. Template: $currentTemplate, DataContext: $data",
        );
      }
    }

    if (data is Map) {
      final Map<dynamic, dynamic> mapDataContext = Map<dynamic, dynamic>.from(
        data,
      );
      processTemplateRecursively(resolvedTemplateJson, mapDataContext);
    } else {
      Log.d(
        "Overall dataContext is not a Map, skipping final placeholder processing for the main template structure. DataContext: $data",
      );
    }

    return resolvedTemplateJson;
  }
}
