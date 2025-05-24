import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/widgets/frosted_box/frosted_box.dart';
import 'package:stac/stac.dart';

class FrostedBoxParser extends StacParser<FrostedBox> {
  const FrostedBoxParser();

  @override
  String get type => 'frostedBox';

  @override
  FrostedBox getModel(Map<String, dynamic> json) =>
      FrostedBox.fromJson(json);

  @override
  Widget parse(BuildContext context, FrostedBox model) {
    return SizedBox(
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: model.blur, sigmaY: model.blur),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: model.color.toColor(context)?.withAlpha(model.alpha)
            ),
          ),
        ),
      ),
    );
  }
}