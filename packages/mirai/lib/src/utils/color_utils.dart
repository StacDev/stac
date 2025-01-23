import 'package:flutter/material.dart';
import 'package:mirai/src/utils/color_type.dart';

const String _hashtag = "#";
const String _empty = "";
const String _defaultOpacity = "ff";

extension ColorExt on String? {
  Color? toColor(BuildContext context) {
    if (this?.isEmpty ?? true) return null;

    final parsedColor = _parseThemeColor(this!, context);
    if (parsedColor != null) {
      return parsedColor;
    } else if (this!.startsWith(_hashtag)) {
      return _parseHexColor(this!);
    } else {
      return _parseNameColor(this!);
    }
  }
}

Color? _parseThemeColor(String color, BuildContext context) {
  // Ex: primary
  MiraiColorType colorType = MiraiColorType.values.firstWhere(
    (e) => e.name == color,
    orElse: () => MiraiColorType.none,
  );

  switch (colorType) {
    case MiraiColorType.primary:
      return Theme.of(context).colorScheme.primary;
    case MiraiColorType.onPrimary:
      return Theme.of(context).colorScheme.onPrimary;
    case MiraiColorType.primaryContainer:
      return Theme.of(context).colorScheme.primaryContainer;
    case MiraiColorType.onPrimaryContainer:
      return Theme.of(context).colorScheme.onPrimaryContainer;
    case MiraiColorType.secondary:
      return Theme.of(context).colorScheme.secondary;
    case MiraiColorType.onSecondary:
      return Theme.of(context).colorScheme.onSecondary;
    case MiraiColorType.secondaryContainer:
      return Theme.of(context).colorScheme.secondaryContainer;
    case MiraiColorType.onSecondaryContainer:
      return Theme.of(context).colorScheme.onSecondaryContainer;
    case MiraiColorType.tertiary:
      return Theme.of(context).colorScheme.tertiary;
    case MiraiColorType.onTertiary:
      return Theme.of(context).colorScheme.onTertiary;
    case MiraiColorType.tertiaryContainer:
      return Theme.of(context).colorScheme.tertiaryContainer;
    case MiraiColorType.onTertiaryContainer:
      return Theme.of(context).colorScheme.onTertiaryContainer;
    case MiraiColorType.error:
      return Theme.of(context).colorScheme.error;
    case MiraiColorType.onError:
      return Theme.of(context).colorScheme.onError;
    case MiraiColorType.errorContainer:
      return Theme.of(context).colorScheme.errorContainer;
    case MiraiColorType.onErrorContainer:
      return Theme.of(context).colorScheme.onErrorContainer;
    case MiraiColorType.background:
      return Theme.of(context).colorScheme.surface;
    case MiraiColorType.onBackground:
      return Theme.of(context).colorScheme.onSurface;
    case MiraiColorType.surface:
      return Theme.of(context).colorScheme.surface;
    case MiraiColorType.onSurface:
      return Theme.of(context).colorScheme.onSurface;
    case MiraiColorType.surfaceVariant:
      return Theme.of(context).colorScheme.surfaceContainerHighest;
    case MiraiColorType.onSurfaceVariant:
      return Theme.of(context).colorScheme.onSurfaceVariant;
    case MiraiColorType.outline:
      return Theme.of(context).colorScheme.outline;
    case MiraiColorType.outlineVariant:
      return Theme.of(context).colorScheme.outlineVariant;
    case MiraiColorType.shadow:
      return Theme.of(context).colorScheme.shadow;
    case MiraiColorType.scrim:
      return Theme.of(context).colorScheme.scrim;
    case MiraiColorType.inverseSurface:
      return Theme.of(context).colorScheme.inverseSurface;
    case MiraiColorType.onInverseSurface:
      return Theme.of(context).colorScheme.onInverseSurface;
    case MiraiColorType.inversePrimary:
      return Theme.of(context).colorScheme.inversePrimary;
    case MiraiColorType.surfaceTint:
      return Theme.of(context).colorScheme.surfaceTint;
    case MiraiColorType.scaffoldBackgroundColor:
      return Theme.of(context).scaffoldBackgroundColor;
    case MiraiColorType.none:
      return null;
  }
}

Color _parseHexColor(String color) {
  // Ex: #000000
  final buffer = StringBuffer();
  if (color.length == 6 || color.length == 7) buffer.write(_defaultOpacity);
  buffer.write(color.replaceFirst(_hashtag, _empty));
  int? intColor = int.tryParse(buffer.toString(), radix: 16);
  intColor = intColor ?? 0x00000000;
  return Color(intColor);
}

Color? _parseNameColor(String colorString) {
  String color;
  int? opacity;
  if (colorString.startsWith(MiraiColors.white.name) ||
      colorString.startsWith(MiraiColors.black.name)) {
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

  MiraiColors miraiColor = MiraiColors.values.firstWhere(
    (e) => e.name == color,
    orElse: () => MiraiColors.transparent,
  );

  switch (miraiColor) {
    case MiraiColors.amber:
      return Colors.amber;
    case MiraiColors.amberAccent:
      return Colors.amberAccent;
    case MiraiColors.black:
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
    case MiraiColors.blue:
      return Colors.blue;
    case MiraiColors.blueAccent:
      return Colors.blueAccent;
    case MiraiColors.blueGrey:
      return Colors.blueGrey;
    case MiraiColors.brown:
      return Colors.brown;
    case MiraiColors.cyan:
      return Colors.cyan;
    case MiraiColors.cyanAccent:
      return Colors.cyanAccent;
    case MiraiColors.deepOrange:
      return Colors.deepOrange;
    case MiraiColors.deepOrangeAccent:
      return Colors.deepOrangeAccent;
    case MiraiColors.deepPurple:
      return Colors.deepPurple;
    case MiraiColors.deepPurpleAccent:
      return Colors.deepPurpleAccent;
    case MiraiColors.green:
      return Colors.green;
    case MiraiColors.greenAccent:
      return Colors.greenAccent;
    case MiraiColors.grey:
      return Colors.grey;
    case MiraiColors.indigo:
      return Colors.indigo;
    case MiraiColors.indigoAccent:
      return Colors.indigoAccent;
    case MiraiColors.lightBlue:
      return Colors.lightBlue;
    case MiraiColors.lightBlueAccent:
      return Colors.lightBlueAccent;
    case MiraiColors.lightGreen:
      return Colors.lightGreen;
    case MiraiColors.lightGreenAccent:
      return Colors.lightGreenAccent;
    case MiraiColors.lime:
      return Colors.lime;
    case MiraiColors.limeAccent:
      return Colors.limeAccent;
    case MiraiColors.orange:
      return Colors.orange;
    case MiraiColors.orangeAccent:
      return Colors.orangeAccent;
    case MiraiColors.pink:
      return Colors.pink;
    case MiraiColors.pinkAccent:
      return Colors.pinkAccent;
    case MiraiColors.purple:
      return Colors.purple;
    case MiraiColors.purpleAccent:
      return Colors.purpleAccent;
    case MiraiColors.red:
      return Colors.red;
    case MiraiColors.redAccent:
      return Colors.redAccent;
    case MiraiColors.teal:
      return Colors.teal;
    case MiraiColors.tealAccent:
      return Colors.tealAccent;
    case MiraiColors.transparent:
      return Colors.transparent;
    case MiraiColors.white:
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
    case MiraiColors.yellow:
      return Colors.yellow;
    case MiraiColors.yellowAccent:
      return Colors.yellowAccent;
  }
}
