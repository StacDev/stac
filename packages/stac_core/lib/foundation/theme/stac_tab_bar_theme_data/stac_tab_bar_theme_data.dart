import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/decoration/stac_box_decoration/stac_box_decoration.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/navigation/stac_tab_bar_indicator_size.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_tab_bar_theme_data.g.dart';

/// A Stac model representing Flutter's [TabBarTheme].
///
/// Defines the theme for tab bars, including colors, indicator, text styles,
/// and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTabBarThemeData(
///   labelColor: '#2196F3',
///   unselectedLabelColor: '#757575',
///   indicatorColor: '#2196F3',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "labelColor": "#2196F3",
///   "unselectedLabelColor": "#757575",
///   "indicatorColor": "#2196F3",
///   "indicatorSize": "tab",
///   "dividerColor": "#BDBDBD",
///   "labelStyle": {"fontSize": 14.0, "fontWeight": "medium"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacTabBarThemeData implements StacElement {
  /// Creates a [StacTabBarThemeData] with the given properties.
  const StacTabBarThemeData({
    this.indicator,
    this.indicatorColor,
    this.indicatorSize,
    this.dividerColor,
    this.labelColor,
    this.labelPadding,
    this.labelStyle,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.overlayColor,
  });

  /// The decoration for the tab indicator.
  final StacBoxDecoration? indicator;

  /// The color of the tab indicator.
  final String? indicatorColor;

  /// The size of the tab indicator.
  final StacTabBarIndicatorSize? indicatorSize;

  /// The color of the divider between tabs.
  final String? dividerColor;

  /// The color of selected tab labels.
  final String? labelColor;

  /// The padding around tab labels.
  final StacEdgeInsets? labelPadding;

  /// The text style for selected tab labels.
  final StacTextStyle? labelStyle;

  /// The color of unselected tab labels.
  final String? unselectedLabelColor;

  /// The text style for unselected tab labels.
  final StacTextStyle? unselectedLabelStyle;

  /// The overlay color for tab interactions.
  final String? overlayColor;

  /// Creates a [StacTabBarThemeData] from JSON.
  factory StacTabBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacTabBarThemeDataFromJson(json);

  /// Converts this tab bar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacTabBarThemeDataToJson(this);
}
