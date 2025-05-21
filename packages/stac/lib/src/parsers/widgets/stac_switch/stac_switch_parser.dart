import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/theme/stac_material_color/stac_material_color.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_switch.dart';

class StacSwitchParser extends StacParser<StacSwitch> {
  const StacSwitchParser();

  /// The reason this type does not come from [WidgetType] is because any value cannot be named as "switch".
  @override
  String get type => "switch";

  @override
  StacSwitch getModel(Map<String, dynamic> json) => StacSwitch.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSwitch model) {
    return _SwitchWidget(model: model);
  }
}

class _SwitchWidget extends StatefulWidget {
  const _SwitchWidget({required this.model});

  final StacSwitch model;

  @override
  State<_SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<_SwitchWidget> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    isSelected = widget.model.value ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final StacSwitch model = widget.model;

    switch (model.switchType) {
      case StacSwitchType.cupertino:
        return _buildCupertinoSwitch(context, model);
      case StacSwitchType.adaptive:
        return _buildAdaptiveSwitch(context, model);
      case StacSwitchType.material:
        return _buildMaterialSwitch(context, model);
    }
  }

  /// Change the value of the switch as the user toggles it.
  void _onChanged(bool value) {
    isSelected = value;
    if (widget.model.onChanged != null) {
      Stac.onCallFromJson(widget.model.onChanged, context);
    }
    setState(() {});
  }

  Icon? thumbIconWidget(BuildContext context, Map<String, dynamic>? thumbIcon) {
    if (thumbIcon == null) return null;

    final Widget? widget = Stac.fromJson(thumbIcon, context);
    if (widget != null && widget is Icon) {
      return widget;
    }

    return null;
  }

  Widget _buildCupertinoSwitch(BuildContext context, StacSwitch model) {
    return CupertinoSwitch(
      value: isSelected,
      onChanged: _onChanged,
      activeTrackColor: model.activeColor?.toColor(context),
      inactiveTrackColor: model.trackColor?.parse(context),
      thumbColor: model.thumbColor?.parse(context),
      applyTheme: model.applyTheme,
      focusColor: model.focusColor?.toColor(context),
      onLabelColor: model.onLabelColor?.toColor(context),
      offLabelColor: model.offLabelColor?.toColor(context),
      autofocus: model.autofocus,
      dragStartBehavior: model.dragStartBehavior,
    );
  }

  Widget _buildAdaptiveSwitch(BuildContext context, StacSwitch model) {
    return Switch.adaptive(
      value: isSelected,
      onChanged: _onChanged,
      activeColor: model.activeColor?.toColor(context),
      activeTrackColor: model.activeTrackColor?.toColor(context),
      inactiveThumbColor: model.inactiveThumbColor?.toColor(context),
      inactiveTrackColor: model.inactiveTrackColor?.toColor(context),
      activeThumbImage: model.activeThumbImage != null
          ? NetworkImage(model.activeThumbImage!)
          : null,
      inactiveThumbImage: model.inactiveThumbImage != null
          ? NetworkImage(model.inactiveThumbImage!)
          : null,
      materialTapTargetSize: model.materialTapTargetSize,
      thumbColor: WidgetStateProperty.all(model.thumbColor?.parse(context)),
      trackColor: WidgetStateProperty.all(model.trackColor?.parse(context)),
      trackOutlineColor: WidgetStateProperty.all(
        model.trackOutlineColor?.parse(context),
      ),
      trackOutlineWidth:
          WidgetStateProperty.all(model.trackOutlineWidth?.parse),
      thumbIcon: WidgetStateProperty.all(
        Stac.fromJson(model.thumbIcon, context) as Icon?,
      ),
      dragStartBehavior: model.dragStartBehavior,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.parse(context),
      ),
      splashRadius: model.splashRadius?.parse,
      autofocus: model.autofocus,
      applyCupertinoTheme: model.applyCupertinoTheme,
    );
  }

  Widget _buildMaterialSwitch(BuildContext context, StacSwitch model) {
    return Switch(
      value: isSelected,
      onChanged: _onChanged,
      activeColor: model.activeColor.toColor(context),
      activeTrackColor: model.activeTrackColor.toColor(context),
      inactiveThumbColor: model.inactiveThumbColor.toColor(context),
      inactiveTrackColor: model.inactiveTrackColor.toColor(context),
      activeThumbImage: model.activeThumbImage != null
          ? NetworkImage(model.activeThumbImage!)
          : null,
      inactiveThumbImage: model.inactiveThumbImage != null
          ? NetworkImage(model.inactiveThumbImage!)
          : null,
      thumbColor: WidgetStateProperty.all(model.thumbColor?.parse(context)),
      trackColor: WidgetStateProperty.all(model.trackColor?.parse(context)),
      trackOutlineColor: WidgetStateProperty.all(
        model.trackOutlineColor?.parse(context),
      ),
      trackOutlineWidth:
          WidgetStateProperty.all(model.trackOutlineWidth?.parse),
      thumbIcon: WidgetStateProperty.all(
        Stac.fromJson(model.thumbIcon, context) as Icon?,
      ),
      materialTapTargetSize: model.materialTapTargetSize,
      dragStartBehavior: model.dragStartBehavior,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.parse(context),
      ),
      splashRadius: model.splashRadius?.parse,
      autofocus: model.autofocus,
    );
  }
}
