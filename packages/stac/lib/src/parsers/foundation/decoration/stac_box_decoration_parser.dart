import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_core/foundation/decoration/stac_box_decoration/stac_box_decoration.dart';

extension StacBoxDecorationParser on StacBoxDecoration {
  BoxDecoration? parse(BuildContext context) {
    return BoxDecoration(
      color: color?.toColor(context),
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
