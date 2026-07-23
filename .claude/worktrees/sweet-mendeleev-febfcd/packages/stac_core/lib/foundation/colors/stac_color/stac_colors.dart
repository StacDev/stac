/// Type alias for Stac color representation as a hex string.
///
/// Colors in the Stac framework are represented as hex strings (e.g., '#FF0000')
/// or theme color names (e.g., 'primary', 'secondary').
typedef StacColor = String;

/// Extension on [StacColor] to provide additional functionality.
extension StacColorExtension on StacColor {
  /// Creates a new color with the specified opacity.
  ///
  /// This method appends the opacity value to the color string in the format
  /// `@<opacity>` where opacity is expressed as a percentage (0-100).
  ///
  /// {@tool snippet}
  /// Dart Example:
  /// ```dart
  /// StacColors.primary.withOpacity(0.8)  // Returns "primary@80"
  /// StacColors.blue.withOpacity(0.5)     // Returns "blue@50"
  /// '#FF0000'.withOpacity(0.3)           // Returns "#FF0000@30"
  /// ```
  /// {@end-tool}
  ///
  /// {@tool snippet}
  /// JSON Example:
  /// ```json
  /// {
  ///   "color": "primary@80",
  ///   "backgroundColor": "secondary@50"
  /// }
  /// ```
  /// {@end-tool}
  ///
  /// The opacity value should be between 0.0 (completely transparent) and 1.0
  /// (completely opaque). Values outside this range will be clamped.
  StacColor withOpacity(double opacity) {
    // Clamp opacity to valid range (0.0 to 1.0)
    final clampedOpacity = opacity.clamp(0.0, 1.0);

    // Convert to percentage (0-100) and round to nearest integer
    final opacityPercentage = (clampedOpacity * 100).round();

    // Remove any existing opacity suffix by splitting on '@' and taking the first part
    final baseColor = split('@').first;

    // Return the base color string with new opacity suffix
    return '$baseColor@$opacityPercentage';
  }
}

/// A collection of predefined colors for the Stac framework.
///
/// This class provides a comprehensive set of Material Design colors,
/// Material 3 ColorScheme colors, and utility colors that can be used
/// throughout Stac applications.
///
/// Colors are provided as hex strings with alpha channel support.
/// Theme-based colors (like 'primary', 'secondary') reference the
/// current theme's color scheme.
class StacColors {
  // ==========================================
  // Basic Colors
  // ==========================================

  /// Completely invisible.
  static const String transparent = '#00000000';

  /// Completely opaque black.
  static const String black = '#FF000000';

  /// Completely opaque white.
  static const String white = '#FFFFFFFF';

  // ==========================================
  // Primary Material Colors
  // ==========================================

  /// Red primary color (500 shade).
  static const String red = '#FFF44336';

  /// Pink primary color (500 shade).
  static const String pink = '#FFE91E63';

  /// Purple primary color (500 shade).
  static const String purple = '#FF9C27B0';

  /// Deep purple primary color (500 shade).
  static const String deepPurple = '#FF673AB7';

  /// Indigo primary color (500 shade).
  static const String indigo = '#FF3F51B5';

  /// Blue primary color (500 shade).
  static const String blue = '#FF2196F3';

  /// Light blue primary color (500 shade).
  static const String lightBlue = '#FF03A9F4';

  /// Cyan primary color (500 shade).
  static const String cyan = '#FF00BCD4';

  /// Teal primary color (500 shade).
  static const String teal = '#FF009688';

  /// Green primary color (500 shade).
  static const String green = '#FF4CAF50';

  /// Light green primary color (500 shade).
  static const String lightGreen = '#FF8BC34A';

  /// Lime primary color (500 shade).
  static const String lime = '#FFCDDC39';

  /// Yellow primary color (500 shade).
  static const String yellow = '#FFFFEB3B';

  /// Amber primary color (500 shade).
  static const String amber = '#FFFFC107';

  /// Orange primary color (500 shade).
  static const String orange = '#FFFF9800';

  /// Deep orange primary color (500 shade).
  static const String deepOrange = '#FFFF5722';

  /// Brown primary color (500 shade).
  static const String brown = '#FF795548';

  /// Grey primary color (500 shade).
  static const String grey = '#FF9E9E9E';

  /// Blue grey primary color (500 shade).
  static const String blueGrey = '#FF607D8B';

  // ==========================================
  // Accent Material Colors
  // ==========================================

  /// Red accent color (200 shade).
  static const String redAccent = '#FFFF5252';

  /// Pink accent color (200 shade).
  static const String pinkAccent = '#FFFF4081';

  /// Purple accent color (200 shade).
  static const String purpleAccent = '#FFE040FB';

  /// Deep purple accent color (200 shade).
  static const String deepPurpleAccent = '#FF7C4DFF';

  /// Indigo accent color (200 shade).
  static const String indigoAccent = '#FF536DFE';

  /// Blue accent color (200 shade).
  static const String blueAccent = '#FF448AFF';

  /// Light blue accent color (200 shade).
  static const String lightBlueAccent = '#FF40C4FF';

  /// Cyan accent color (200 shade).
  static const String cyanAccent = '#FF18FFFF';

  /// Teal accent color (200 shade).
  static const String tealAccent = '#FF64FFDA';

  /// Green accent color (200 shade).
  static const String greenAccent = '#FF69F0AE';

  /// Light green accent color (200 shade).
  static const String lightGreenAccent = '#FFB2FF59';

  /// Lime accent color (200 shade).
  static const String limeAccent = '#FFEEFF41';

  /// Yellow accent color (200 shade).
  static const String yellowAccent = '#FFFFFF00';

