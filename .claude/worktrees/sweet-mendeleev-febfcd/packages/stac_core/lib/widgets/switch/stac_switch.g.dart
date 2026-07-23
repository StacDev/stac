// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_switch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSwitch _$StacSwitchFromJson(Map<String, dynamic> json) => StacSwitch(
  switchType: $enumDecodeNullable(_$StacSwitchTypeEnumMap, json['switchType']),
  value: json['value'] as bool?,
  onChanged: json['onChanged'] == null
      ? null
      : StacAction.fromJson(json['onChanged'] as Map<String, dynamic>),
  autofocus: json['autofocus'] as bool?,
  activeThumbColor: json['activeThumbColor'] as String?,
  activeTrackColor: json['activeTrackColor'] as String?,
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  inactiveThumbColor: json['inactiveThumbColor'] as String?,
  inactiveTrackColor: json['inactiveTrackColor'] as String?,
  onLabelColor: json['onLabelColor'] as String?,
  offLabelColor: json['offLabelColor'] as String?,
  splashRadius: const DoubleConverter().fromJson(json['splashRadius']),
  dragStartBehavior: $enumDecodeNullable(
    _$StacDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  overlayColor: json['overlayColor'] as String?,
  thumbColor: json['thumbColor'] as String?,
  trackColor: json['trackColor'] as String?,
  materialTapTargetSize: $enumDecodeNullable(
    _$StacMaterialTapTargetSizeEnumMap,
    json['materialTapTargetSize'],
  ),
  trackOutlineColor: json['trackOutlineColor'] as String?,
  trackOutlineWidth: const DoubleConverter().fromJson(
    json['trackOutlineWidth'],
  ),
  thumbIcon: json['thumbIcon'] == null
      ? null
      : StacWidget.fromJson(json['thumbIcon'] as Map<String, dynamic>),
  inactiveThumbImage: json['inactiveThumbImage'] as String?,
  activeThumbImage: json['activeThumbImage'] as String?,
  applyTheme: json['applyTheme'] as bool?,
  applyCupertinoTheme: json['applyCupertinoTheme'] as bool?,
);

Map<String, dynamic> _$StacSwitchToJson(StacSwitch instance) =>
    <String, dynamic>{
      'switchType': _$StacSwitchTypeEnumMap[instance.switchType],
      'value': instance.value,
      'onChanged': instance.onChanged?.toJson(),
      'autofocus': instance.autofocus,
      'activeThumbColor': instance.activeThumbColor,
      'activeTrackColor': instance.activeTrackColor,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'inactiveThumbColor': instance.inactiveThumbColor,
      'inactiveTrackColor': instance.inactiveTrackColor,
      'onLabelColor': instance.onLabelColor,
      'offLabelColor': instance.offLabelColor,
      'splashRadius': const DoubleConverter().toJson(instance.splashRadius),
      'dragStartBehavior':
          _$StacDragStartBehaviorEnumMap[instance.dragStartBehavior],
      'overlayColor': instance.overlayColor,
      'thumbColor': instance.thumbColor,
      'trackColor': instance.trackColor,
      'materialTapTargetSize':
          _$StacMaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
      'trackOutlineColor': instance.trackOutlineColor,
      'trackOutlineWidth': const DoubleConverter().toJson(
        instance.trackOutlineWidth,
      ),
      'thumbIcon': instance.thumbIcon?.toJson(),
      'inactiveThumbImage': instance.inactiveThumbImage,
      'activeThumbImage': instance.activeThumbImage,
      'applyTheme': instance.applyTheme,
      'applyCupertinoTheme': instance.applyCupertinoTheme,
      'type': instance.type,
    };

const _$StacSwitchTypeEnumMap = {
  StacSwitchType.adaptive: 'adaptive',
  StacSwitchType.cupertino: 'cupertino',
  StacSwitchType.material: 'material',
};

const _$StacDragStartBehaviorEnumMap = {
  StacDragStartBehavior.down: 'down',
  StacDragStartBehavior.start: 'start',
};

const _$StacMaterialTapTargetSizeEnumMap = {
  StacMaterialTapTargetSize.padded: 'padded',
  StacMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
