// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_form_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTextFormField _$StacTextFormFieldFromJson(
  Map<String, dynamic> json,
) => StacTextFormField(
  id: json['id'] as String?,
  decoration: json['decoration'] == null
      ? null
      : StacInputDecoration.fromJson(
          json['decoration'] as Map<String, dynamic>,
        ),
  initialValue: json['initialValue'] as String?,
  keyboardType: $enumDecodeNullable(
    _$StacTextInputTypeEnumMap,
    json['keyboardType'],
  ),
  textInputAction: $enumDecodeNullable(
    _$StacTextInputActionEnumMap,
    json['textInputAction'],
  ),
  textCapitalization: $enumDecodeNullable(
    _$StacTextCapitalizationEnumMap,
    json['textCapitalization'],
  ),
  style: json['style'] == null ? null : StacTextStyle.fromJson(json['style']),
  textAlign: $enumDecodeNullable(_$StacTextAlignEnumMap, json['textAlign']),
  textDirection: $enumDecodeNullable(
    _$StacTextDirectionEnumMap,
    json['textDirection'],
  ),
  readOnly: json['readOnly'] as bool?,
  showCursor: json['showCursor'] as bool?,
  autofocus: json['autofocus'] as bool?,
  obscuringCharacter: json['obscuringCharacter'] as String?,
  maxLines: (json['maxLines'] as num?)?.toInt(),
  minLines: (json['minLines'] as num?)?.toInt(),
  maxLength: (json['maxLength'] as num?)?.toInt(),
  obscureText: json['obscureText'] as bool?,
  autocorrect: json['autocorrect'] as bool?,
  smartDashesType: $enumDecodeNullable(
    _$StacSmartDashesTypeEnumMap,
    json['smartDashesType'],
  ),
  smartQuotesType: $enumDecodeNullable(
    _$StacSmartQuotesTypeEnumMap,
    json['smartQuotesType'],
  ),
  maxLengthEnforcement: $enumDecodeNullable(
    _$StacMaxLengthEnforcementEnumMap,
    json['maxLengthEnforcement'],
  ),
  expands: json['expands'] as bool?,
  keyboardAppearance: $enumDecodeNullable(
    _$StacBrightnessEnumMap,
    json['keyboardAppearance'],
  ),
  scrollPadding: json['scrollPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['scrollPadding']),
  restorationId: json['restorationId'] as String?,
  enableIMEPersonalizedLearning: json['enableIMEPersonalizedLearning'] as bool?,
  enableSuggestions: json['enableSuggestions'] as bool?,
  enabled: json['enabled'] as bool?,
  cursorWidth: const DoubleConverter().fromJson(json['cursorWidth']),
  cursorHeight: const DoubleConverter().fromJson(json['cursorHeight']),
  cursorColor: json['cursorColor'] as String?,
  autovalidateMode: $enumDecodeNullable(
    _$StacAutovalidateModeEnumMap,
    json['autovalidateMode'],
  ),
  inputFormatters: (json['inputFormatters'] as List<dynamic>?)
      ?.map((e) => StacInputFormatter.fromJson(e as Map<String, dynamic>))
      .toList(),
  validatorRules: (json['validatorRules'] as List<dynamic>?)
      ?.map((e) => StacFormFieldValidator.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StacTextFormFieldToJson(
  StacTextFormField instance,
) => <String, dynamic>{
  'id': instance.id,
  'decoration': instance.decoration?.toJson(),
  'initialValue': instance.initialValue,
  'keyboardType': _$StacTextInputTypeEnumMap[instance.keyboardType],
  'textInputAction': _$StacTextInputActionEnumMap[instance.textInputAction],
  'textCapitalization':
      _$StacTextCapitalizationEnumMap[instance.textCapitalization],
  'style': instance.style?.toJson(),
  'textAlign': _$StacTextAlignEnumMap[instance.textAlign],
  'textDirection': _$StacTextDirectionEnumMap[instance.textDirection],
  'readOnly': instance.readOnly,
  'showCursor': instance.showCursor,
  'autofocus': instance.autofocus,
  'obscuringCharacter': instance.obscuringCharacter,
  'maxLines': instance.maxLines,
  'minLines': instance.minLines,
  'maxLength': instance.maxLength,
  'obscureText': instance.obscureText,
  'autocorrect': instance.autocorrect,
  'smartDashesType': _$StacSmartDashesTypeEnumMap[instance.smartDashesType],
  'smartQuotesType': _$StacSmartQuotesTypeEnumMap[instance.smartQuotesType],
  'maxLengthEnforcement':
      _$StacMaxLengthEnforcementEnumMap[instance.maxLengthEnforcement],
  'expands': instance.expands,
  'keyboardAppearance': _$StacBrightnessEnumMap[instance.keyboardAppearance],
  'scrollPadding': instance.scrollPadding?.toJson(),
  'restorationId': instance.restorationId,
  'enableIMEPersonalizedLearning': instance.enableIMEPersonalizedLearning,
  'enableSuggestions': instance.enableSuggestions,
  'enabled': instance.enabled,
  'cursorWidth': const DoubleConverter().toJson(instance.cursorWidth),
  'cursorHeight': const DoubleConverter().toJson(instance.cursorHeight),
  'cursorColor': instance.cursorColor,
  'autovalidateMode': _$StacAutovalidateModeEnumMap[instance.autovalidateMode],
  'inputFormatters': instance.inputFormatters?.map((e) => e.toJson()).toList(),
  'validatorRules': instance.validatorRules?.map((e) => e.toJson()).toList(),
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

const _$StacTextInputActionEnumMap = {
  StacTextInputAction.none: 'none',
  StacTextInputAction.unspecified: 'unspecified',
  StacTextInputAction.done: 'done',
  StacTextInputAction.go: 'go',
  StacTextInputAction.search: 'search',
  StacTextInputAction.send: 'send',
  StacTextInputAction.next: 'next',
  StacTextInputAction.previous: 'previous',
  StacTextInputAction.continueAction: 'continueAction',
  StacTextInputAction.join: 'join',
  StacTextInputAction.route: 'route',
  StacTextInputAction.emergencyCall: 'emergencyCall',
  StacTextInputAction.newline: 'newline',
};

const _$StacTextCapitalizationEnumMap = {
  StacTextCapitalization.none: 'none',
  StacTextCapitalization.characters: 'characters',
  StacTextCapitalization.words: 'words',
  StacTextCapitalization.sentences: 'sentences',
};

const _$StacTextAlignEnumMap = {
  StacTextAlign.left: 'left',
  StacTextAlign.right: 'right',
  StacTextAlign.center: 'center',
  StacTextAlign.justify: 'justify',
  StacTextAlign.start: 'start',
  StacTextAlign.end: 'end',
};

const _$StacTextDirectionEnumMap = {
  StacTextDirection.rtl: 'rtl',
  StacTextDirection.ltr: 'ltr',
};

const _$StacSmartDashesTypeEnumMap = {
  StacSmartDashesType.disabled: 'disabled',
  StacSmartDashesType.enabled: 'enabled',
};

const _$StacSmartQuotesTypeEnumMap = {
  StacSmartQuotesType.disabled: 'disabled',
  StacSmartQuotesType.enabled: 'enabled',
};

const _$StacMaxLengthEnforcementEnumMap = {
  StacMaxLengthEnforcement.none: 'none',
  StacMaxLengthEnforcement.enforced: 'enforced',
};

const _$StacBrightnessEnumMap = {
  StacBrightness.light: 'light',
  StacBrightness.dark: 'dark',
  StacBrightness.system: 'system',
};

const _$StacAutovalidateModeEnumMap = {
  StacAutovalidateMode.disabled: 'disabled',
  StacAutovalidateMode.always: 'always',
  StacAutovalidateMode.onUserInteraction: 'onUserInteraction',
};
