import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/expressions/stac_action_scope.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/services/stac_data_loader.dart';
import 'package:stac/src/services/stac_network_service.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac/src/state/stac_state_writer.dart';
import 'package:stac/src/state/stac_store.dart';
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

  /// Sends the request, stores a successful body with `saveTo`, and runs
  /// the action for the outcome:
  ///
  /// 1. the `results` entry whose status code matches, if any;
  /// 2. otherwise `onSuccess` for a 2xx status;
  /// 3. otherwise `onError`, including when there was no response.
  ///
  /// The action can read the response as `$result`. Returns the action's
  /// result, or the [Response] when no action ran, so callers such as
  /// `refreshIndicator` can use the response body.
  @override
  FutureOr onCall(BuildContext context, StacNetworkRequest model) async {
    Response<dynamic>? response;
    DioException? failure;

    try {
      response = await StacNetworkService.request(context, model);
    } on DioException catch (e) {
      response = e.response;
      failure = e;
      Log.e(e.response ?? e.message);
    }

    final status = response?.statusCode;
    final ok = status != null && status >= 200 && status < 300;
    final body = decodeStacBody(response?.data);
    final headers = <String, String>{};
    response?.headers.forEach((name, values) {
      headers[name] = values.join(', ');
    });
    final result = <String, Object?>{
      'status': status,
      'ok': ok,
      'body': body,
      'headers': headers,
      if (response == null && failure != null)
        'error': failure.message ?? failure.type.name,
    };

    if (ok && model.saveTo != null && context.mounted) {
      _save(context, model, body);
    }

    Map<String, dynamic>? action;
    for (final candidate in model.results) {
      if (candidate.statusCode == status) {
        action = candidate.action;
        break;
      }
    }
    action ??= ok ? model.onSuccess?.toJson() : model.onError?.toJson();
    if (action == null || action.isEmpty) return response;
    if (!context.mounted) return null;

    final chosen = action;
    return StacActionScope.run({
      r'$result': freezeStacValue(result),
    }, () => Stac.onCallFromJson(chosen, context));
  }

  static void _save(
    BuildContext context,
    StacNetworkRequest model,
    Object? body,
  ) {
    final targetPath = model.targetPath;
    var value = readStacTargetPath(body, targetPath);
    if (identical(value, stacUnbound)) {
      Log.w('targetPath "$targetPath" was not found in the response');
      value = null;
    }
    StacStateWriter.writeValue(StacScopeNode.of(context), model.saveTo!, value);
  }
}
