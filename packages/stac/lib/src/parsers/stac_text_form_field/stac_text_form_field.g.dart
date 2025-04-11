// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_form_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacTextFormField _$StacTextFormFieldFromJson(Map<String, dynamic> json) =>
    _StacTextFormField(
      id: json['id'] as String?,
      compareId: json['compareId'] as String?,
      decoration: json['decoration'] == null
          ? null
          : StacInputDecoration.fromJson(
              json['decoration'] as Map<String, dynamic>),
      initialValue: json['initialValue'] as String?,
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
      autofocus: json['autofocus'] as bool? ?? false,
      obscuringCharacter: json['obscuringCharacter'] as String? ?? '•',
      maxLines: (json['maxLines'] as num?)?.toInt(),
      minLines: (json['minLines'] as num?)?.toInt(),
      maxLength: (json['maxLength'] as num?)?.toInt(),
      obscureText: json['obscureText'] as bool?,
      autocorrect: json['autocorrect'] as bool? ?? true,
      smartDashesType: $enumDecodeNullable(
          _$SmartDashesTypeEnumMap, json['smartDashesType']),
      smartQuotesType: $enumDecodeNullable(
          _$SmartQuotesTypeEnumMap, json['smartQuotesType']),
      maxLengthEnforcement: $enumDecodeNullable(
          _$MaxLengthEnforcementEnumMap, json['maxLengthEnforcement']),
      expands: json['expands'] as bool? ?? false,
      keyboardAppearance:
          $enumDecodeNullable(_$BrightnessEnumMap, json['keyboardAppearance']),
      scrollPadding: json['scrollPadding'] == null
          ? const StacEdgeInsets(bottom: 20, top: 20, left: 20, right: 20)
          : StacEdgeInsets.fromJson(json['scrollPadding']),
      restorationId: json['restorationId'] as String?,
      enableIMEPersonalizedLearning:
          json['enableIMEPersonalizedLearning'] as bool? ?? true,
      enableSuggestions: json['enableSuggestions'] as bool? ?? true,
      enabled: json['enabled'] as bool?,
      cursorWidth: (json['cursorWidth'] as num?)?.toDouble() ?? 2,
      cursorHeight: (json['cursorHeight'] as num?)?.toDouble(),
      cursorColor: json['cursorColor'] as String?,
      hintText: json['hintText'] as String?,
      autovalidateMode: $enumDecodeNullable(
          _$AutovalidateModeEnumMap, json['autovalidateMode']),
      inputFormatters: (json['inputFormatters'] as List<dynamic>?)
              ?.map(
                  (e) => StacInputFormatter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      validatorRules: (json['validatorRules'] as List<dynamic>?)
              ?.map((e) =>
                  StacFormFieldValidator.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StacTextFormFieldToJson(_StacTextFormField instance) =>
    <String, dynamic>{
      'id': instance.id,
      'compareId': instance.compareId,
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
      'autofocus': instance.autofocus,
      'obscuringCharacter': instance.obscuringCharacter,
      'maxLines': instance.maxLines,
      'minLines': instance.minLines,
      'maxLength': instance.maxLength,
      'obscureText': instance.obscureText,
      'autocorrect': instance.autocorrect,
      'smartDashesType': _$SmartDashesTypeEnumMap[instance.smartDashesType],
      'smartQuotesType': _$SmartQuotesTypeEnumMap[instance.smartQuotesType],
      'maxLengthEnforcement':
          _$MaxLengthEnforcementEnumMap[instance.maxLengthEnforcement],
      'expands': instance.expands,
      'keyboardAppearance': _$BrightnessEnumMap[instance.keyboardAppearance],
      'scrollPadding': instance.scrollPadding,
      'restorationId': instance.restorationId,
      'enableIMEPersonalizedLearning': instance.enableIMEPersonalizedLearning,
      'enableSuggestions': instance.enableSuggestions,
      'enabled': instance.enabled,
      'cursorWidth': instance.cursorWidth,
      'cursorHeight': instance.cursorHeight,
      'cursorColor': instance.cursorColor,
      'hintText': instance.hintText,
      'autovalidateMode': _$AutovalidateModeEnumMap[instance.autovalidateMode],
      'inputFormatters': instance.inputFormatters,
      'validatorRules': instance.validatorRules,
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

const _$SmartDashesTypeEnumMap = {
  SmartDashesType.disabled: 'disabled',
  SmartDashesType.enabled: 'enabled',
};

const _$SmartQuotesTypeEnumMap = {
  SmartQuotesType.disabled: 'disabled',
  SmartQuotesType.enabled: 'enabled',
};

const _$MaxLengthEnforcementEnumMap = {
  MaxLengthEnforcement.none: 'none',
  MaxLengthEnforcement.enforced: 'enforced',
  MaxLengthEnforcement.truncateAfterCompositionEnds:
      'truncateAfterCompositionEnds',
};

const _$BrightnessEnumMap = {
  Brightness.dark: 'dark',
  Brightness.light: 'light',
};

const _$AutovalidateModeEnumMap = {
  AutovalidateMode.disabled: 'disabled',
  AutovalidateMode.always: 'always',
  AutovalidateMode.onUserInteraction: 'onUserInteraction',
  AutovalidateMode.onUnfocus: 'onUnfocus',
};
