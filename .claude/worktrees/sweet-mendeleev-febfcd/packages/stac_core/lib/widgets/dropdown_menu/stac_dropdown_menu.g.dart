// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dropdown_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDropdownMenu _$StacDropdownMenuFromJson(
  Map<String, dynamic> json,
) => StacDropdownMenu(
  enabled: json['enabled'] as bool?,
  width: const DoubleConverter().fromJson(json['width']),
  menuHeight: const DoubleConverter().fromJson(json['menuHeight']),
  leadingIcon: json['leadingIcon'] == null
      ? null
      : StacWidget.fromJson(json['leadingIcon'] as Map<String, dynamic>),
  trailingIcon: json['trailingIcon'] == null
      ? null
      : StacWidget.fromJson(json['trailingIcon'] as Map<String, dynamic>),
  label: json['label'] == null
      ? null
      : StacWidget.fromJson(json['label'] as Map<String, dynamic>),
  hintText: json['hintText'] as String?,
  helperText: json['helperText'] as String?,
  errorText: json['errorText'] as String?,
  selectedTrailingIcon: json['selectedTrailingIcon'] == null
      ? null
      : StacWidget.fromJson(
          json['selectedTrailingIcon'] as Map<String, dynamic>,
        ),
  enableFilter: json['enableFilter'] as bool?,
  enableSearch: json['enableSearch'] as bool?,
  keyboardType: $enumDecodeNullable(
    _$StacTextInputTypeEnumMap,
    json['keyboardType'],
  ),
  textStyle: json['textStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['textStyle']),
  textAlign: $enumDecodeNullable(_$StacTextAlignEnumMap, json['textAlign']),
  inputDecorationTheme: json['inputDecorationTheme'] == null
      ? null
      : StacInputDecorationTheme.fromJson(
          json['inputDecorationTheme'] as Map<String, dynamic>,
        ),
  inputFormatters: (json['inputFormatters'] as List<dynamic>?)
      ?.map((e) => StacInputFormatter.fromJson(e as Map<String, dynamic>))
      .toList(),
  alignmentOffset: json['alignmentOffset'] == null
      ? null
      : StacOffset.fromJson(json['alignmentOffset'] as Map<String, dynamic>),
  expandedInsets: json['expandedInsets'] == null
      ? null
      : StacEdgeInsets.fromJson(json['expandedInsets']),
  requestFocusOnTap: json['requestFocusOnTap'] as bool?,
  initialSelection: json['initialSelection'],
  dropdownMenuEntries: (json['dropdownMenuEntries'] as List<dynamic>?)
      ?.map((e) => StacDropdownMenuEntry.fromJson(e as Map<String, dynamic>))
      .toList(),
  closeBehavior: $enumDecodeNullable(
    _$StacDropdownMenuCloseBehaviorEnumMap,
    json['closeBehavior'],
  ),
);

Map<String, dynamic> _$StacDropdownMenuToJson(
  StacDropdownMenu instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'width': const DoubleConverter().toJson(instance.width),
  'menuHeight': const DoubleConverter().toJson(instance.menuHeight),
  'leadingIcon': instance.leadingIcon?.toJson(),
  'trailingIcon': instance.trailingIcon?.toJson(),
  'label': instance.label?.toJson(),
  'hintText': instance.hintText,
  'helperText': instance.helperText,
  'errorText': instance.errorText,
  'selectedTrailingIcon': instance.selectedTrailingIcon?.toJson(),
  'enableFilter': instance.enableFilter,
  'enableSearch': instance.enableSearch,
  'keyboardType': _$StacTextInputTypeEnumMap[instance.keyboardType],
  'textStyle': instance.textStyle?.toJson(),
  'textAlign': _$StacTextAlignEnumMap[instance.textAlign],
  'inputDecorationTheme': instance.inputDecorationTheme?.toJson(),
  'inputFormatters': instance.inputFormatters?.map((e) => e.toJson()).toList(),
  'alignmentOffset': instance.alignmentOffset?.toJson(),
  'expandedInsets': instance.expandedInsets?.toJson(),
  'requestFocusOnTap': instance.requestFocusOnTap,
  'initialSelection': instance.initialSelection,
  'dropdownMenuEntries': instance.dropdownMenuEntries
      ?.map((e) => e.toJson())
      .toList(),
  'closeBehavior':
      _$StacDropdownMenuCloseBehaviorEnumMap[instance.closeBehavior],
  'type': instance.type,
};

const _$StacTextInputTypeEnumMap = {
  StacTextInputType.text: 'text',
  StacTextInputType.multiline: 'multiline',
  StacTextInputType.number: 'number',
  StacTextInputType.phone: 'phone',
  StacTextInputType.datetime: 'datetime',
  StacTextInputType.emailAddress: 'emailAddress',
  StacTextInputType.url: 'url',
  StacTextInputType.visiblePassword: 'visiblePassword',
  StacTextInputType.name: 'name',
  StacTextInputType.streetAddress: 'streetAddress',
  StacTextInputType.none: 'none',
};

const _$StacTextAlignEnumMap = {
  StacTextAlign.left: 'left',
  StacTextAlign.right: 'right',
  StacTextAlign.center: 'center',
  StacTextAlign.justify: 'justify',
  StacTextAlign.start: 'start',
  StacTextAlign.end: 'end',
};

const _$StacDropdownMenuCloseBehaviorEnumMap = {
  StacDropdownMenuCloseBehavior.all: 'all',
  StacDropdownMenuCloseBehavior.self: 'self',
  StacDropdownMenuCloseBehavior.none: 'none',
};
