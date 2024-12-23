import 'package:flutter/material.dart';
import 'package:mirai/src/utils/color_type.dart';

extension ColorExt on String? {
  Color? toColor(BuildContext context) {
    if (this?.isEmpty ?? true) return null;

    switch (colorType) {
      case ColorType.primary:
        return Theme.of(context).colorScheme.primary;
      case ColorType.onPrimary:
        return Theme.of(context).colorScheme.onPrimary;
      case ColorType.primaryContainer:
        return Theme.of(context).colorScheme.primaryContainer;
      case ColorType.onPrimaryContainer:
        return Theme.of(context).colorScheme.onPrimaryContainer;
      case ColorType.secondary:
        return Theme.of(context).colorScheme.secondary;
      case ColorType.onSecondary:
        return Theme.of(context).colorScheme.onSecondary;
      case ColorType.secondaryContainer:
        return Theme.of(context).colorScheme.secondaryContainer;
      case ColorType.onSecondaryContainer:
        return Theme.of(context).colorScheme.onSecondaryContainer;
      case ColorType.tertiary:
        return Theme.of(context).colorScheme.tertiary;
      case ColorType.onTertiary:
        return Theme.of(context).colorScheme.onTertiary;
      case ColorType.tertiaryContainer:
        return Theme.of(context).colorScheme.tertiaryContainer;
      case ColorType.onTertiaryContainer:
        return Theme.of(context).colorScheme.onTertiaryContainer;
      case ColorType.error:
        return Theme.of(context).colorScheme.error;
      case ColorType.onError:
        return Theme.of(context).colorScheme.onError;
      case ColorType.errorContainer:
        return Theme.of(context).colorScheme.errorContainer;
      case ColorType.onErrorContainer:
        return Theme.of(context).colorScheme.onErrorContainer;
      case ColorType.background:
        return Theme.of(context).colorScheme.surface;
      case ColorType.onBackground:
        return Theme.of(context).colorScheme.onSurface;
      case ColorType.surface:
        return Theme.of(context).colorScheme.surface;
      case ColorType.onSurface:
        return Theme.of(context).colorScheme.onSurface;
      case ColorType.surfaceVariant:
        return Theme.of(context).colorScheme.surfaceContainerHighest;
      case ColorType.onSurfaceVariant:
        return Theme.of(context).colorScheme.onSurfaceVariant;
      case ColorType.outline:
        return Theme.of(context).colorScheme.outline;
      case ColorType.outlineVariant:
        return Theme.of(context).colorScheme.outlineVariant;
      case ColorType.shadow:
        return Theme.of(context).colorScheme.shadow;
      case ColorType.scrim:
        return Theme.of(context).colorScheme.scrim;
      case ColorType.inverseSurface:
        return Theme.of(context).colorScheme.inverseSurface;
      case ColorType.onInverseSurface:
        return Theme.of(context).colorScheme.onInverseSurface;
      case ColorType.inversePrimary:
        return Theme.of(context).colorScheme.inversePrimary;
      case ColorType.surfaceTint:
        return Theme.of(context).colorScheme.surfaceTint;
      case ColorType.scaffoldBackgroundColor:
        return Theme.of(context).scaffoldBackgroundColor;
      case ColorType.none:
        final buffer = StringBuffer();
        if (this!.length == 6 || this!.length == 7) buffer.write('ff');
        buffer.write(this!.replaceFirst('#', ''));
        int? intColor = int.tryParse(buffer.toString(), radix: 16);
        intColor = intColor ?? 0x00000000;
        return Color(intColor);
    }
  }

  ColorType get colorType => ColorType.values.firstWhere(
        (e) => e.name == this,
        orElse: () => ColorType.none,
      );
}
