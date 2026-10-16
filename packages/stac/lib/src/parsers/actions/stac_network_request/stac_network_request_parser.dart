import 'dart:async';

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
      return Stac.onCallFromJson(result.action, context);
    }
  }
}
