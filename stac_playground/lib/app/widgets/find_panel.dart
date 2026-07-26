import 'dart:math';

import 'package:flutter/material.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:re_editor/re_editor.dart';
import 'package:stac_playground/theme/app_theme.dart';

const EdgeInsetsGeometry _kDefaultFindMargin = EdgeInsets.only(right: 10);
const double _kDefaultFindPanelWidth = 360;
const double _kDefaultFindPanelHeight = 40;
const double _kDefaultReplacePanelHeight = _kDefaultFindPanelHeight * 2;
const double _kDefaultFindIconSize = 18;
const double _kDefaultFindIconWidth = 30;
const double _kDefaultFindIconHeight = 30;
const double _kDefaultFindInputFontSize = 14;
const double _kDefaultFindResultFontSize = 12;
const EdgeInsetsGeometry _kDefaultFindPadding = EdgeInsets.all(0);
const EdgeInsetsGeometry _kDefaultFindInputContentPadding =
    EdgeInsets.symmetric(horizontal: 5);

const Color _kMutedText = Color(0x80FFFFFF);
const Color _kHairline = Color(0x26FFFFFF);

/// Find/replace panel for the code editor, styled after the Stac Console.
class CodeFindPanelView extends StatelessWidget implements PreferredSizeWidget {
  final CodeFindController controller;
  final EdgeInsetsGeometry margin;
  final bool readOnly;
  final Color? iconColor;
  final Color? iconSelectedColor;
  final double iconSize;
  final double inputFontSize;
  final double resultFontSize;
  final Color? inputTextColor;
  final Color? resultFontColor;
  final EdgeInsetsGeometry padding;
  final InputDecoration decoration;

  const CodeFindPanelView({
    super.key,
    required this.controller,
    this.margin = _kDefaultFindMargin,
    required this.readOnly,
    this.iconSelectedColor,
    this.iconColor,
    this.iconSize = _kDefaultFindIconSize,
    this.inputFontSize = _kDefaultFindInputFontSize,
    this.resultFontSize = _kDefaultFindResultFontSize,
    this.inputTextColor,
    this.resultFontColor,
    this.padding = _kDefaultFindPadding,
    this.decoration = const InputDecoration(
      filled: true,
      fillColor: Colors.transparent,
      isDense: true,
      isCollapsed: true,
      contentPadding: _kDefaultFindInputContentPadding,
      border: InputBorder.none,
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
    ),
  });

  @override
  Size get preferredSize => Size(
      double.infinity,
      controller.value == null
          ? 0
          : ((controller.value!.replaceMode
                  ? _kDefaultReplacePanelHeight
                  : _kDefaultFindPanelHeight) +
              margin.vertical));

