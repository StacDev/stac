import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

part 'stac_border_radius.freezed.dart';
part 'stac_border_radius.g.dart';

@freezed
abstract class StacBorderRadius with _$StacBorderRadius {
  const factory StacBorderRadius({
    @Default(StacDouble.zero) StacDouble topLeft,
    @Default(StacDouble.zero) StacDouble topRight,
    @Default(StacDouble.zero) StacDouble bottomLeft,
    @Default(StacDouble.zero) StacDouble bottomRight,
  }) = _StacBorder;

  factory StacBorderRadius.fromJson(dynamic json) => _fromJson(json);

  static StacBorderRadius _fromJson(dynamic json) {
    Map<String, dynamic> resultantJson;

    if (json is num) {
      resultantJson = {
        "topLeft": json,
        "topRight": json,
        "bottomLeft": json,
        "bottomRight": json
      };
    } else if (json is List<dynamic> && json.length == 4) {
      bool allElementsNum = json.every((element) => element is num);
      if (!allElementsNum) {
        throw ArgumentError('Invalid input format for StacEdgeInsets');
      }
      resultantJson = {
        "topLeft": json[0],
        "topRight": json[1],
        "bottomLeft": json[2],
        "bottomRight": json[3]
      };
    } else if (json is Map<String, dynamic>) {
      resultantJson = json;
    } else {
      throw ArgumentError('Invalid input format for StacEdgeInsets');
    }

    return _$StacBorderRadiusFromJson(resultantJson);
  }
}

extension StacBorderRadiusParser on StacBorderRadius? {
  BorderRadius get parse {
    return BorderRadius.only(
      topLeft: Radius.circular(this?.topLeft.parse ?? 0.0),
      topRight: Radius.circular(this?.topRight.parse ?? 0.0),
      bottomLeft: Radius.circular(this?.bottomLeft.parse ?? 0.0),
      bottomRight: Radius.circular(this?.bottomRight.parse ?? 0.0),
    );
  }
}
