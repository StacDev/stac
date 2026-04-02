import 'package:flutter/material.dart';
import 'package:example/src/app_shell.dart';

class StacGenUiExampleApp extends StatelessWidget {
  const StacGenUiExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    const surface = Color(0xFF0B0B0D);
    const surfaceBright = Color(0xFF121214);
    const surfaceBright2 = Color(0xFF1A1A1C);
    const surfaceBright3 = Color(0xFF212123);
    const primary = Color(0xFFFFFFFF);
    const onPrimary = Color(0xFF0B0B0D);
    const secondary = Color(0xFF50D59D);
    const onSecondary = Color(0xFF0B0B0D);
    const error = Color(0xFFFF6565);
    const onError = Color(0xFF0B0B0D);

    final figmaScheme = const ColorScheme.dark().copyWith(
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      tertiary: const Color(0xFF77A8FD),
      onTertiary: onPrimary,
      error: error,
      onError: onError,
      surface: surface,
      onSurface: primary,
      onSurfaceVariant: const Color(0xB3FFFFFF),
      outline: const Color(0x0FFFFFFF),
      outlineVariant: const Color(0x1AFFFFFF),
      shadow: const Color(0x0FFFFFFF),
      scrim: const Color(0x0FFFFFFF),
    );

    return MaterialApp(
      title: 'Stac Gen UI Example',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        colorScheme: figmaScheme,
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: surface,
        cardTheme: const CardThemeData(
          color: Color(0x0AFFFFFF),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: surfaceBright,
          foregroundColor: primary,
          elevation: 0,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: surfaceBright2,
          indicatorColor: Colors.transparent,
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(
                color: primary,
                fontWeight: FontWeight.w600,
              );
            }
            return const TextStyle(color: Color(0xB3FFFFFF));
          }),
          iconTheme: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const IconThemeData(color: primary);
            }
            return const IconThemeData(color: Color(0xB3FFFFFF));
          }),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: surfaceBright3,
          border: OutlineInputBorder(),
        ),
      ),
      theme: ThemeData.dark(useMaterial3: true),
      home: const AppShell(),
    );
  }
}
