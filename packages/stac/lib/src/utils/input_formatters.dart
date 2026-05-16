import 'package:flutter/services.dart';
import 'package:stac_logger/stac_logger.dart';

enum InputFormatterType {
  allow,
  deny,
  mask;

  TextInputFormatter format(String rule, {String? mask}) {
    try {
      switch (this) {
        case InputFormatterType.allow:
          return FilteringTextInputFormatter.allow(RegExp(rule));

        case InputFormatterType.deny:
          return FilteringTextInputFormatter.deny(RegExp(rule));

        case InputFormatterType.mask:
          return _StacMaskInputFormatter(mask: mask ?? '', rule: rule);
      }
    } catch (e) {
      Log.e(e);
      return FilteringTextInputFormatter.allow(RegExp(''));
    }
  }
}

class _StacMaskInputFormatter extends TextInputFormatter {
  _StacMaskInputFormatter({required this.mask, required String rule})
    : _allowed = RegExp('^${rule.isEmpty ? r'.' : rule}\$');

  final String mask;
  final RegExp _allowed;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (mask.isEmpty) return newValue;

    final raw = newValue.text
        .split('')
        .where((character) => _allowed.hasMatch(character))
        .join();
    final buffer = StringBuffer();
    var rawIndex = 0;

    for (var maskIndex = 0; maskIndex < mask.length; maskIndex += 1) {
      final token = mask[maskIndex];
      if (token == '#') {
        if (rawIndex >= raw.length) break;
        buffer.write(raw[rawIndex]);
        rawIndex += 1;
      } else if (rawIndex < raw.length) {
        buffer.write(token);
      }
    }

    final text = buffer.toString();
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
