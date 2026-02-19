import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac_core/stac_core.dart';

void main() {
  group('StacTextStyleParser', () {
    testWidgets('parses StacThemeTextStyle with overrides', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(
            textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
          home: Builder(
            builder: (context) {
              final stacStyle = StacThemeData.textTheme.bodyMedium.copyWith(
                color: StacColors.red,
                fontSize: 20,
              );

              final parsedStyle = stacStyle.parse(context);

              expect(parsedStyle?.fontSize, 20);
              expect(parsedStyle?.color, const Color(0xFFF44336));
              // inherit should be null/default if not set, but base style properties should be preserved if not overridden
              // copyWith logic: if base has default generic font family, it persists.

              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('parses StacThemeTextStyle without overrides', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(
            textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
          home: Builder(
            builder: (context) {
              final stacStyle = StacThemeData.textTheme.bodyMedium;

              final parsedStyle = stacStyle.parse(context);

              expect(parsedStyle?.fontSize, 14);
              expect(parsedStyle?.color, const Color(0xFF000000));

              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('parses StacThemeTextStyle with null base style', (
      tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          // Default theme has textTheme, checking non-existent style if possible?
          // All standard styles in ThemeData have defaults.
          // But if we explicitly set one to null in ThemeData?
          theme: ThemeData(textTheme: const TextTheme(bodyLarge: null)),
          home: Builder(
            builder: (context) {
              final stacStyle = StacThemeData.textTheme.bodyLarge.copyWith(
                color: StacColors.blue,
              );

              final parsedStyle = stacStyle.parse(context);

              // ThemeData provides default values for TextTheme styles even if explicitly set to null in constructor
              // so parsedStyle will likely be non-null and contain the overrides.
              expect(parsedStyle, isNotNull);
              expect(
                parsedStyle?.color,
                const Color(0xFF2196F3),
              ); // StacColors.blue -> Colors.blue default 500

              return const SizedBox();
            },
          ),
        ),
      );
    });
  });
}
