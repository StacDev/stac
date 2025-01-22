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
  // 3 digits shade - Ex: yellow200
  String color = colorString.substring(0, colorString.length - 3);
  String shade = colorString.substring(
    colorString.length - 3,
    colorString.length,
  );
  int? shadeInt = int.tryParse(shade);
  if (shadeInt == null) {
    // 2 digits shade - Ex: yellow50
    color = colorString.substring(0, colorString.length - 2);
    shade = colorString.substring(colorString.length - 2, colorString.length);
    shadeInt = int.tryParse(shade);
  }
  if (shadeInt == null) {
    // no shade - Ex: yellow
    color = colorString;
    shadeInt = 500;
  }

  MiraiColors miraiColor = MiraiColors.values.firstWhere(
    (e) => e.name == color,
    orElse: () => MiraiColors.transparent,
  );

  switch (miraiColor) {
    case MiraiColors.amber:
      return Colors.amber[shadeInt];
    case MiraiColors.amberAccent:
      return Colors.amberAccent[shadeInt];
    case MiraiColors.black:
      switch (shadeInt) {
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
      return Colors.blue[shadeInt];
    case MiraiColors.blueAccent:
      return Colors.blueAccent[shadeInt];
    case MiraiColors.blueGrey:
      return Colors.blueGrey[shadeInt];
    case MiraiColors.brown:
      return Colors.brown[shadeInt];
    case MiraiColors.cyan:
      return Colors.cyan[shadeInt];
    case MiraiColors.cyanAccent:
      return Colors.cyanAccent[shadeInt];
    case MiraiColors.deepOrange:
      return Colors.deepOrange[shadeInt];
    case MiraiColors.deepOrangeAccent:
      return Colors.deepOrangeAccent[shadeInt];
    case MiraiColors.deepPurple:
      return Colors.deepPurple[shadeInt];
    case MiraiColors.deepPurpleAccent:
      return Colors.deepPurpleAccent[shadeInt];
    case MiraiColors.green:
      return Colors.green[shadeInt];
    case MiraiColors.greenAccent:
      return Colors.greenAccent[shadeInt];
    case MiraiColors.grey:
      return Colors.grey[shadeInt];
    case MiraiColors.indigo:
      return Colors.indigo[shadeInt];
    case MiraiColors.indigoAccent:
      return Colors.indigoAccent[shadeInt];
    case MiraiColors.lightBlue:
      return Colors.lightBlue[shadeInt];
    case MiraiColors.lightBlueAccent:
      return Colors.lightBlueAccent[shadeInt];
    case MiraiColors.lightGreen:
      return Colors.lightGreen[shadeInt];
    case MiraiColors.lightGreenAccent:
      return Colors.lightGreenAccent[shadeInt];
    case MiraiColors.lime:
      return Colors.lime[shadeInt];
    case MiraiColors.limeAccent:
      return Colors.limeAccent[shadeInt];
    case MiraiColors.orange:
      return Colors.orange[shadeInt];
    case MiraiColors.orangeAccent:
      return Colors.orangeAccent[shadeInt];
    case MiraiColors.pink:
      return Colors.pink[shadeInt];
    case MiraiColors.pinkAccent:
      return Colors.pinkAccent[shadeInt];
    case MiraiColors.purple:
      return Colors.purple[shadeInt];
    case MiraiColors.purpleAccent:
      return Colors.purpleAccent[shadeInt];
    case MiraiColors.red:
      return Colors.red[shadeInt];
    case MiraiColors.redAccent:
      return Colors.redAccent[shadeInt];
    case MiraiColors.teal:
      return Colors.teal[shadeInt];
    case MiraiColors.tealAccent:
      return Colors.tealAccent[shadeInt];
    case MiraiColors.transparent:
      return Colors.transparent;
    case MiraiColors.white:
      switch (shadeInt) {
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
      return Colors.yellow[shadeInt];
    case MiraiColors.yellowAccent:
      return Colors.yellowAccent[shadeInt];
  }
}
