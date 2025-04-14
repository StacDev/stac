// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dropdown_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacDropdownMenu _$StacDropdownMenuFromJson(Map<String, dynamic> json) =>
    _StacDropdownMenu(
      enabled: json['enabled'] as bool? ?? true,
      width: (json['width'] as num?)?.toDouble(),
      menuHeight: (json['menuHeight'] as num?)?.toDouble(),
      leadingIcon: json['leadingIcon'] as Map<String, dynamic>?,
      trailingIcon: json['trailingIcon'] as Map<String, dynamic>?,
      label: json['label'] as Map<String, dynamic>?,
      hintText: json['hintText'] as String?,
      helperText: json['helperText'] as String?,
      errorText: json['errorText'] as String?,
      selectedTrailingIcon:
          json['selectedTrailingIcon'] as Map<String, dynamic>?,
      enableFilter: json['enableFilter'] as bool?,
      enableSearch: json['enableSearch'] as bool?,
      keyboardType:
          $enumDecodeNullable(_$StacTextInputTypeEnumMap, json['keyboardType']),
      textStyle: json['textStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['textStyle']),
      textAlign: $enumDecodeNullable(_$TextAlignEnumMap, json['textAlign']) ??
          TextAlign.start,
      inputDecorationTheme: json['inputDecorationTheme'] == null
          ? null
          : StacInputDecorationTheme.fromJson(
              json['inputDecorationTheme'] as Map<String, dynamic>),
      inputFormatters: (json['inputFormatters'] as List<dynamic>?)
              ?.map(
                  (e) => StacInputFormatter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      alignmentOffset: json['alignmentOffset'] == null
          ? null
          : StacOffset.fromJson(
              json['alignmentOffset'] as Map<String, dynamic>),
      expandedInsets: json['expandedInsets'] == null
          ? null
          : StacEdgeInsets.fromJson(json['expandedInsets']),
      requestFocusOnTap: json['requestFocusOnTap'] as bool?,
      initialSelection: json['initialSelection'],
      dropdownMenuEntries: (json['dropdownMenuEntries'] as List<dynamic>?)
              ?.map((e) =>
                  StacDropdownMenuEntry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      closeBehavior: $enumDecodeNullable(
              _$DropdownMenuCloseBehaviorEnumMap, json['closeBehavior']) ??
          DropdownMenuCloseBehavior.all,
    );

Map<String, dynamic> _$StacDropdownMenuToJson(_StacDropdownMenu instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'width': instance.width,
      'menuHeight': instance.menuHeight,
      'leadingIcon': instance.leadingIcon,
      'trailingIcon': instance.trailingIcon,
      'label': instance.label,
      'hintText': instance.hintText,
      'helperText': instance.helperText,
      'errorText': instance.errorText,
      'selectedTrailingIcon': instance.selectedTrailingIcon,
      'enableFilter': instance.enableFilter,
      'enableSearch': instance.enableSearch,
      'keyboardType': _$StacTextInputTypeEnumMap[instance.keyboardType],
      'textStyle': instance.textStyle,
      'textAlign': _$TextAlignEnumMap[instance.textAlign]!,
      'inputDecorationTheme': instance.inputDecorationTheme,
      'inputFormatters': instance.inputFormatters,
      'alignmentOffset': instance.alignmentOffset,
      'expandedInsets': instance.expandedInsets,
      'requestFocusOnTap': instance.requestFocusOnTap,
      'initialSelection': instance.initialSelection,
      'dropdownMenuEntries': instance.dropdownMenuEntries,
      'closeBehavior':
          _$DropdownMenuCloseBehaviorEnumMap[instance.closeBehavior],
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

const _$TextAlignEnumMap = {
  TextAlign.left: 'left',
  TextAlign.right: 'right',
  TextAlign.center: 'center',
  TextAlign.justify: 'justify',
  TextAlign.start: 'start',
  TextAlign.end: 'end',
};

const _$DropdownMenuCloseBehaviorEnumMap = {
  DropdownMenuCloseBehavior.all: 'all',
  DropdownMenuCloseBehavior.self: 'self',
  DropdownMenuCloseBehavior.none: 'none',
};
