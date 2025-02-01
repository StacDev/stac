import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_edge_insets.freezed.dart';
part 'stac_edge_insets.g.dart';

@freezed
class StacEdgeInsets with _$StacEdgeInsets {
  const factory StacEdgeInsets({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) = _StacEdgeInsets;

  factory StacEdgeInsets.fromJson(dynamic json) => _fromJson(json);

  static StacEdgeInsets _fromJson(dynamic json) {
    Map<String, dynamic> resultantJson;

    if (json is num) {
      resultantJson = {
        "left": json,
        "top": json,
        "right": json,
        "bottom": json
      };
    } else if (json is List<dynamic> && json.length == 4) {
      bool allElementsNum = json.every((element) => element is num);
      if (!allElementsNum) {
        throw ArgumentError('Invalid input format for StacEdgeInsets');
      }
      resultantJson = {
        "left": json[0],
        "top": json[1],
        "right": json[2],
        "bottom": json[3]
      };
    } else if (json is Map<String, dynamic>) {
      resultantJson = json;
    } else {
      throw ArgumentError('Invalid input format for StacEdgeInsets');
    }

    return _$StacEdgeInsetsFromJson(resultantJson);
  }
}

extension StacEdgeInsetsParser on StacEdgeInsets? {
  EdgeInsets get parse {
    return EdgeInsets.only(
      left: this?.left ?? 0,
      right: this?.right ?? 0,
      top: this?.top ?? 0,
      bottom: this?.bottom ?? 0,
    );
  }
}
