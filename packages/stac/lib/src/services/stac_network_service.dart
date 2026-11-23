import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac/src/utils/variable_resolver.dart';

class StacNetworkService {
  const StacNetworkService._();

  static late Dio _dio;

  static void initialize(Dio dio) => _dio = dio;

  /// Sends [request]. Its placeholders are filled first with [resolve], so it
  /// sees current state and form values, unless [resolved] says that's done
  /// already, as for a `networkRequest` action, which is filled when it runs.
  /// Filling twice would also fill placeholders inside the values put in the
  /// first time.
  static Future<Response?> request(
    BuildContext context,
    StacNetworkRequest request, {
    bool resolved = false,
  }) async {
    if (!resolved) {
      request = resolve(context, request);
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

  /// [request] with its placeholders filled from current state and the form
  /// around [context]. Actions in a POST body are left to run when the
  /// request is sent, so the values they read aren't in the result.
  ///
  /// A widget that loads from a request fills it once when it's built, and
  /// uses the result both to tell whether the request changed and to send it.
  static StacNetworkRequest resolve(
    BuildContext context,
    StacNetworkRequest request,
  ) =>
      StacNetworkRequest.fromJson(resolveActionJson(request.toJson(), context));

  /// Encodes a request's [json] as text, with any model in it as that
  /// model's JSON, so equal requests give equal text.
  static String encodeRequest(Map<String, dynamic> json) => jsonEncode(
    json,
    toEncodable: (value) {
      try {
        return (value as dynamic).toJson();
      } on NoSuchMethodError {
        return '$value';
      }
    },
  );

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
