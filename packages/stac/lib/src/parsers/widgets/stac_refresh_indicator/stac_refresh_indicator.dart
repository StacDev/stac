import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'stac_refresh_indicator_parser.dart';

part 'stac_refresh_indicator.freezed.dart';
part 'stac_refresh_indicator.g.dart';

@freezed
abstract class StacRefreshIndicator with _$StacRefreshIndicator {
  const factory StacRefreshIndicator({
    Map<String, dynamic>? child,
    @Default(StacDouble(40)) StacDouble displacement,
    @Default(StacDouble.zero) StacDouble edgeOffset,
    Map<String, dynamic>? onRefresh,
    String? color,
    String? backgroundColor,
    String? semanticsLabel,
    String? semanticsValue,
    @Default(StacDouble(RefreshProgressIndicator.defaultStrokeWidth))
    StacDouble strokeWidth,
    @Default(RefreshIndicatorTriggerMode.onEdge)
    RefreshIndicatorTriggerMode triggerMode,
  }) = _StacRefreshIndicator;

  factory StacRefreshIndicator.fromJson(Map<String, dynamic> json) =>
      _$StacRefreshIndicatorFromJson(json);
}
