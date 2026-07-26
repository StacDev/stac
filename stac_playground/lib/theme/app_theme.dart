import 'package:flutter/material.dart';
import 'package:stac_playground/theme/app_colors.dart';
import 'package:stac_playground/theme/app_text_theme.dart';

class AppTheme {
  const AppTheme._();

  /// Console palette — mirrors the Stac Console design tokens:
  /// surface #0B0B0D, surface-bright #101112, white-alpha outlines,
  /// secondary (accent) #50D59D, warning #FF9A3E.
  static AppColors get appColors => const AppColors(
        brightness: Brightness.dark,
        primary: Color(0xFF50D59D),
        onPrimary: Color(0XFF0B0B0D),
        secondary: Color(0XFF50D59D),
        onSecondary: Color(0XFF0B0B0D),
        background: Color(0XFF0B0B0D),
        onBackground: Color(0XFFFFFFFF),
        onBackground2: Color(0XB3FFFFFF),
        onBackground3: Color(0X4DFFFFFF),
        surface: Color(0XFF101112),
        onSurface: Color(0XFFFFFFFF),
        surfaceVariant: Color(0X0AFFFFFF),
        onSurfaceVariant: Color(0X99FFFFFF),
        error: Color(0XFFFF6565),
        onError: Color(0XFF0B0B0D),
        success: Color(0XFF50D59D),
        onSuccess: Color(0XFF0B0B0D),
        warning: Color(0XFFFF9A3E),
        onWarning: Color(0XFF0B0B0D),
        outline: Color(0X0FFFFFFF),
        outline2: Color(0X1AFFFFFF),
        primaryGradient: LinearGradient(
          colors: [
            Color(0xFF27BA68),
            Color(0xFF50D59D),
          ],
        ),
        backgroundGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF0B0B0D), Color(0xFF101112)],
          stops: [0.5, 1.0],
        ),
        cardGradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [
            Color(0x06FFFFFF),
            Color(0x03FFFFFF),
          ],
        ),
        lineGradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [
            Color(0x06FFFFFF),
            Color(0x03FFFFFF),
          ],
        ),
      );

  static get darkTheme {
    final baseTheme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: appColors.background,
      colorScheme: ColorScheme(
        brightness: appColors.brightness,
        primary: appColors.primary,
        onPrimary: appColors.onPrimary,
        secondary: appColors.secondary,
        onSecondary: appColors.onSecondary,
        surface: appColors.surface,
        onSurface: appColors.onSurface,
        surfaceContainerHighest: appColors.surfaceVariant,
        onSurfaceVariant: appColors.onSurfaceVariant,
        error: appColors.error,
        onError: appColors.onError,
      ),
      fontFamily: 'Figtree',
      textTheme: AppTextTheme.textTheme,

      /// Component Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      tooltipTheme: const TooltipThemeData(
        constraints: BoxConstraints(minHeight: 24),
        textStyle: TextStyle(
          fontSize: 12,
          height: 1.3,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
          color: Color(0xFF272A2C),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

      ///Extensions
      extensions: <ThemeExtension>[
        appColors,
      ],
    );

    return baseTheme;
  }
}

extension AppThemeX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
  TextTheme get textTheme => Theme.of(this).textTheme;
}
