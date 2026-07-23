import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';
import 'package:stac_core/foundation/ui_components/stac_traversal_edge_behavior.dart';

part 'stac_dialog_action.g.dart';

/// Core model for the "showDialog" action.
///
/// Presents a dialog built from STAC JSON. Defaults for dismissibility and
/// safe area are applied in the parser, not in this model.
///
/// Dart example:
/// ```dart
/// const StacDialogAction(
///   assetPath: 'assets/dialog.json',
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "actionType": "showDialog",
///   "widget": {"type": "text", "data": {"text": "Title"}}
/// }
/// ```
@JsonSerializable()
class StacDialogAction extends StacAction {
  /// Creates a [StacDialogAction] that shows a dialog.
  const StacDialogAction({
    this.widget,
    this.request,
    this.assetPath,
    this.barrierDismissible,
    this.barrierColor,
    this.barrierLabel,
    this.useSafeArea,
    this.traversalEdgeBehavior,
  });

  /// Dialog content widget JSON.
  ///
  /// Type: `Map<String, dynamic>?`.
  final Map<String, dynamic>? widget;

  /// Network request to fetch dialog widget JSON.
  ///
  /// Type: `StacNetworkRequest?`.
  final StacNetworkRequest? request;

  /// Asset path to dialog widget JSON.
  ///
  /// Type: `String?`.
  final String? assetPath;

  /// Whether tapping the barrier dismisses the dialog.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? barrierDismissible;

  /// Barrier color hex string.
  ///
  /// Type: `String?`.
  final String? barrierColor;

  /// Semantics label for barrier.
  ///
  /// Type: `String?`.
  final String? barrierLabel;

  /// Whether to use safe area for the dialog.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? useSafeArea;

  /// Traversal behavior for focus traversal at edges.
  ///
  /// Type: `StacDialogTraversalEdgeBehavior?`.
  final StacTraversalEdgeBehavior? traversalEdgeBehavior;

  /// Unique action type string used for routing.
  @override
  String get actionType => ActionType.showDialog.name;

  /// Creates a `StacDialogAction` from JSON.
  factory StacDialogAction.fromJson(Map<String, dynamic> json) =>
      _$StacDialogActionFromJson(json);

  /// Converts this action to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacDialogActionToJson(this);
}
