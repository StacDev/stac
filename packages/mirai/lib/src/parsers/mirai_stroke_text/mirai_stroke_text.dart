import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_text_style/mirai_text_style.dart';

export 'package:mirai/src/parsers/mirai_stroke_text/mirai_stroke_text_parser.dart';

part 'mirai_stroke_text.freezed.dart';
part 'mirai_stroke_text.g.dart';

@freezed
class MiraiStrokeText with _$MiraiStrokeText {
  const factory MiraiStrokeText({
    required String data,
    MiraiTextStyle? style,
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextOverflow? overflow,
    int? maxLines,
    String? strokeColor,
    double? strokeWidth,
    double? textScaleFactor,
  }) = _MiraiStrokeText;

  factory MiraiStrokeText.fromJson(Map<String, dynamic> json) =>
      _$MiraiStrokeTextFromJson(json);
}
