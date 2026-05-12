import 'package:flutter_test/flutter_test.dart';
import 'package:stac/src/utils/input_formatters.dart';

void main() {
  group('InputFormatterType.mask', () {
    test('applies separators and filters disallowed characters', () {
      final formatter = InputFormatterType.mask.format(
        r'\d',
        mask: '##/##/####',
      );

      final value = formatter.formatEditUpdate(
        TextEditingValue.empty,
        const TextEditingValue(text: '1a2345678'),
      );

      expect(value.text, '12/34/5678');
      expect(value.selection.baseOffset, value.text.length);
    });

    test('anchors rules so empty-substring matches are rejected', () {
      final formatter = InputFormatterType.mask.format(r'\d*', mask: '##/##');

      final value = formatter.formatEditUpdate(
        TextEditingValue.empty,
        const TextEditingValue(text: 'a1b2'),
      );

      expect(value.text, '12');
    });

    test('returns the new value when mask is empty', () {
      final formatter = InputFormatterType.mask.format(r'\d');
      const value = TextEditingValue(text: '123');

      expect(formatter.formatEditUpdate(TextEditingValue.empty, value), value);
    });
  });
}
