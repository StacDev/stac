part of 'app_theme_cubit.dart';

class AppThemeState {
  const AppThemeState({
    this.themeMode = ThemeMode.light,
    this.lightTheme,
    this.darkTheme,
  });

  final ThemeMode themeMode;
  final StacTheme? lightTheme;
  final StacTheme? darkTheme;

  AppThemeState copyWith({
    ThemeMode? themeMode,
    StacTheme? lightTheme,
    StacTheme? darkTheme,
  }) {
    return AppThemeState(
      themeMode: themeMode ?? this.themeMode,
      lightTheme: lightTheme ?? this.lightTheme,
      darkTheme: darkTheme ?? this.darkTheme,
    );
  }
}
