import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_drawer.g.dart';

/// A Stac model representing Flutter's [Drawer] widget.
///
/// A Material Design panel that slides in horizontally from the edge of a
/// [Scaffold] to show navigation links in an application.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacDrawer(
///   backgroundColor: StacColors.white,
///   elevation: 16,
///   shadowColor: StacColors.black54,
///   surfaceTintColor: StacColors.transparent,
///   width: 304,
///   clipBehavior: Clip.hardEdge,
///   shape: StacShapeBorder.rectangle(
///     borderRadius: StacBorderRadius.all(8),
///   ),
///   child: StacColumn(children: [/* ... */]),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "drawer",
///   "backgroundColor": "#FFFFFF",
///   "elevation": 16,
///   "shadowColor": "#88000000",
///   "surfaceTintColor": "transparent",
///   "width": 304,
///   "clipBehavior": "hardEdge",
///   "shape": {
///     "type": "rectangle",
///     "borderRadius": { "type": "all", "radius": 8 }
///   },
///   "child": { "type": "column", "children": [] }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Drawer documentation (`https://api.flutter.dev/flutter/material/Drawer-class.html`)
@JsonSerializable()
class StacDrawer extends StacWidget {
  /// Creates a [StacDrawer].
  const StacDrawer({
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.width,
    this.child,
    this.semanticLabel,
    this.clipBehavior,
  });

  /// Background color of the drawer.
  final StacColor? backgroundColor;

  /// Elevation of the drawer in logical pixels.
  @DoubleConverter()
  final double? elevation;

  /// Color of the drawer's shadow.
  final StacColor? shadowColor;

  /// Surface tint color applied on top of the drawer surface.
  final StacColor? surfaceTintColor;

  /// The shape of the drawer.
  final StacShapeBorder? shape;

  /// The width of the drawer.
  @DoubleConverter()
  final double? width;

  /// The primary content of the drawer.
  ///
  /// This is a Stac widget subtree.
  final StacWidget? child;

  /// A semantic label for the drawer.
  final String? semanticLabel;

  /// The clip behavior for the drawer's content.
  final StacClip? clipBehavior;

  /// Widget type identifier for this model.
  @override
  String get type => WidgetType.drawer.name;

  /// Creates a [StacDrawer] from a JSON map.
  factory StacDrawer.fromJson(Map<String, dynamic> json) =>
      _$StacDrawerFromJson(json);

  /// Converts this [StacDrawer] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacDrawerToJson(this);
}
