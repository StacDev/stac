import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/expressions/stac_expression_runtime.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/state/stac_state_reader.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';

class StacNetworkService {
  const StacNetworkService._();

  static late Dio _dio;

  static void initialize(Dio dio) => _dio = dio;

  /// Sends [request]. Placeholders in its URL, headers, query and body are
  /// resolved first, unless [resolve] is false because they already are.
  static Future<Response?> request(
    BuildContext context,
    StacNetworkRequest request, {
    bool resolve = true,
  }) async {
    if (resolve) request = _resolve(context, request);
    Map<String, dynamic> headers = Map<String, dynamic>.from(
      request.headers ?? {},
    );
    _dio.options.headers = headers;
    _dio.options.contentType = request.contentType;

    switch (request.method) {
      case Method.get:
        return getRequest(request);
      case Method.post:
        return postRequest(request, context.mounted ? context : context);
      case Method.put:
        return putRequest(request);
      case Method.delete:
        return deleteRequest(request);
    }
  }

  /// Resolves placeholders in the URL, headers, query and body with the
  /// values current when the request is sent.
  static StacNetworkRequest _resolve(
    BuildContext context,
    StacNetworkRequest request,
  ) {
    final json = request.toJson();
    final resolved = stacJsonResolver.resolveAction(
      json,
      StacStateReader.forAction(context),
    );
    return StacNetworkRequest.fromJson(resolved);
  }

  static Future<Response?> getRequest(StacNetworkRequest request) async {
    return _dio.get(
      request.url,
      data: request.body,
      queryParameters: request.queryParameters,
    );
  }

  static Future<Response?> postRequest(
    StacNetworkRequest request,
    BuildContext context,
  ) async {
    final body = await _updateBody(context, request.body);

    return _dio.post(
      request.url,
      data: body,
      queryParameters: request.queryParameters,
    );
  }

  static Future<Response?> putRequest(StacNetworkRequest request) async {
    return _dio.put(
      request.url,
      data: request.body,
      queryParameters: request.queryParameters,
    );
  }

  static Future<Response?> deleteRequest(StacNetworkRequest request) async {
    return _dio.delete(
      request.url,
      data: request.body,
      queryParameters: request.queryParameters,
    );
  }

  static Future<dynamic> _updateBody(BuildContext context, dynamic body) async {
    Map<dynamic, dynamic> bodyMap = {};

    if (body is Map) {
      bodyMap.addAll(body);
      for (dynamic mapEntry in bodyMap.entries) {
        final key = mapEntry.key;
        final value = mapEntry.value;
        if (value is Map && value.containsKey('actionType')) {
          final dynamic callbackValue = await Future<dynamic>.value(
            Stac.onCallFromJson(value as Map<String, dynamic>, context),
          );
          bodyMap[key] = callbackValue;
        }
      }
    }

    return bodyMap;
  }
}
