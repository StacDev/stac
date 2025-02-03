import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';

export 'package:stac/src/parsers/stac_text/stac_text_parser.dart';

part 'stac_text.freezed.dart';
part 'stac_text.g.dart';

@freezed
class StacText with _$StacText {
  const factory StacText({
    required String data,
    @Default([]) List<StacTextSpan> children,
    StacTextStyle? style,
    TextAlign? textAlign,
    TextDirection? textDirection,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    String? selectionColor,
  }) = _StacText;

  factory StacText.fromJson(Map<String, dynamic> json) =>
      _$StacTextFromJson(json);
}

@freezed
class StacTextSpan with _$StacTextSpan {
  const factory StacTextSpan({
    String? data,
    StacTextStyle? style,
    Map<String, dynamic>? onTap,
  }) = _StacTextSpan;

  factory StacTextSpan.fromJson(Map<String, dynamic> json) =>
      _$StacTextSpanFromJson(json);
}
