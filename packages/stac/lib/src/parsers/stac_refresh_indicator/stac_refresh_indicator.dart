import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:stac/src/parsers/stac_refresh_indicator/stac_refresh_indicator_parser.dart';

part 'stac_refresh_indicator.freezed.dart';
part 'stac_refresh_indicator.g.dart';

@freezed
class StacRefreshIndicator with _$StacRefreshIndicator {
  const factory StacRefreshIndicator({
    Map<String, dynamic>? child,
    @Default(40) double displacement,
    @Default(0) double edgeOffset,
    Map<String, dynamic>? onRefresh,
    String? color,
    String? backgroundColor,
    String? semanticsLabel,
    String? semanticsValue,
    @Default(RefreshProgressIndicator.defaultStrokeWidth) double strokeWidth,
    @Default(RefreshIndicatorTriggerMode.onEdge)
    RefreshIndicatorTriggerMode triggerMode,
  }) = _StacRefreshIndicator;

  factory StacRefreshIndicator.fromJson(Map<String, dynamic> json) =>
      _$StacRefreshIndicatorFromJson(json);
}
