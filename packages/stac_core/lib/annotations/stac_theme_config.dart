/// Annotation to mark methods that return theme definitions.
///
/// This annotation is used to identify Stac theme builders so the framework can
/// register them and apply the correct theme at runtime.
///
/// Example usage:
/// ```dart
/// @StacThemeConfig(themeName: 'darkTheme')
/// ThemeData buildDarkTheme() {
///   return ThemeData.dark();
/// }
/// ```
class StacThemeConfig {
  /// Creates a [StacThemeConfig] with the given theme name.
  const StacThemeConfig({required this.themeName});

  /// The identifier for this theme.
  final String themeName;
}
