import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_list_tile.g.dart';

/// A Stac model for a fixed-height row that typically contains text, a
/// leading or trailing icon, or other widgets. This model corresponds to
/// Flutter's [ListTile] widget.
///
/// Use [StacListTile] to create items in a list.
///
/// Example:
///
///
/// ```dart
/// StacListTile(
///   leading: StacIcon(icon: StacIcons.album),
///   title: StacText('The Enchanted Nightingale'),
///   subtitle: StacText('Music by Julie Gable. Lyrics by Sidney Stein.'),
///   trailing: StacIcon(icon: StacIcons.more_vert),
///   onTap: StacAction(type: StacActionType.debugLog, args: {'message': 'Tapped on tile!'}),
///   isThreeLine: true,
/// )
/// ```
///
///
/// ```json
/// {
///   "widget": "ListTile",
///   "leading": {
///     "widget": "Icon",
///     "icon": "album"
///   },
///   "title": {
///     "widget": "Text",
///     "data": "The Enchanted Nightingale"
///   },
///   "subtitle": {
///     "widget": "Text",
///     "data": "Music by Julie Gable. Lyrics by Sidney Stein."
///   },
///   "trailing": {
///     "widget": "Icon",
///     "icon": "more_vert"
///   },
///   "onTap": {
///     "type": "debugLog",
///     "args": {"message": "Tapped on tile!"}
///   },
///   "isThreeLine": true
/// }
/// ```
///
/// See also:
///  * Flutter's [ListTile documentation](https://api.flutter.dev/flutter/material/ListTile-class.html)
@JsonSerializable(explicitToJson: true)
class StacListTile extends StacWidget {
  /// Creates a [StacListTile] with the given properties.
  const StacListTile({
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine,
    this.dense,
    this.visualDensity,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.contentPadding,
    this.enabled,
    this.onTap,
    this.onLongPress,
    this.mouseCursor,
    this.selected,
    this.focusColor,
    this.hoverColor,
    this.autofocus,
    this.tileColor,
    this.selectedTileColor,
    this.enableFeedback,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.titleAlignment,
  });

  /// A widget to display before the [title].
  final StacWidget? leading;

  /// The primary content of the list tile.
  final StacWidget? title;

  /// Additional content displayed below the [title].
  final StacWidget? subtitle;

  /// A widget to display after the [title].
  final StacWidget? trailing;

  /// Whether this list tile is intended to display three lines of text.
  final bool? isThreeLine;

  /// Whether this list tile is part of a vertically dense list.
  final bool? dense;

  /// Defines the compactness of the list tile.
  final StacVisualDensity? visualDensity;

  /// The shape of the tile's [InkWell].
  final StacShapeBorder? shape;

  /// Defines the tile's visual style.
  final StacListTileStyle? style;

  /// The color of the tile's text and icons when [selected] is true.
  final String? selectedColor;

  /// The color of the tile's icons when [selected] is false.
  final String? iconColor;

  /// The color of the tile's text when [selected] is false.
  final String? textColor;

  /// The tile's internal padding.
  final StacEdgeInsets? contentPadding;

  /// Whether this list tile is interactive.
  final bool? enabled;

  /// An action to perform when the user taps this list tile.
  final StacAction? onTap;

  /// An action to perform when the user long-presses this list tile.
  final StacAction? onLongPress;

  /// The cursor for a mouse pointer when it enters or is hovering over the widget.
  final StacMouseCursor? mouseCursor;

  /// Whether this tile is selected.
  final bool? selected;

  /// The color for the tile's [Material] when it has the input focus.
  final String? focusColor;

  /// The color for the tile's [Material] when a pointer is hovering over it.
  final String? hoverColor;

  /// Whether this widget should automatically gain focus when it is visible.
  final bool? autofocus;

  /// Defines the background color of the [ListTile] when [selected] is false.
  final String? tileColor;

  /// Defines the background color of the [ListTile] when [selected] is true.
  final String? selectedTileColor;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  final bool? enableFeedback;

  /// The horizontal gap between the [leading] or [trailing] widget and the
  /// [title] and [subtitle] widgets.
  final double? horizontalTitleGap;

  /// The minimum padding on the top and bottom of the title and subtitle widgets.
  final double? minVerticalPadding;

  /// The minimum width of the [leading] widget.
  final double? minLeadingWidth;

  /// Defines how the [title] and [subtitle] are vertically aligned relative
  /// to the [leading] and [trailing] widgets.
  final StacListTileTitleAlignment? titleAlignment;

  /// Widget type identifier.
  @override
  String get type => WidgetType.listTile.name;

  /// Creates a [StacListTile] from a JSON map.
  factory StacListTile.fromJson(Map<String, dynamic> json) =>
      _$StacListTileFromJson(json);

  /// Converts this [StacListTile] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacListTileToJson(this);
}
