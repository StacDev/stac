// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_text_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiTextFieldImpl _$$MiraiTextFieldImplFromJson(Map<String, dynamic> json) =>
    _$MiraiTextFieldImpl(
      decoration: json['decoration'] == null
          ? null
          : MiraiInputDecoration.fromJson(
              json['decoration'] as Map<String, dynamic>),
      initialValue: json['initialValue'] as String? ?? '',
      keyboardType: $enumDecodeNullable(
          _$MiraiTextInputTypeEnumMap, json['keyboardType']),
      textInputAction: $enumDecodeNullable(
          _$TextInputActionEnumMap, json['textInputAction']),
      textCapitalization: $enumDecodeNullable(
              _$TextCapitalizationEnumMap, json['textCapitalization']) ??
          TextCapitalization.none,
      style:
          json['style'] == null ? null : MiraiTextStyle.fromJson(json['style']),
      textAlign: $enumDecodeNullable(_$TextAlignEnumMap, json['textAlign']) ??
          TextAlign.start,
      textAlignVertical: $enumDecodeNullable(
          _$MiraiTextAlignVerticalEnumMap, json['textAlignVertical']),
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
      cursorWidth: (json['cursorWidth'] as num?)?.toDouble() ?? 2,
      cursorHeight: (json['cursorHeight'] as num?)?.toDouble(),
      cursorColor: json['cursorColor'] as String?,
      hintText: json['hintText'] as String?,
      inputFormatters: (json['inputFormatters'] as List<dynamic>?)
              ?.map((e) =>
                  MiraiInputFormatter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MiraiTextFieldImplToJson(
        _$MiraiTextFieldImpl instance) =>
    <String, dynamic>{
      'decoration': instance.decoration,
      'initialValue': instance.initialValue,
      'keyboardType': _$MiraiTextInputTypeEnumMap[instance.keyboardType],
      'textInputAction': _$TextInputActionEnumMap[instance.textInputAction],
      'textCapitalization':
          _$TextCapitalizationEnumMap[instance.textCapitalization]!,
      'style': instance.style,
      'textAlign': _$TextAlignEnumMap[instance.textAlign]!,
      'textAlignVertical':
          _$MiraiTextAlignVerticalEnumMap[instance.textAlignVertical],
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

const _$MiraiTextInputTypeEnumMap = {
  MiraiTextInputType.text: 'text',
  MiraiTextInputType.multiline: 'multiline',
  MiraiTextInputType.number: 'number',
  MiraiTextInputType.phone: 'phone',
  MiraiTextInputType.datetime: 'datetime',
  MiraiTextInputType.emailAddress: 'emailAddress',
  MiraiTextInputType.url: 'url',
  MiraiTextInputType.visiblePassword: 'visiblePassword',
  MiraiTextInputType.name: 'name',
  MiraiTextInputType.streetAddress: 'streetAddress',
  MiraiTextInputType.none: 'none',
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

const _$MiraiTextAlignVerticalEnumMap = {
  MiraiTextAlignVertical.top: 'top',
  MiraiTextAlignVertical.center: 'center',
  MiraiTextAlignVertical.bottom: 'bottom',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};
