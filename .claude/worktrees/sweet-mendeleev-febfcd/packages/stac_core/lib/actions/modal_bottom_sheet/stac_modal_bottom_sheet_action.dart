import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/geometry/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_modal_bottom_sheet_action.g.dart';

/// Core model for the "showModalBottomSheet" action.
///
/// Displays a Flutter `showModalBottomSheet` with content sourced from a STAC
/// widget. Defaults (scroll control, dismissibility, etc.) are applied in the
/// parser, not the model.
///
/// Dart example:
/// ```dart
/// const StacModalBottomSheetAction(
///   widget: StacWidget.fromJson({"type": "text", "data": {"text": "Hello"}}),
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "actionType": "showModalBottomSheet",
///   "widget": {"type": "text", "data": {"text": "Hello"}}
/// }
/// ```
@JsonSerializable()
class StacModalBottomSheetAction extends StacAction {
  /// Creates a [StacModalBottomSheetAction] that shows a modal bottom sheet.
  const StacModalBottomSheetAction({
    this.widget,
    this.request,
    this.assetPath,
    this.backgroundColor,
    this.barrierLabel,
    this.elevation,
    this.shape,
    this.constraints,
    this.barrierColor,
    this.isScrollControlled,
    this.useRootNavigator,
    this.isDismissible,
    this.enableDrag,
    this.showDragHandle,
    this.useSafeArea,
  });

  /// Content widget to display inside the bottom sheet.
  ///
  /// Type: `StacWidget?`.
  final StacWidget? widget;

  /// Network request to fetch widget content.
  ///
  /// Type: `StacNetworkRequest?`.
  final StacNetworkRequest? request;

  /// Path to a local asset JSON for the widget.
  ///
  /// Type: `String?`.
  final String? assetPath;

  /// Background color hex for the sheet.
  ///
  /// Type: `String?`.
  final String? backgroundColor;

  /// Semantics label for the modal barrier.
  ///
  /// Type: `String?`.
  final String? barrierLabel;

  /// Elevation of the bottom sheet.
  ///
  /// Type: `double?`.
  final double? elevation;

  /// Shape border of the bottom sheet.
  ///
  /// Type: `StacBorder?`.
  final StacBorder? shape;

  /// Box constraints applied to the sheet.
  ///
  /// Type: `StacBoxConstraints?`.
  final StacBoxConstraints? constraints;

  /// Barrier color hex behind the sheet.
  ///
  /// Type: `String?`.
  final String? barrierColor;

  /// Whether the sheet can take full height when scrolled.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? isScrollControlled;

  /// Whether to use the root navigator.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? useRootNavigator;

  /// Whether the sheet is dismissible by tapping the barrier.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? isDismissible;

  /// Whether the sheet is draggable.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? enableDrag;

  /// Whether to show the drag handle.
  ///
  /// Type: `bool?`.
  final bool? showDragHandle;

  /// Whether to respect the safe area.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? useSafeArea;

  /// Unique action type string used for routing.
  @override
  String get actionType => ActionType.showModalBottomSheet.name;

  /// Creates a `StacModalBottomSheetAction` from JSON.
  factory StacModalBottomSheetAction.fromJson(Map<String, dynamic> json) =>
      _$StacModalBottomSheetActionFromJson(json);

  /// Converts this action to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacModalBottomSheetActionToJson(this);
}
