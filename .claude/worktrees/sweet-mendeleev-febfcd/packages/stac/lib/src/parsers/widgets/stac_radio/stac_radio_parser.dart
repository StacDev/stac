import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_side_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_visual_density_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_mouse_cursor_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_material_tap_target_size_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacRadioParser extends StacParser<StacRadio> {
  const StacRadioParser();

  @override
  StacRadio getModel(Map<String, dynamic> json) => StacRadio.fromJson(json);

  @override
  String get type => WidgetType.radio.name;

  @override
  Widget parse(BuildContext context, StacRadio model) {
    return _RadioWidget(model: model);
  }
}

class _RadioWidget extends StatefulWidget {
  const _RadioWidget({required this.model});

  final StacRadio model;

  @override
  State<_RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<_RadioWidget> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.model.radioType ?? StacRadioType.material) {
      case StacRadioType.cupertino:
        return _buildCupertinoRadio(context);
      case StacRadioType.adaptive:
        return _buildAdaptiveRadio(context);
      case StacRadioType.material:
        return _buildMaterialRadio(context);
    }
  }

  Widget _buildCupertinoRadio(BuildContext context) {
    return CupertinoRadio<dynamic>(
      value: widget.model.value,
      mouseCursor: widget.model.mouseCursor?.parse,
      toggleable: widget.model.toggleable ?? false,
      activeColor: widget.model.activeColor?.toColor(context),
      inactiveColor: widget.model.inactiveColor?.toColor(context),
      fillColor: widget.model.fillColor?.toColor(context),
      focusColor: widget.model.focusColor?.toColor(context),
      focusNode: _focusNode,
      autofocus: widget.model.autofocus ?? false,
      useCheckmarkStyle: widget.model.useCheckmarkStyle ?? false,
      enabled: widget.model.enabled,
    );
  }

  Widget _buildAdaptiveRadio(BuildContext context) {
    return Radio<dynamic>.adaptive(
      value: widget.model.value,
      mouseCursor: widget.model.mouseCursor?.parse,
      toggleable: widget.model.toggleable ?? false,
      activeColor: widget.model.activeColor?.toColor(context),
      fillColor: WidgetStateProperty.all(
        widget.model.fillColor?.toColor(context),
      ),
      focusColor: widget.model.focusColor?.toColor(context),
      hoverColor: widget.model.hoverColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        widget.model.overlayColor?.toColor(context),
      ),
      splashRadius: widget.model.splashRadius,
      materialTapTargetSize: widget.model.materialTapTargetSize?.parse,
      visualDensity: widget.model.visualDensity?.parse,
      focusNode: _focusNode,
      autofocus: widget.model.autofocus ?? false,
      useCupertinoCheckmarkStyle:
          widget.model.useCupertinoCheckmarkStyle ?? false,
      enabled: widget.model.enabled,
      backgroundColor: widget.model.backgroundColor != null
          ? WidgetStateProperty.all(
              widget.model.backgroundColor!.toColor(context),
            )
          : null,
      side: widget.model.side?.parse(context),
      innerRadius: widget.model.innerRadius != null
          ? WidgetStateProperty.all(widget.model.innerRadius)
          : null,
    );
  }

  Widget _buildMaterialRadio(BuildContext context) {
    return Radio<dynamic>(
      value: widget.model.value,
      mouseCursor: widget.model.mouseCursor?.parse,
      toggleable: widget.model.toggleable ?? false,
      activeColor: widget.model.activeColor?.toColor(context),
      fillColor: WidgetStateProperty.all(
        widget.model.fillColor?.toColor(context),
      ),
      focusColor: widget.model.focusColor?.toColor(context),
      hoverColor: widget.model.hoverColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        widget.model.overlayColor?.toColor(context),
      ),
      splashRadius: widget.model.splashRadius,
      materialTapTargetSize: widget.model.materialTapTargetSize?.parse,
      visualDensity: widget.model.visualDensity?.parse,
      focusNode: _focusNode,
      autofocus: widget.model.autofocus ?? false,
      enabled: widget.model.enabled,
      backgroundColor: widget.model.backgroundColor != null
          ? WidgetStateProperty.all(
              widget.model.backgroundColor!.toColor(context),
            )
          : null,
      side: widget.model.side?.parse(context),
      innerRadius: widget.model.innerRadius != null
          ? WidgetStateProperty.all(widget.model.innerRadius)
          : null,
    );
  }
}
