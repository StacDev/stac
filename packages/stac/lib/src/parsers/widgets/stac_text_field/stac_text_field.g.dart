// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacTextField _$StacTextFieldFromJson(Map<String, dynamic> json) =>
    _StacTextField(
      decoration: json['decoration'] == null
          ? null
          : StacInputDecoration.fromJson(
              json['decoration'] as Map<String, dynamic>),
      initialValue: json['initialValue'] as String? ?? '',
      keyboardType:
          $enumDecodeNullable(_$StacTextInputTypeEnumMap, json['keyboardType']),
      textInputAction: $enumDecodeNullable(
          _$TextInputActionEnumMap, json['textInputAction']),
      textCapitalization: $enumDecodeNullable(
              _$TextCapitalizationEnumMap, json['textCapitalization']) ??
          TextCapitalization.none,
      style:
          json['style'] == null ? null : StacTextStyle.fromJson(json['style']),
      textAlign: $enumDecodeNullable(_$TextAlignEnumMap, json['textAlign']) ??
          TextAlign.start,
      textAlignVertical: $enumDecodeNullable(
          _$StacTextAlignVerticalEnumMap, json['textAlignVertical']),
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']),
      readOnly: json['readOnly'] as bool? ?? false,
      showCursor: json['showCursor'] as bool?,
      expands: json['expands'] ?? false,
      autofocus: json['autofocus'] as bool? ?? false,
      obscuringCharacter: json['obscuringCharacter'] as String? ?? '•',
      maxLines: (json['maxLines'] as num?)?.toInt(),
      minLines: (json['minLines'] as num?)?.toInt(),
      maxLength: (json['maxLength'] as num?)?.toInt(),
      obscureText: json['obscureText'] as bool? ?? false,
      enableSuggestions: json['enableSuggestions'] as bool? ?? true,
      enabled: json['enabled'] as bool?,
      cursorWidth: json['cursorWidth'] == null
          ? const StacDouble(2)
          : StacDouble.fromJson(json['cursorWidth']),
      cursorHeight: json['cursorHeight'] == null
          ? null
          : StacDouble.fromJson(json['cursorHeight']),
      cursorColor: json['cursorColor'] as String?,
      hintText: json['hintText'] as String?,
      inputFormatters: (json['inputFormatters'] as List<dynamic>?)
              ?.map(
                  (e) => StacInputFormatter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StacTextFieldToJson(_StacTextField instance) =>
    <String, dynamic>{
      'decoration': instance.decoration,
      'initialValue': instance.initialValue,
      'keyboardType': _$StacTextInputTypeEnumMap[instance.keyboardType],
      'textInputAction': _$TextInputActionEnumMap[instance.textInputAction],
      'textCapitalization':
          _$TextCapitalizationEnumMap[instance.textCapitalization]!,
      'style': instance.style,
      'textAlign': _$TextAlignEnumMap[instance.textAlign]!,
      'textAlignVertical':
          _$StacTextAlignVerticalEnumMap[instance.textAlignVertical],
      'textDirection': _$TextDirectionEnumMap[instance.textDirection],
      'readOnly': instance.readOnly,
      'showCursor': instance.showCursor,
      'expands': instance.expands,
      'autofocus': instance.autofocus,
      'obscuringCharacter': instance.obscuringCharacter,
      'maxLines': instance.maxLines,
      'minLines': instance.minLines,
      'maxLength': instance.maxLength,
      'obscureText': instance.obscureText,
      'enableSuggestions': instance.enableSuggestions,
      'enabled': instance.enabled,
      'cursorWidth': instance.cursorWidth,
      'cursorHeight': instance.cursorHeight,
      'cursorColor': instance.cursorColor,
      'hintText': instance.hintText,
      'inputFormatters': instance.inputFormatters,
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

const _$TextInputActionEnumMap = {
  TextInputAction.none: 'none',
  TextInputAction.unspecified: 'unspecified',
  TextInputAction.done: 'done',
  TextInputAction.go: 'go',
  TextInputAction.search: 'search',
  TextInputAction.send: 'send',
  TextInputAction.next: 'next',
  TextInputAction.previous: 'previous',
  TextInputAction.continueAction: 'continueAction',
  TextInputAction.join: 'join',
  TextInputAction.route: 'route',
  TextInputAction.emergencyCall: 'emergencyCall',
  TextInputAction.newline: 'newline',
};

const _$TextCapitalizationEnumMap = {
  TextCapitalization.words: 'words',
  TextCapitalization.sentences: 'sentences',
  TextCapitalization.characters: 'characters',
  TextCapitalization.none: 'none',
};

const _$TextAlignEnumMap = {
  TextAlign.left: 'left',
  TextAlign.right: 'right',
  TextAlign.center: 'center',
  TextAlign.justify: 'justify',
  TextAlign.start: 'start',
  TextAlign.end: 'end',
};

const _$StacTextAlignVerticalEnumMap = {
  StacTextAlignVertical.top: 'top',
  StacTextAlignVertical.center: 'center',
  StacTextAlignVertical.bottom: 'bottom',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};
