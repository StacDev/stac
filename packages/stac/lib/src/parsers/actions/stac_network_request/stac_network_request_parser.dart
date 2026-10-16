import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/services/stac_network_service.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

class StacNetworkRequestParser extends StacActionParser<StacNetworkRequest> {
  const StacNetworkRequestParser();

  @override
  String get actionType => ActionType.networkRequest.name;

  @override
  StacNetworkRequest getModel(Map<String, dynamic> json) =>
      StacNetworkRequest.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacNetworkRequest model) async {
    Response<dynamic>? response;

    try {
      response = await StacNetworkService.request(context, model);
    } on DioException catch (e) {
      response = e.response;
      Log.e(e.response);
    }

    final statusCode = response?.statusCode;
    if (statusCode == null) {
      return null;
    }

    final result = model.results
        .where((element) => element.statusCode == statusCode)
        .firstOrNull;
    if (result == null) {
      if (model.results.isNotEmpty) {
        Log.w('No networkRequest result for status $statusCode: ${model.url}');
      }
      return null;
    }

    if (context.mounted) {
      return Stac.onCallFromJson(
        _resolveResponse(result.action, response?.data),
        context,
      );
    }
  }

  /// Matches `{{response}}` and `{{response.<path>}}`, where the path uses dot
  /// notation and list indexes, e.g. `{{response.items[0].id}}`.
  static final _responsePlaceholder = RegExp(
    r'\{\{\s*response((?:\.[^\s.\[\]{}]+|\[\d+\])*)\s*\}\}',
  );

  static const _notFound = Object();

  /// Fills `{{response}}` placeholders in [json] from the response body.
  ///
  /// A string that is only a placeholder takes the value as is (a map, list,
  /// number, ...); a placeholder inside longer text is inserted as text.
  /// Placeholders whose path isn't in the body are left unchanged, and so are
  /// the `results` of a nested `networkRequest`, which belong to its own
  /// response.
  dynamic _resolveResponse(dynamic json, dynamic data) {
    if (json is String) {
      final whole = _responsePlaceholder.matchAsPrefix(json);
      if (whole != null && whole.end == json.length) {
        final value = _valueAtPath(data, whole.group(1)!);
        return identical(value, _notFound) ? json : value;
      }
      return json.replaceAllMapped(_responsePlaceholder, (match) {
        final value = _valueAtPath(data, match.group(1)!);
        if (identical(value, _notFound)) return match.group(0)!;
        return value is Map || value is List ? jsonEncode(value) : '$value';
      });
    } else if (json is Map<String, dynamic>) {
      final isNestedRequest = json['actionType'] == actionType;
      return json.map(
        (key, value) => MapEntry(
          key,
          isNestedRequest && key == 'results'
              ? value
              : _resolveResponse(value, data),
        ),
      );
    } else if (json is List) {
      return json.map((item) => _resolveResponse(item, data)).toList();
    }
    return json;
  }

  dynamic _valueAtPath(dynamic data, String path) {
    final keys = path
        .replaceAllMapped(RegExp(r'\[(\d+)\]'), (match) => '.${match[1]}')
        .split('.')
        .where((key) => key.isNotEmpty);

    dynamic current = data;
    for (final key in keys) {
      if (current is Map && current.containsKey(key)) {
        current = current[key];
      } else if (current is List) {
        final index = int.tryParse(key);
        if (index == null || index < 0 || index >= current.length) {
          return _notFound;
        }
        current = current[index];
      } else {
        return _notFound;
      }
    }
    return current;
  }
}
