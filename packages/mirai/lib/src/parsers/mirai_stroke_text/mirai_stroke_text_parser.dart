import 'package:flutter/material.dart';
import 'package:mirai/src/parsers/mirai_stroke_text/mirai_stroke_text.dart';
import 'package:mirai/src/parsers/mirai_text_style/mirai_text_style.dart';
import 'package:mirai/src/utils/color_utils.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiStrokeTextParser extends MiraiParser<MiraiStrokeText> {
  const MiraiStrokeTextParser();

  @override
  MiraiStrokeText getModel(Map<String, dynamic> json) =>
      MiraiStrokeText.fromJson(json);

  @override
  String get type => WidgetType.strokeText.name;

  @override
  Widget parse(BuildContext context, MiraiStrokeText model) {
    return StrokedText(
      text: model.data,
      textStyle: model.style?.parse(context),
      textAlign: model.textAlign,
      textDirection: model.textDirection,
      overflow: model.overflow,
      textScaler: model.textScaleFactor != null
          ? TextScaler.linear(model.textScaleFactor!)
          : TextScaler.noScaling,
      maxLines: model.maxLines,
      strokeWidth: model.strokeWidth ?? 3,
      strokeColor: model.strokeColor?.toColor(context),
    );
  }
}

class StrokedText extends StatelessWidget {
  final String text;
  final Color? strokeColor;
  final double? strokeWidth;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextScaler? textScaler;
  final TextOverflow? overflow;
  final int? maxLines;

  const StrokedText({
    super.key,
    required this.text,
    this.strokeColor = Colors.amber, // Default stroke color
    this.strokeWidth = 3, // Default stroke width
    this.textStyle,
    this.textAlign,
    this.textDirection,
    this.textScaler,
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, (textStyle?.fontSize ?? 24) * 1.5),
      painter: _TextPainterWithStroke(
        text: text,
        strokeColor: strokeColor,
        strokeWidth: strokeWidth,
        textStyle: textStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaler: textScaler,
        overflow: overflow,
        maxLines: maxLines,
      ),
    );
  }
}

class _TextPainterWithStroke extends CustomPainter {
  final String text;
  final Color? strokeColor;
  final double? strokeWidth;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextScaler? textScaler;
  final TextOverflow? overflow;
  final int? maxLines;

  _TextPainterWithStroke({
    required this.text,
    required this.strokeColor,
    required this.strokeWidth,
    this.textStyle,
    this.textAlign,
    this.textDirection,
    this.textScaler,
    this.overflow,
    this.maxLines,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const defaultTextStyle = TextStyle(
      fontSize: 24,
      color: Colors.black,
    );

    final mergedTextStyle = defaultTextStyle.merge(textStyle);

    final strokeTextStyle = mergedTextStyle.copyWith(
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth ?? 3
        ..color = strokeColor ?? Colors.blue,
    );

    final mainTextStyle = mergedTextStyle.copyWith(
      color: mergedTextStyle.color ?? Colors.black,
    );

    final strokePainter = TextPainter(
      text: TextSpan(text: text, style: strokeTextStyle),
      textAlign: textAlign ?? TextAlign.start,
      textDirection: textDirection ?? TextDirection.ltr,
      textScaler: textScaler ?? TextScaler.noScaling,
      maxLines: maxLines,
      ellipsis: overflow == TextOverflow.ellipsis ? '...' : null,
    );

    final mainTextPainter = TextPainter(
      text: TextSpan(text: text, style: mainTextStyle),
      textAlign: textAlign ?? TextAlign.start,
      textDirection: textDirection ?? TextDirection.ltr,
      textScaler: textScaler ?? TextScaler.noScaling,
      maxLines: maxLines,
      ellipsis: overflow == TextOverflow.ellipsis ? '...' : null,
    );

    strokePainter.layout(maxWidth: size.width);
    mainTextPainter.layout(maxWidth: size.width);

    final offset = _calculateOffset(strokePainter, size);

    // Draw the stroke first
    strokePainter.paint(canvas, offset);

    // Then draw the main text
    mainTextPainter.paint(canvas, offset);
  }

  // Helper method to calculate the offset based on text alignment
  Offset _calculateOffset(TextPainter painter, Size size) {
    switch (painter.textAlign) {
      case TextAlign.center:
        return Offset(
          (size.width - painter.width) / 2,
          (size.height - painter.height) / 2,
        );
      case TextAlign.end:
        return Offset(
          size.width - painter.width,
          (size.height - painter.height) / 2,
        );
      case TextAlign.left:
        return Offset(
          0,
          (size.height - painter.height) / 2,
        );
      case TextAlign.right:
        return Offset(
          size.width - painter.width,
          (size.height - painter.height) / 2,
        );
      case TextAlign.justify:
      case TextAlign.start:
      default:
        return Offset(
          0,
          (size.height - painter.height) / 2,
        );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
