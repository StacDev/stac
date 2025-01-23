import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/parsers/mirai_shape_border/mirai_shape_border.dart';

export 'package:mirai/src/parsers/mirai_alert_dialog/mirai_alert_dialog_parser.dart';

part 'mirai_alert_dialog.freezed.dart';
part 'mirai_alert_dialog.g.dart';

@freezed
class MiraiAlertDialog with _$MiraiAlertDialog {
  const factory MiraiAlertDialog({
    Map<String, dynamic>? icon,
    MiraiEdgeInsets? iconPadding,
    String? iconColor,
    Map<String, dynamic>? title,
    MiraiEdgeInsets? titlePadding,
    MiraiTextStyle? titleTextStyle,
    Map<String, dynamic>? content,
    MiraiEdgeInsets? contentPadding,
    MiraiTextStyle? contentTextStyle,
    List<Map<String, dynamic>>? actions,
    MiraiEdgeInsets? actionsPadding,
    MainAxisAlignment? actionsAlignment,
    OverflowBarAlignment? actionsOverflowAlignment,
    VerticalDirection? actionsOverflowDirection,
    double? actionsOverflowButtonSpacing,
    MiraiEdgeInsets? buttonPadding,
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    String? semanticLabel,
    @Default(MiraiEdgeInsets(left: 40, right: 40, top: 24, bottom: 24))
    MiraiEdgeInsets insetPadding,
    @Default(Clip.none) Clip clipBehavior,
    MiraiShapeBorder? shape,
    MiraiAlignmentGeometry? alignment,
    @Default(false) bool scrollable,
  }) = _MiraiAlertDialog;

  factory MiraiAlertDialog.fromJson(Map<String, dynamic> json) =>
      _$MiraiAlertDialogFromJson(json);
}
