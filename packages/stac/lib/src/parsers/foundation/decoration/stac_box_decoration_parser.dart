import 'package:material_ui/material_ui.dart';
import 'package:stac/stac.dart';

extension StacBoxDecorationParser on StacBoxDecoration {
  /// Builds the [BoxDecoration]. [fallbackColor] fills it when the decoration
  /// sets no color of its own.
  BoxDecoration? parse(BuildContext context, {Color? fallbackColor}) {
    return BoxDecoration(
      color: color?.toColor(context) ?? fallbackColor,
      image: image?.parse, // Todo
      border: border?.parse(context),
      borderRadius: borderRadius?.parse,
      boxShadow: boxShadow?.map((e) => e.parse(context)).toList() ?? [],
      gradient: gradient?.parse(context),
      backgroundBlendMode: backgroundBlendMode?.parse,
      shape: shape?.parse ?? BoxShape.rectangle,
    );
  }
}
