import 'package:stac_core/stac_core.dart'; // Hide StacTheme from stac_core to use the one from stac

/// Dark theme for the Movie App.
StacTheme get darkTheme {
  return StacTheme(
    brightness: StacBrightness.dark,
    colorScheme: StacColorScheme(
      brightness: StacBrightness.dark,
      primary: '#95E183',
      onPrimary: '#050608',
      secondary: '#95E183',
      onSecondary: '#FFFFFF',
      surface: '#050608',
      onSurface: '#FFFFFF',
      onSurfaceVariant: '#65FFFFFF',
      error: '#FF6565',
      onError: '#050608',
      outline: '#08FFFFFF',
    ),
    textTheme: StacTextTheme(
      displayLarge: StacCustomTextStyle(
        fontSize: 48,
        fontWeight: StacFontWeight.w700,
        height: 1.1,
      ),
      displayMedium: StacCustomTextStyle(
        fontSize: 40,
        fontWeight: StacFontWeight.w700,
        height: 1.1,
      ),
      displaySmall: StacCustomTextStyle(
        fontSize: 34,
        fontWeight: StacFontWeight.w700,
        height: 1.1,
      ),
      headlineLarge: StacCustomTextStyle(
        fontSize: 30,
        fontWeight: StacFontWeight.w700,
        height: 1.3,
      ),
      headlineMedium: StacCustomTextStyle(
        fontSize: 26,
        fontWeight: StacFontWeight.w700,
        height: 1.3,
      ),
      headlineSmall: StacCustomTextStyle(
        fontSize: 23,
        fontWeight: StacFontWeight.w700,
        height: 1.3,
      ),
      titleLarge: StacCustomTextStyle(
        fontSize: 20,
        fontWeight: StacFontWeight.w500,
        height: 1.3,
      ),
      titleMedium: StacCustomTextStyle(
        fontSize: 18,
        fontWeight: StacFontWeight.w500,
        height: 1.3,
      ),
      titleSmall: StacCustomTextStyle(
        fontSize: 16,
        fontWeight: StacFontWeight.w500,
        height: 1.3,
      ),
      labelLarge: StacCustomTextStyle(
        fontSize: 16,
        fontWeight: StacFontWeight.w700,
        height: 1.3,
      ),
      labelMedium: StacCustomTextStyle(
        fontSize: 14,
        fontWeight: StacFontWeight.w600,
        height: 1.3,
      ),
      labelSmall: StacCustomTextStyle(
        fontSize: 12,
        fontWeight: StacFontWeight.w500,
        height: 1.3,
      ),
      bodyLarge: StacCustomTextStyle(
        fontSize: 18,
        fontWeight: StacFontWeight.w400,
        height: 1.5,
      ),
      bodyMedium: StacCustomTextStyle(
        fontSize: 16,
        fontWeight: StacFontWeight.w400,
        height: 1.5,
      ),
      bodySmall: StacCustomTextStyle(
        fontSize: 14,
        fontWeight: StacFontWeight.w400,
        height: 1.5,
      ),
    ),
    filledButtonTheme: StacButtonStyle(
      minimumSize: StacSize(120, 40),
      textStyle: StacCustomTextStyle(
        fontSize: 16,
        fontWeight: StacFontWeight.w500,
        height: 1.3,
      ),
      padding: StacEdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
      shape: StacRoundedRectangleBorder(borderRadius: StacBorderRadius.all(8)),
    ),
    outlinedButtonTheme: StacButtonStyle(
      minimumSize: StacSize(120, 40),
      textStyle: StacCustomTextStyle(
        fontSize: 16,
        fontWeight: StacFontWeight.w500,
        height: 1.3,
      ),
      padding: StacEdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
      side: StacBorderSide(color: '#95E183', width: 1.0),
      shape: StacRoundedRectangleBorder(borderRadius: StacBorderRadius.all(8)),
    ),
    dividerTheme: StacDividerThemeData(color: '#24FFFFFF', thickness: 1),
  );
}
