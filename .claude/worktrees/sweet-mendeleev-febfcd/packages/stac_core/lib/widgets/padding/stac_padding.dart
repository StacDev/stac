import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_padding.g.dart';

/// A Stac widget that adds padding around its child.
///
/// This widget corresponds to Flutter's Padding widget and provides
/// space around its child widget using edge insets.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacPadding(
///   padding: StacEdgeInsets.all(16.0),
///   child: StacText(data: 'Padded content'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "padding",
///   "padding": 16.0,
///   "child": {
///     "type": "text",
///     "data": "Padded content"
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacPadding extends StacWidget {
  /// Creates a padding widget with optional padding and child.
  const StacPadding({this.padding, this.child});

  /// The amount of space to pad the child.
  ///
  /// If null, no padding is applied.
  final StacEdgeInsets? padding;

  /// The widget to apply padding to.
  final StacWidget? child;

  @override
  String get type => WidgetType.padding.name;

  /// Creates a [StacPadding] from a JSON map.
  factory StacPadding.fromJson(Map<String, dynamic> json) =>
      _$StacPaddingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacPaddingToJson(this);
}
