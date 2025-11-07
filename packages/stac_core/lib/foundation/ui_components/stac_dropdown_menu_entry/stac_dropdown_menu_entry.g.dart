// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dropdown_menu_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDropdownMenuEntry _$StacDropdownMenuEntryFromJson(
  Map<String, dynamic> json,
) => StacDropdownMenuEntry(
  value: json['value'],
  label: json['label'] as String? ?? '',
  labelWidget: json['labelWidget'] == null
      ? null
      : StacWidget.fromJson(json['labelWidget'] as Map<String, dynamic>),
  leadingIcon: json['leadingIcon'] == null
      ? null
      : StacWidget.fromJson(json['leadingIcon'] as Map<String, dynamic>),
  trailingIcon: json['trailingIcon'] == null
      ? null
      : StacWidget.fromJson(json['trailingIcon'] as Map<String, dynamic>),
  enabled: json['enabled'] as bool?,
  style: json['style'] == null
      ? null
      : StacButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacDropdownMenuEntryToJson(
  StacDropdownMenuEntry instance,
) => <String, dynamic>{
  'value': instance.value,
  'label': instance.label,
  'labelWidget': instance.labelWidget?.toJson(),
  'leadingIcon': instance.leadingIcon?.toJson(),
  'trailingIcon': instance.trailingIcon?.toJson(),
  'enabled': instance.enabled,
  'style': instance.style?.toJson(),
};
