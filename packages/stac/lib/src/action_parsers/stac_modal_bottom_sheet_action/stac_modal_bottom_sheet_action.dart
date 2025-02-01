import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/action_parsers/stac_network_request/stac_network_request.dart';
import 'package:stac/src/parsers/stac_border/stac_border.dart';
import 'package:stac/src/parsers/stac_box_constraints/stac_box_constraints.dart';

part 'stac_modal_bottom_sheet_action.freezed.dart';
part 'stac_modal_bottom_sheet_action.g.dart';

@freezed
class StacModalBottomSheetAction with _$StacModalBottomSheetAction {
  const factory StacModalBottomSheetAction({
    Map<String, dynamic>? widget,
    StacNetworkRequest? request,
    String? assetPath,
    String? backgroundColor,
    String? barrierLabel,
    double? elevation,
    StacBorder? shape,
    StacBoxConstraints? constraints,
    String? barrierColor,
    @Default(false) bool isScrollControlled,
    @Default(false) bool useRootNavigator,
    @Default(true) bool isDismissible,
    @Default(true) bool enableDrag,
    bool? showDragHandle,
    @Default(false) bool useSafeArea,
  }) = _StacModalBottomSheetAction;

  factory StacModalBottomSheetAction.fromJson(Map<String, dynamic> json) =>
      _$StacModalBottomSheetActionFromJson(json);
}
