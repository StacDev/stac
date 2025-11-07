// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTextField _$StacTextFieldFromJson(
  Map<String, dynamic> json,
) => StacTextField(
  initialValue: json['initialValue'] as String?,
  decoration: json['decoration'] == null
      ? null
      : StacInputDecoration.fromJson(
          json['decoration'] as Map<String, dynamic>,
        ),
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
  obscureText: json['obscureText'] as bool?,
  autocorrect: json['autocorrect'] as bool?,
  enableSuggestions: json['enableSuggestions'] as bool?,
  maxLines: (json['maxLines'] as num?)?.toInt(),
  minLines: (json['minLines'] as num?)?.toInt(),
  expands: json['expands'] as bool?,
  maxLength: (json['maxLength'] as num?)?.toInt(),
  enabled: json['enabled'] as bool?,
  cursorColor: json['cursorColor'] as String?,
  cursorWidth: const DoubleConverter().fromJson(json['cursorWidth']),
  cursorHeight: const DoubleConverter().fromJson(json['cursorHeight']),
  scrollPadding: json['scrollPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['scrollPadding']),
  enableInteractiveSelection: json['enableInteractiveSelection'] as bool?,
  mouseCursor: $enumDecodeNullable(
    _$StacMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  dragStartBehavior: $enumDecodeNullable(
    _$StacDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  scrollPhysics: $enumDecodeNullable(
    _$StacScrollPhysicsEnumMap,
    json['scrollPhysics'],
  ),
  restorationId: json['restorationId'] as String?,
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
  autofillHints: (json['autofillHints'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  onTap: json['onTap'] == null
      ? null
      : StacAction.fromJson(json['onTap'] as Map<String, dynamic>),
  onChanged: json['onChanged'] == null
      ? null
      : StacAction.fromJson(json['onChanged'] as Map<String, dynamic>),
  onEditingComplete: json['onEditingComplete'] == null
      ? null
      : StacAction.fromJson(json['onEditingComplete'] as Map<String, dynamic>),
  onSubmitted: json['onSubmitted'] == null
      ? null
      : StacAction.fromJson(json['onSubmitted'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacTextFieldToJson(StacTextField instance) =>
    <String, dynamic>{
      'initialValue': instance.initialValue,
      'decoration': instance.decoration?.toJson(),
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
      'obscureText': instance.obscureText,
      'autocorrect': instance.autocorrect,
      'enableSuggestions': instance.enableSuggestions,
      'maxLines': instance.maxLines,
      'minLines': instance.minLines,
      'expands': instance.expands,
      'maxLength': instance.maxLength,
      'enabled': instance.enabled,
      'cursorColor': instance.cursorColor,
      'cursorWidth': const DoubleConverter().toJson(instance.cursorWidth),
      'cursorHeight': const DoubleConverter().toJson(instance.cursorHeight),
      'scrollPadding': instance.scrollPadding?.toJson(),
      'enableInteractiveSelection': instance.enableInteractiveSelection,
      'mouseCursor': _$StacMouseCursorEnumMap[instance.mouseCursor],
      'dragStartBehavior':
          _$StacDragStartBehaviorEnumMap[instance.dragStartBehavior],
      'scrollPhysics': _$StacScrollPhysicsEnumMap[instance.scrollPhysics],
      'restorationId': instance.restorationId,
      'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
      'autofillHints': instance.autofillHints,
      'onTap': instance.onTap?.toJson(),
      'onChanged': instance.onChanged?.toJson(),
      'onEditingComplete': instance.onEditingComplete?.toJson(),
      'onSubmitted': instance.onSubmitted?.toJson(),
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

const _$StacMouseCursorEnumMap = {
  StacMouseCursor.none: 'none',
  StacMouseCursor.basic: 'basic',
  StacMouseCursor.click: 'click',
  StacMouseCursor.forbidden: 'forbidden',
  StacMouseCursor.wait: 'wait',
  StacMouseCursor.progress: 'progress',
  StacMouseCursor.contextMenu: 'contextMenu',
  StacMouseCursor.help: 'help',
  StacMouseCursor.text: 'text',
  StacMouseCursor.verticalText: 'verticalText',
  StacMouseCursor.cell: 'cell',
  StacMouseCursor.precise: 'precise',
  StacMouseCursor.move: 'move',
  StacMouseCursor.grab: 'grab',
  StacMouseCursor.grabbing: 'grabbing',
  StacMouseCursor.noDrop: 'noDrop',
  StacMouseCursor.alias: 'alias',
  StacMouseCursor.copy: 'copy',
  StacMouseCursor.disappearing: 'disappearing',
  StacMouseCursor.allScroll: 'allScroll',
  StacMouseCursor.resizeLeftRight: 'resizeLeftRight',
  StacMouseCursor.resizeUpDown: 'resizeUpDown',
  StacMouseCursor.resizeUpLeftDownRight: 'resizeUpLeftDownRight',
  StacMouseCursor.resizeUpRightDownLeft: 'resizeUpRightDownLeft',
  StacMouseCursor.resizeUp: 'resizeUp',
  StacMouseCursor.resizeDown: 'resizeDown',
  StacMouseCursor.resizeLeft: 'resizeLeft',
  StacMouseCursor.resizeRight: 'resizeRight',
  StacMouseCursor.resizeUpLeft: 'resizeUpLeft',
  StacMouseCursor.resizeUpRight: 'resizeUpRight',
  StacMouseCursor.resizeDownLeft: 'resizeDownLeft',
  StacMouseCursor.resizeDownRight: 'resizeDownRight',
  StacMouseCursor.resizeColumn: 'resizeColumn',
  StacMouseCursor.resizeRow: 'resizeRow',
  StacMouseCursor.zoomIn: 'zoomIn',
  StacMouseCursor.zoomOut: 'zoomOut',
};

const _$StacDragStartBehaviorEnumMap = {
  StacDragStartBehavior.down: 'down',
  StacDragStartBehavior.start: 'start',
};

const _$StacScrollPhysicsEnumMap = {
  StacScrollPhysics.never: 'never',
  StacScrollPhysics.bouncing: 'bouncing',
  StacScrollPhysics.clamping: 'clamping',
  StacScrollPhysics.fixed: 'fixed',
  StacScrollPhysics.page: 'page',
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
