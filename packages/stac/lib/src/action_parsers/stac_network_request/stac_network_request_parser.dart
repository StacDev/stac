import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/action_parsers/stac_network_request/stac_network_request.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/services/stac_network_service.dart';
import 'package:stac/src/utils/action_type.dart';
import 'package:stac/src/utils/log.dart';
import 'package:stac_framework/stac_framework.dart';

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

    if (response?.statusCode != null) {
      final result = model.results.firstWhere(
        (element) => element.statusCode == response?.statusCode,
      );

      if (context.mounted) {
        return Stac.onCallFromJson(result.action, context);
      }
    }
  }
}
