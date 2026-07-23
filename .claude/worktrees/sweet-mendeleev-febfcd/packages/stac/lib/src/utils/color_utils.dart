import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_type.dart';

const String _hashtag = "#";
const String _empty = "";
const String _transparencySeparator = "@";

extension ColorExt on String? {
  Color? toColor(BuildContext context) {
    if (this?.isEmpty ?? true) return null;

    // Extract transparency if specified
    String colorString = this!;
    int opacity = 255; // Default: fully opaque

    if (colorString.contains(_transparencySeparator)) {
      final parts = colorString.split(_transparencySeparator);
      colorString = parts[0];
      // Parse transparency percentage (0-100) and convert to alpha value (0-255)
      final opacityPercentage = int.tryParse(parts[1]);
      if (opacityPercentage != null &&
          opacityPercentage >= 0 &&
          opacityPercentage <= 100) {
        opacity = ((opacityPercentage) * 255 / 100).round();
      }
    }

    // Parse the color based on its format
    Color? parsedColor;
    if (colorString.startsWith(_hashtag)) {
      parsedColor = _parseHexColor(colorString, opacity);
    } else {
      // Try theme color first, then named color
      parsedColor = _parseThemeColor(colorString, context);
      parsedColor ??= _parseNameColor(colorString);
    }

    // Apply transparency if a valid color was parsed and transparency is not 255 (fully opaque)
    if (parsedColor != null && opacity != 255) {
      return parsedColor.withAlpha(opacity);
    }

    return parsedColor;
  }
}

Color? _parseThemeColor(String color, BuildContext context) {
  // Ex: primary
  StacColorType colorType = StacColorType.values.firstWhere(
    (e) => e.name == color,
    orElse: () => StacColorType.none,
  );

  switch (colorType) {
    case StacColorType.primary:
      return Theme.of(context).colorScheme.primary;
    case StacColorType.onPrimary:
      return Theme.of(context).colorScheme.onPrimary;
    case StacColorType.primaryContainer:
      return Theme.of(context).colorScheme.primaryContainer;
    case StacColorType.onPrimaryContainer:
      return Theme.of(context).colorScheme.onPrimaryContainer;
    case StacColorType.primaryFixed:
      return Theme.of(context).colorScheme.primaryFixed;
    case StacColorType.primaryFixedDim:
      return Theme.of(context).colorScheme.primaryFixedDim;
    case StacColorType.onPrimaryFixed:
      return Theme.of(context).colorScheme.onPrimaryFixed;
    case StacColorType.onPrimaryFixedVariant:
      return Theme.of(context).colorScheme.onPrimaryFixedVariant;
    case StacColorType.secondary:
      return Theme.of(context).colorScheme.secondary;
    case StacColorType.onSecondary:
      return Theme.of(context).colorScheme.onSecondary;
    case StacColorType.secondaryContainer:
      return Theme.of(context).colorScheme.secondaryContainer;
    case StacColorType.onSecondaryContainer:
      return Theme.of(context).colorScheme.onSecondaryContainer;
    case StacColorType.secondaryFixed:
      return Theme.of(context).colorScheme.secondaryFixed;
    case StacColorType.secondaryFixedDim:
      return Theme.of(context).colorScheme.secondaryFixedDim;
    case StacColorType.onSecondaryFixed:
      return Theme.of(context).colorScheme.onSecondaryFixed;
    case StacColorType.onSecondaryFixedVariant:
      return Theme.of(context).colorScheme.onSecondaryFixedVariant;
    case StacColorType.tertiary:
      return Theme.of(context).colorScheme.tertiary;
    case StacColorType.onTertiary:
      return Theme.of(context).colorScheme.onTertiary;
    case StacColorType.tertiaryContainer:
      return Theme.of(context).colorScheme.tertiaryContainer;
    case StacColorType.onTertiaryContainer:
      return Theme.of(context).colorScheme.onTertiaryContainer;
    case StacColorType.tertiaryFixed:
      return Theme.of(context).colorScheme.tertiaryFixed;
    case StacColorType.tertiaryFixedDim:
      return Theme.of(context).colorScheme.tertiaryFixedDim;
    case StacColorType.onTertiaryFixed:
      return Theme.of(context).colorScheme.onTertiaryFixed;
    case StacColorType.onTertiaryFixedVariant:
      return Theme.of(context).colorScheme.onTertiaryFixedVariant;
    case StacColorType.error:
      return Theme.of(context).colorScheme.error;
    case StacColorType.onError:
      return Theme.of(context).colorScheme.onError;
    case StacColorType.errorContainer:
      return Theme.of(context).colorScheme.errorContainer;
    case StacColorType.onErrorContainer:
      return Theme.of(context).colorScheme.onErrorContainer;
    case StacColorType.surface:
      return Theme.of(context).colorScheme.surface;
    case StacColorType.onSurface:
      return Theme.of(context).colorScheme.onSurface;
    case StacColorType.surfaceDim:
      return Theme.of(context).colorScheme.surfaceDim;
    case StacColorType.surfaceBright:
      return Theme.of(context).colorScheme.surfaceBright;
    case StacColorType.surfaceContainerLowest:
      return Theme.of(context).colorScheme.surfaceContainerLowest;
    case StacColorType.surfaceContainerLow:
      return Theme.of(context).colorScheme.surfaceContainerLow;
    case StacColorType.surfaceContainer:
      return Theme.of(context).colorScheme.surfaceContainer;
    case StacColorType.surfaceContainerHigh:
      return Theme.of(context).colorScheme.surfaceContainerHigh;
    case StacColorType.surfaceContainerHighest:
      return Theme.of(context).colorScheme.surfaceContainerHighest;
    case StacColorType.onSurfaceVariant:
      return Theme.of(context).colorScheme.onSurfaceVariant;
    case StacColorType.outline:
      return Theme.of(context).colorScheme.outline;
    case StacColorType.outlineVariant:
      return Theme.of(context).colorScheme.outlineVariant;
    case StacColorType.shadow:
      return Theme.of(context).colorScheme.shadow;
    case StacColorType.scrim:
      return Theme.of(context).colorScheme.scrim;
    case StacColorType.inverseSurface:
      return Theme.of(context).colorScheme.inverseSurface;
    case StacColorType.onInverseSurface:
      return Theme.of(context).colorScheme.onInverseSurface;
    case StacColorType.inversePrimary:
      return Theme.of(context).colorScheme.inversePrimary;
    case StacColorType.surfaceTint:
      return Theme.of(context).colorScheme.surfaceTint;
    case StacColorType.none:
      return null;
  }
}