  /// Amber accent color (200 shade).
  static const String amberAccent = '#FFFFD740';

  /// Orange accent color (200 shade).
  static const String orangeAccent = '#FFFFAB40';

  /// Deep orange accent color (200 shade).
  static const String deepOrangeAccent = '#FFFF6E40';

  // ==========================================
  // Material 3 ColorScheme Colors
  // ==========================================

  // Primary Colors
  /// The primary color (default from ColorScheme.light).
  static const String primary = 'primary';

  /// A color that's clearly legible when drawn on primary.
  static const String onPrimary = 'onPrimary';

  /// A color used for elements needing less emphasis than primary.
  static const String primaryContainer = 'primaryContainer';

  /// A color that's clearly legible when drawn on primaryContainer.
  static const String onPrimaryContainer = 'onPrimaryContainer';

  /// A substitute for primaryContainer that's the same for dark and light themes.
  static const String primaryFixed = 'primaryFixed';

  /// A color used for elements needing more emphasis than primaryFixed.
  static const String primaryFixedDim = 'primaryFixedDim';

  /// A color for text and icons on top of primaryFixed.
  static const String onPrimaryFixed = 'onPrimaryFixed';

  /// A lower-emphasis option for text and icons than onPrimaryFixed.
  static const String onPrimaryFixedVariant = 'onPrimaryFixedVariant';

  // Secondary Colors
  /// An accent color for less prominent components.
  static const String secondary = 'secondary';

  /// A color that's clearly legible when drawn on secondary.
  static const String onSecondary = 'onSecondary';

  /// A color used for elements needing less emphasis than secondary.
  static const String secondaryContainer = 'secondaryContainer';

  /// A color that's clearly legible when drawn on secondaryContainer.
  static const String onSecondaryContainer = 'onSecondaryContainer';

  /// A substitute for secondaryContainer that's the same for dark and light themes.
  static const String secondaryFixed = 'secondaryFixed';

  /// A color used for elements needing more emphasis than secondaryFixed.
  static const String secondaryFixedDim = 'secondaryFixedDim';

  /// A color for text and icons on top of secondaryFixed.
  static const String onSecondaryFixed = 'onSecondaryFixed';

  /// A lower-emphasis option for text and icons than onSecondaryFixed.
  static const String onSecondaryFixedVariant = 'onSecondaryFixedVariant';

  // Tertiary Colors
  /// A complementary accent color for components.
  static const String tertiary = 'tertiary';

  /// A color that's clearly legible when drawn on tertiary.
  static const String onTertiary = 'onTertiary';

  /// A color used for elements needing less emphasis than tertiary.
  static const String tertiaryContainer = 'tertiaryContainer';

  /// A color that's clearly legible when drawn on tertiaryContainer.
  static const String onTertiaryContainer = 'onTertiaryContainer';

  /// A substitute for tertiaryContainer that's the same for dark and light themes.
  static const String tertiaryFixed = 'tertiaryFixed';

  /// A color used for elements needing more emphasis than tertiaryFixed.
  static const String tertiaryFixedDim = 'tertiaryFixedDim';

  /// A color for text and icons on top of tertiaryFixed.
  static const String onTertiaryFixed = 'onTertiaryFixed';

  /// A lower-emphasis option for text and icons than onTertiaryFixed.
  static const String onTertiaryFixedVariant = 'onTertiaryFixedVariant';

  // Error Colors
  /// The color to use for input validation errors.
  static const String error = 'error';

  /// A color that's clearly legible when drawn on error.
  static const String onError = 'onError';

  /// A color used for error elements needing less emphasis than error.
  static const String errorContainer = 'errorContainer';

  /// A color that's clearly legible when drawn on errorContainer.
  static const String onErrorContainer = 'onErrorContainer';

  // Surface Colors
  /// A color that typically appears behind scrollable content.
  static const String surface = 'surface';

  /// A color that's clearly legible when drawn on surface.
  static const String onSurface = 'onSurface';

  /// A color variant of surface that can be used for differentiation.
  static const String surfaceDim = 'surfaceDim';

  /// A brighter variant of surface.
  static const String surfaceBright = 'surfaceBright';

  /// The lowest surface container level.
  static const String surfaceContainerLowest = 'surfaceContainerLowest';

  /// A low surface container level.
  static const String surfaceContainerLow = 'surfaceContainerLow';

  /// The default surface container level.
  static const String surfaceContainer = 'surfaceContainer';

  /// A high surface container level.
  static const String surfaceContainerHigh = 'surfaceContainerHigh';

  /// The highest surface container level.
  static const String surfaceContainerHighest = 'surfaceContainerHighest';

  /// A color variant of onSurface for decorative elements.
  static const String onSurfaceVariant = 'onSurfaceVariant';

  // Outline Colors
  /// A utility color that creates boundaries and emphasis.
  static const String outline = 'outline';

  /// A lower-emphasis variant of outline.
  static const String outlineVariant = 'outlineVariant';

  // Other Colors
  /// A color used to paint shadows.
  static const String shadow = 'shadow';

  /// A color used to paint the scrim around modal views.
  static const String scrim = 'scrim';

  /// A surface color used for displaying the reverse of what's shown in the surrounding UI.
  static const String inverseSurface = 'inverseSurface';

  /// A color that's clearly legible when drawn on inverseSurface.
  static const String onInverseSurface = 'onInverseSurface';

  /// An accent color used for displaying a highlight color on inverseSurface backgrounds.
  static const String inversePrimary = 'inversePrimary';

  /// A color used as an overlay on surface to indicate component elevation.
  static const String surfaceTint = 'surfaceTint';
}
