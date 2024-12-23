import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/parsers/mirai_material_color/mirai_material_color.dart';
import 'package:mirai/src/utils/action_type.dart';

class MiraiSwitchParser extends MiraiParser<MiraiSwitch> {
  const MiraiSwitchParser();

  /// The reason this type does not come from [ActionType] is because any value cannot be named as "switch".
  @override
  String get type => "switch";

  @override
  MiraiSwitch getModel(Map<String, dynamic> json) => MiraiSwitch.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiSwitch model) {
    return _SwitchWidget(model: model);
  }
}

class _SwitchWidget extends StatefulWidget {
  const _SwitchWidget({required this.model});

  final MiraiSwitch model;

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
    final MiraiSwitch model = widget.model;

    switch (model.switchType) {
      case MiraiSwitchType.cupertino:
        return _buildCupertinoSwitch(context, model);
      case MiraiSwitchType.adaptive:
        return _buildAdaptiveSwitch(context, model);
      case MiraiSwitchType.material:
        return _buildMaterialSwitch(context, model);
    }
  }

  /// Change the value of the switch as the user toggles it.
  void _onChanged(bool value) {
    isSelected = value;
    if (widget.model.onChanged != null) {
      Mirai.onCallFromJson(widget.model.onChanged, context);
    }
    setState(() {});
  }

  Icon? thumbIconWidget(BuildContext context, Map<String, dynamic>? thumbIcon) {
    if (thumbIcon == null) return null;

    final Widget? widget = Mirai.fromJson(thumbIcon, context);
    if (widget != null && widget is Icon) {
      return widget;
    }

    return null;
  }

  Widget _buildCupertinoSwitch(BuildContext context, MiraiSwitch model) {
    return CupertinoSwitch(
      value: isSelected,
      onChanged: _onChanged,
      activeTrackColor: model.activeColor.toColor(context),
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

  Widget _buildAdaptiveSwitch(BuildContext context, MiraiSwitch model) {
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
      trackOutlineWidth: WidgetStateProperty.all(model.trackOutlineWidth),
      thumbIcon: WidgetStateProperty.all(
        Mirai.fromJson(model.thumbIcon, context) as Icon?,
      ),
      dragStartBehavior: model.dragStartBehavior,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.parse(context),
      ),
      splashRadius: model.splashRadius,
      autofocus: model.autofocus,
      applyCupertinoTheme: model.applyCupertinoTheme,
    );
  }

  Widget _buildMaterialSwitch(BuildContext context, MiraiSwitch model) {
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
      trackOutlineWidth: WidgetStateProperty.all(model.trackOutlineWidth),
      thumbIcon: WidgetStateProperty.all(
        Mirai.fromJson(model.thumbIcon, context) as Icon?,
      ),
      materialTapTargetSize: model.materialTapTargetSize,
      dragStartBehavior: model.dragStartBehavior,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.parse(context),
      ),
      splashRadius: model.splashRadius,
      autofocus: model.autofocus,
    );
  }
}
