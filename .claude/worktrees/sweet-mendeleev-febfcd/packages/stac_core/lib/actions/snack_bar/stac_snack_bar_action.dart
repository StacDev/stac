import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_snack_bar_action.g.dart';

/// Action button configuration for a SnackBar.
///
/// Mirrors Flutter's `SnackBarAction` while keeping model types in core.
///
/// Dart example:
/// ```dart
/// const StacSnackBarAction(
///   label: 'Retry',
///   onPressed: StacNetworkRequest(url: 'https://api.example.com/retry'),
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "label": "Retry",
///   "onPressed": { "actionType": "networkRequest", "url": "https://api.example.com/retry" },
///   "textColor": "#FFFFFFFF"
/// }
/// ```
@JsonSerializable()
class StacSnackBarAction extends StacAction {
  /// Creates a [StacSnackBarAction] that shows a snack bar action.
  const StacSnackBarAction({
    this.textColor,
    this.disabledTextColor,
    this.backgroundColor,
    this.disabledBackgroundColor,
    required this.label,
    required this.onPressed,
  });

  /// Text color for the action label.
  ///
  /// Type: `String?` (hex color).
  final String? textColor;

  /// Text color when the action is disabled.
  ///
  /// Type: `String?` (hex color).
  final String? disabledTextColor;

  /// Background color for the action button.
  ///
  /// Type: `String?` (hex color).
  final String? backgroundColor;

  /// Background color when the action is disabled.
  ///
  /// Type: `String?` (hex color).
  final String? disabledBackgroundColor;

  /// Visible label for the action button.
  ///
  /// Type: `String`.
  final String label;

  /// Action to invoke when the button is pressed.
  ///
  /// Type: `StacAction?` (serialized with `toJson`).
  final StacAction? onPressed;

  /// Unique action type string used for routing.
  @override
  String get actionType => ActionType.showSnackBar.name;

  /// Creates a `StacSnackBarAction` from JSON.
  ///
  /// Type: `factory StacSnackBarAction.fromJson(Map<String, dynamic> json)`.
  factory StacSnackBarAction.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarActionFromJson(json);

  /// Converts this action to JSON.
  ///
  /// Type: `Map<String, dynamic> toJson()`.
  @override
  Map<String, dynamic> toJson() => _$StacSnackBarActionToJson(this);
}
