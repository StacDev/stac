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

  /// Fills [request]'s placeholders now, from current state and the form
  /// around [context], for a widget that loads from it.
  ///
  /// The widget compares `key`, the filled request as text, to tell whether
  /// a rebuild should send it again, and calls `send` to send that same
  /// request. A request that isn't valid once filled, such as one whose
  /// `url` placeholder was filled with a map, fails the future `send`
  /// returns, as a failed request does. Actions in a POST body are left to
  /// run when the request is sent, so the values they read aren't in `key`.
  static ({String key, Future<Response?> Function() send}) prepare(
    BuildContext context,
    StacNetworkRequest request,
  ) {
    final json = resolveActionJson(request.toJson(), context);
    return (
      key: encodeRequest(json),
      // Parsed in an async function, so an invalid request fails the future
      // instead of the build.
      send: () async => StacNetworkService.request(
        context,
        StacNetworkRequest.fromJson(json),
        resolved: true,
      ),
    );
  }

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
