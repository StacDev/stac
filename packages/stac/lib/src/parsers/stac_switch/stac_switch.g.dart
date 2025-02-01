// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_switch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacSwitchImpl _$$StacSwitchImplFromJson(Map<String, dynamic> json) =>
    _$StacSwitchImpl(
      switchType:
          $enumDecodeNullable(_$StacSwitchTypeEnumMap, json['switchType']) ??
              StacSwitchType.material,
      value: json['value'] ?? false,
      onChanged: json['onChanged'] as Map<String, dynamic>?,
      autofocus: json['autofocus'] as bool? ?? false,
      activeColor: json['activeColor'] as String?,
      activeTrackColor: json['activeTrackColor'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      inactiveThumbColor: json['inactiveThumbColor'] as String?,
      inactiveTrackColor: json['inactiveTrackColor'] as String?,
      onLabelColor: json['onLabelColor'] as String?,
      offLabelColor: json['offLabelColor'] as String?,
      splashRadius: (json['splashRadius'] as num?)?.toDouble(),
      dragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
      overlayColor: json['overlayColor'] == null
          ? null
          : StacMaterialColor.fromJson(
              json['overlayColor'] as Map<String, dynamic>),
      thumbColor: json['thumbColor'] == null
          ? null
          : StacMaterialColor.fromJson(
              json['thumbColor'] as Map<String, dynamic>),
      trackColor: json['trackColor'] == null
          ? null
          : StacMaterialColor.fromJson(
              json['trackColor'] as Map<String, dynamic>),
      materialTapTargetSize: $enumDecodeNullable(
          _$MaterialTapTargetSizeEnumMap, json['materialTapTargetSize']),
      trackOutlineColor: json['trackOutlineColor'] == null
          ? null
          : StacMaterialColor.fromJson(
              json['trackOutlineColor'] as Map<String, dynamic>),
      trackOutlineWidth: (json['trackOutlineWidth'] as num?)?.toDouble(),
      thumbIcon: json['thumbIcon'] as Map<String, dynamic>?,
      inactiveThumbImage: json['inactiveThumbImage'] as String?,
      activeThumbImage: json['activeThumbImage'] as String?,
      applyTheme: json['applyTheme'] as bool?,
      applyCupertinoTheme: json['applyCupertinoTheme'] as bool?,
    );

Map<String, dynamic> _$$StacSwitchImplToJson(_$StacSwitchImpl instance) =>
    <String, dynamic>{
      'switchType': _$StacSwitchTypeEnumMap[instance.switchType]!,
      'value': instance.value,
      'onChanged': instance.onChanged,
      'autofocus': instance.autofocus,
      'activeColor': instance.activeColor,
      'activeTrackColor': instance.activeTrackColor,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'inactiveThumbColor': instance.inactiveThumbColor,
      'inactiveTrackColor': instance.inactiveTrackColor,
      'onLabelColor': instance.onLabelColor,
      'offLabelColor': instance.offLabelColor,
      'splashRadius': instance.splashRadius,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
      'overlayColor': instance.overlayColor,
      'thumbColor': instance.thumbColor,
      'trackColor': instance.trackColor,
      'materialTapTargetSize':
          _$MaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
      'trackOutlineColor': instance.trackOutlineColor,
      'trackOutlineWidth': instance.trackOutlineWidth,
      'thumbIcon': instance.thumbIcon,
      'inactiveThumbImage': instance.inactiveThumbImage,
      'activeThumbImage': instance.activeThumbImage,
      'applyTheme': instance.applyTheme,
      'applyCupertinoTheme': instance.applyCupertinoTheme,
    };

const _$StacSwitchTypeEnumMap = {
  StacSwitchType.adaptive: 'adaptive',
  StacSwitchType.cupertino: 'cupertino',
  StacSwitchType.material: 'material',
};

const _$DragStartBehaviorEnumMap = {
  DragStartBehavior.down: 'down',
  DragStartBehavior.start: 'start',
};

const _$MaterialTapTargetSizeEnumMap = {
  MaterialTapTargetSize.padded: 'padded',
  MaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