  @override
  Widget build(BuildContext context) {
    if (controller.value == null) {
      return const SizedBox(width: 0, height: 0);
    }
    return Container(
      width: preferredSize.width,
      color: const Color(0x800B0B0D),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildFindInputView(context),
          if (controller.value!.replaceMode) _buildReplaceInputView(context),
          Container(
            height: 1,
            color: context.colors.outline,
          ),
        ],
      ),
    );
  }

  Widget _buildFindInputView(BuildContext context) {
    final CodeFindValue value = controller.value!;
    final int resultsCount = value.result?.matches.length ?? 0;
    final String result =
        '$resultsCount ${resultsCount == 1 ? 'result' : 'results'}';
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      height: _kDefaultFindPanelHeight,
      child: Row(
        children: [
          const PhosphorIcon(
            PhosphorIconsRegular.magnifyingGlass,
            size: 14,
            color: _kMutedText,
          ),
          const SizedBox(width: 6),
          Expanded(
            child: _buildTextField(
              context: context,
              controller: controller.findInputController,
              focusNode: controller.findInputFocusNode,
            ),
          ),
          const SizedBox(width: 12),
          Container(width: 1, height: 10, color: _kHairline),
          const SizedBox(width: 12),
          _buildCheckText(
            context: context,
            text: 'Aa',
            checked: value.option.caseSensitive,
            onPressed: () => controller.toggleCaseSensitive(),
            tooltip: 'Case sensitive',
          ),
          const SizedBox(width: 12),
          _buildCheckText(
            context: context,
            text: '.*',
            checked: value.option.regex,
            onPressed: () => controller.toggleRegex(),
            tooltip: 'Regex',
          ),
          const SizedBox(width: 12),
          Container(width: 1, height: 10, color: _kHairline),
          const SizedBox(width: 12),
          Text(
            result,
            style: TextStyle(
              fontSize: resultFontSize,
              height: 1.5,
              color: resultsCount == 0
                  ? _kMutedText
                  : (resultFontColor ?? context.colors.onBackground),
            ),
          ),
          const SizedBox(width: 12),
          Container(width: 1, height: 10, color: _kHairline),
          const SizedBox(width: 12),
          _buildIconButton(
            onPressed:
                value.result == null ? null : () => controller.previousMatch(),
            icon: PhosphorIcon(PhosphorIconsRegular.arrowUp, size: iconSize),
            tooltip: 'Previous match',
          ),
          const SizedBox(width: 12),
          _buildIconButton(
            onPressed:
                value.result == null ? null : () => controller.nextMatch(),
            icon: PhosphorIcon(PhosphorIconsRegular.arrowDown, size: iconSize),
            tooltip: 'Next match',
          ),
          const SizedBox(width: 12),
          Container(width: 1, height: 10, color: _kHairline),
          const SizedBox(width: 12),
          _buildIconButton(
            onPressed: () => controller.close(),
            icon: PhosphorIcon(PhosphorIconsRegular.x, size: iconSize),
            tooltip: 'Close',
          ),
        ],
      ),
    );
  }

  Widget _buildReplaceInputView(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: _kDefaultFindPanelWidth / 1.75,
          height: _kDefaultFindPanelHeight,
          child: _buildTextField(
            context: context,
            controller: controller.replaceInputController,
            focusNode: controller.replaceInputFocusNode,
          ),
        ),
        _buildIconButton(
          onPressed: controller.value!.result == null
              ? null
              : () => controller.replaceMatch(),
          icon: PhosphorIcon(PhosphorIconsRegular.check, size: iconSize),
          tooltip: 'Replace',
        ),
        _buildIconButton(
          onPressed: controller.value!.result == null
              ? null
              : () => controller.replaceAllMatches(),
          icon: PhosphorIcon(PhosphorIconsRegular.checks, size: iconSize),
          tooltip: 'Replace all',
        ),
      ],
    );
  }

  Widget _buildTextField({
    required BuildContext context,
    required TextEditingController controller,
    required FocusNode focusNode,
  }) {
    return Padding(
      padding: padding,
      child: TextField(
        maxLines: 1,
        focusNode: focusNode,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          fontSize: inputFontSize,
          height: 1.5,
          color: inputTextColor ?? context.colors.onBackground,
        ),
        decoration: decoration.copyWith(
          hintText: 'Search this file',
          hintStyle: TextStyle(
            fontSize: inputFontSize,
            height: 1.5,
            color: _kMutedText,
          ),
          contentPadding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
          constraints: const BoxConstraints(
            minHeight: _kDefaultFindIconHeight,
            maxHeight: _kDefaultFindIconHeight,
          ),
        ),
        controller: controller,
      ),
    );
  }

  Widget _buildCheckText({
    required BuildContext context,
    required String text,
    required bool checked,
    required VoidCallback onPressed,
    String? tooltip,
  }) {
    final Color selectedColor = iconSelectedColor ?? context.colors.secondary;
    final Widget content = Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        mouseCursor: SystemMouseCursors.click,
        hoverColor: Colors.white.withValues(alpha: 0.06),
        splashColor: Colors.white.withValues(alpha: 0.10),
        customBorder:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        child: SizedBox(
          width: 18,
          height: 18,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: inputFontSize,
                height: 1.0,
                color: checked ? selectedColor : _kMutedText,
              ),
            ),
          ),
        ),
      ),
    );
    return tooltip == null
        ? content
        : Tooltip(message: tooltip, child: content);
  }

  Widget _buildIconButton({
    required Widget icon,
    VoidCallback? onPressed,
    String? tooltip,
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      constraints: const BoxConstraints(
        maxWidth: _kDefaultFindIconWidth,
        maxHeight: _kDefaultFindIconHeight,
      ),
      tooltip: tooltip,
      splashRadius: max(_kDefaultFindIconWidth, _kDefaultFindIconHeight) / 2,
    );
  }
}
