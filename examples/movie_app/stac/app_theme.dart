import 'package:stac_core/stac_core.dart';

@StacThemeRef(name: "movie_app_dark")
StacTheme get darkTheme => _buildTheme(
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
);

StacTheme _buildTheme({
  required StacBrightness brightness,
  required StacColorScheme colorScheme,
}) {
  return StacTheme(
    brightness: brightness,
    colorScheme: colorScheme,
    textTheme: _buildTextTheme(),
    filledButtonTheme: _buildFilledButtonTheme(),
    outlinedButtonTheme: _buildOutlinedButtonTheme(),
    dividerTheme: _buildDividerTheme(),
  );
}

StacTextTheme _buildTextTheme() {
  return StacTextTheme(
    displayLarge: _textStyle(
      fontSize: 48,
      fontWeight: StacFontWeight.w700,
      height: 1.1,
    ),
    displayMedium: _textStyle(
      fontSize: 40,
      fontWeight: StacFontWeight.w700,
      height: 1.1,
    ),
    displaySmall: _textStyle(
      fontSize: 34,
      fontWeight: StacFontWeight.w700,
      height: 1.1,
    ),
    headlineLarge: _textStyle(
      fontSize: 30,
      fontWeight: StacFontWeight.w700,
      height: 1.3,
    ),
    headlineMedium: _textStyle(
      fontSize: 26,
      fontWeight: StacFontWeight.w700,
      height: 1.3,
    ),
    headlineSmall: _textStyle(
      fontSize: 23,
      fontWeight: StacFontWeight.w700,
      height: 1.3,
    ),
    titleLarge: _textStyle(
      fontSize: 20,
      fontWeight: StacFontWeight.w500,
      height: 1.3,
    ),
    titleMedium: _textStyle(
      fontSize: 18,
      fontWeight: StacFontWeight.w500,
      height: 1.3,
    ),
    titleSmall: _textStyle(
      fontSize: 16,
      fontWeight: StacFontWeight.w500,
      height: 1.3,
    ),
    labelLarge: _textStyle(
      fontSize: 16,
      fontWeight: StacFontWeight.w700,
      height: 1.3,
    ),
    labelMedium: _textStyle(
      fontSize: 14,
      fontWeight: StacFontWeight.w600,
      height: 1.3,
    ),
    labelSmall: _textStyle(
      fontSize: 12,
      fontWeight: StacFontWeight.w500,
      height: 1.3,
    ),
    bodyLarge: _textStyle(
      fontSize: 18,
      fontWeight: StacFontWeight.w400,
      height: 1.5,
    ),
    bodyMedium: _textStyle(
      fontSize: 16,
      fontWeight: StacFontWeight.w400,
      height: 1.5,
    ),
    bodySmall: _textStyle(
      fontSize: 14,
      fontWeight: StacFontWeight.w400,
      height: 1.5,
    ),
  );
}

StacButtonStyle _buildFilledButtonTheme() {
  return StacButtonStyle(
    minimumSize: StacSize(120, 40),
    textStyle: _textStyle(
      fontSize: 16,
      fontWeight: StacFontWeight.w500,
      height: 1.3,
    ),
    padding: StacEdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
    shape: StacRoundedRectangleBorder(borderRadius: StacBorderRadius.all(8)),
  );
}

StacButtonStyle _buildOutlinedButtonTheme() {
  return StacButtonStyle(
    minimumSize: StacSize(120, 40),
    textStyle: _textStyle(
      fontSize: 16,
      fontWeight: StacFontWeight.w500,
      height: 1.3,
    ),
    padding: StacEdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
    side: StacBorderSide(color: '#95E183', width: 1.0),
    shape: StacRoundedRectangleBorder(borderRadius: StacBorderRadius.all(8)),
  );
}

StacDividerThemeData _buildDividerTheme() {
  return StacDividerThemeData(color: '#24FFFFFF', thickness: 1);
}

StacCustomTextStyle _textStyle({
  required double fontSize,
  required StacFontWeight fontWeight,
  required double height,
  double? letterSpacing,
}) {
  return StacCustomTextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: height,
    letterSpacing: letterSpacing,
  );
}