Color _parseHexColor(String color, [int alpha = 255]) {
  // Ex: #000000 or #FF000000
  final buffer = StringBuffer();
  if (color.length == 6 || color.length == 7) {
    // Add alpha channel
    buffer.write(alpha.toRadixString(16).padLeft(2, '0'));
  }
  buffer.write(color.replaceFirst(_hashtag, _empty));
  int? intColor = int.tryParse(buffer.toString(), radix: 16);
  intColor = intColor ?? 0x00000000;
  return Color(intColor);
}

Color? _parseNameColor(String colorString) {
  String color;
  int? opacity;
  if (colorString.startsWith(StacColors.white.name) ||
      colorString.startsWith(StacColors.black.name)) {
    // Ex: black54
    color = colorString.substring(0, colorString.length - 2);
    opacity = int.tryParse(
      colorString.substring(colorString.length - 2, colorString.length),
    );
    if (opacity == null) {
      // Ex: black
      color = colorString;
    }
  } else {
    // Ex: red
    color = colorString;
  }

  StacColors stacColor = StacColors.values.firstWhere(
    (e) => e.name == color,
    orElse: () => StacColors.transparent,
  );

  switch (stacColor) {
    case StacColors.amber:
      return Colors.amber;
    case StacColors.amberAccent:
      return Colors.amberAccent;
    case StacColors.black:
      switch (opacity) {
        case 12:
          return Colors.black12;
        case 26:
          return Colors.black26;
        case 38:
          return Colors.black38;
        case 45:
          return Colors.black45;
        case 54:
          return Colors.black54;
        case 87:
          return Colors.black87;
        default:
          return Colors.black;
      }
    case StacColors.blue:
      return Colors.blue;
    case StacColors.blueAccent:
      return Colors.blueAccent;
    case StacColors.blueGrey:
      return Colors.blueGrey;
    case StacColors.brown:
      return Colors.brown;
    case StacColors.cyan:
      return Colors.cyan;
    case StacColors.cyanAccent:
      return Colors.cyanAccent;
    case StacColors.deepOrange:
      return Colors.deepOrange;
    case StacColors.deepOrangeAccent:
      return Colors.deepOrangeAccent;
    case StacColors.deepPurple:
      return Colors.deepPurple;
    case StacColors.deepPurpleAccent:
      return Colors.deepPurpleAccent;
    case StacColors.green:
      return Colors.green;
    case StacColors.greenAccent:
      return Colors.greenAccent;
    case StacColors.grey:
      return Colors.grey;
    case StacColors.indigo:
      return Colors.indigo;
    case StacColors.indigoAccent:
      return Colors.indigoAccent;
    case StacColors.lightBlue:
      return Colors.lightBlue;
    case StacColors.lightBlueAccent:
      return Colors.lightBlueAccent;
    case StacColors.lightGreen:
      return Colors.lightGreen;
    case StacColors.lightGreenAccent:
      return Colors.lightGreenAccent;
    case StacColors.lime:
      return Colors.lime;
    case StacColors.limeAccent:
      return Colors.limeAccent;
    case StacColors.orange:
      return Colors.orange;
    case StacColors.orangeAccent:
      return Colors.orangeAccent;
    case StacColors.pink:
      return Colors.pink;
    case StacColors.pinkAccent:
      return Colors.pinkAccent;
    case StacColors.purple:
      return Colors.purple;
    case StacColors.purpleAccent:
      return Colors.purpleAccent;
    case StacColors.red:
      return Colors.red;
    case StacColors.redAccent:
      return Colors.redAccent;
    case StacColors.teal:
      return Colors.teal;
    case StacColors.tealAccent:
      return Colors.tealAccent;
    case StacColors.transparent:
      return Colors.transparent;
    case StacColors.white:
      switch (opacity) {
        case 10:
          return Colors.white10;
        case 12:
          return Colors.white12;
        case 24:
          return Colors.white24;
        case 30:
          return Colors.white30;
        case 38:
          return Colors.white38;
        case 54:
          return Colors.white54;
        case 60:
          return Colors.white60;
        case 70:
          return Colors.white70;
        default:
          return Colors.white;
      }
    case StacColors.yellow:
      return Colors.yellow;
    case StacColors.yellowAccent:
      return Colors.yellowAccent;
  }
}
