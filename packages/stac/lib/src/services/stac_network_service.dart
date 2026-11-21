import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac/src/utils/variable_resolver.dart';

class StacNetworkService {
  const StacNetworkService._();

  static late Dio _dio;

  static void initialize(Dio dio) => _dio = dio;

  /// Sends [request]. Its placeholders are filled first, so it sees current
  /// state and form values, unless [resolved] says that's done already, as
  /// for a `networkRequest` action, which is filled when it runs. Filling
  /// twice would also fill placeholders inside the values put in the first
  /// time.
  static Future<Response?> request(
    BuildContext context,
    StacNetworkRequest request, {
    bool resolved = false,
  }) async {
    if (!resolved) {
      request = StacNetworkRequest.fromJson(
        resolveActionJson(request.toJson(), context),
      );
    }
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
    // Only a map can hold actions. Any other body, such as a list from a
    // `{{cart}}` placeholder, is sent as it is.
    if (body != null && body is! Map) return body;

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
