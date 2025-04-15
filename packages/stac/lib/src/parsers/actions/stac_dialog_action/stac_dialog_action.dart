import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/actions/stac_network_request/stac_network_request.dart';

export 'stac_dialog_action_parser.dart';

part 'stac_dialog_action.freezed.dart';
part 'stac_dialog_action.g.dart';

@freezed
abstract class StacDialogAction with _$StacDialogAction {
  const factory StacDialogAction({
    Map<String, dynamic>? widget,
    StacNetworkRequest? request,
    String? assetPath,
    @Default(true) bool barrierDismissible,
    String? barrierColor,
    String? barrierLabel,
    @Default(true) bool useSafeArea,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  }) = _StacDialogAction;

  factory StacDialogAction.fromJson(Map<String, dynamic> json) =>
      _$StacDialogActionFromJson(json);
}
