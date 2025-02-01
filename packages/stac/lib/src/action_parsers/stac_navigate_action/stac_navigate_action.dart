import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/action_parsers/stac_network_request/stac_network_request.dart';

part 'stac_navigate_action.freezed.dart';
part 'stac_navigate_action.g.dart';

enum NavigationStyle {
  push,
  pop,
  pushReplacement,
  pushAndRemoveAll,
  popAll,
  pushNamed,
  pushNamedAndRemoveAll,
  pushReplacementNamed
}

@freezed
class StacNavigateAction with _$StacNavigateAction {
  const StacNavigateAction._();

  factory StacNavigateAction({
    StacNetworkRequest? request,
    Map<String, dynamic>? widgetJson,
    String? assetPath,
    String? routeName,
    NavigationStyle? navigationStyle,
    Map<String, dynamic>? result,
    Map<String, dynamic>? arguments,
  }) = _StacNavigateAction;

  factory StacNavigateAction.fromJson(Map<String, dynamic> json) =>
      _$StacNavigateActionFromJson(json);
}
