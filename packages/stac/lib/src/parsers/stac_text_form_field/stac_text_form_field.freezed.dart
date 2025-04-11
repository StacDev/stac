// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_text_form_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacTextFormField {
  String? get id;
  String? get compareId;
  StacInputDecoration? get decoration;
  String? get initialValue;
  StacTextInputType? get keyboardType;
  TextInputAction? get textInputAction;
  TextCapitalization get textCapitalization;
  StacTextStyle? get style;
  TextAlign get textAlign;
  StacTextAlignVertical? get textAlignVertical;
  TextDirection? get textDirection;
  bool get readOnly;
  bool? get showCursor;
  bool get autofocus;
  String get obscuringCharacter;
  int? get maxLines;
  int? get minLines;
  int? get maxLength;
  bool? get obscureText;
  bool get autocorrect;
  SmartDashesType? get smartDashesType;
  SmartQuotesType? get smartQuotesType;
  MaxLengthEnforcement? get maxLengthEnforcement;
  bool get expands;
  Brightness? get keyboardAppearance;
  StacEdgeInsets get scrollPadding;
  String? get restorationId;
  bool get enableIMEPersonalizedLearning;
  bool get enableSuggestions;
  bool? get enabled;
  double get cursorWidth;
  double? get cursorHeight;
  String? get cursorColor;
  String? get hintText;
  AutovalidateMode? get autovalidateMode;
  List<StacInputFormatter> get inputFormatters;
  List<StacFormFieldValidator> get validatorRules;

  /// Create a copy of StacTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTextFormFieldCopyWith<StacTextFormField> get copyWith =>
      _$StacTextFormFieldCopyWithImpl<StacTextFormField>(
          this as StacTextFormField, _$identity);

  /// Serializes this StacTextFormField to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTextFormField &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.compareId, compareId) ||
                other.compareId == compareId) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.keyboardType, keyboardType) ||
                other.keyboardType == keyboardType) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.textCapitalization, textCapitalization) ||
                other.textCapitalization == textCapitalization) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.textAlign, textAlign) ||
                other.textAlign == textAlign) &&
            (identical(other.textAlignVertical, textAlignVertical) ||
                other.textAlignVertical == textAlignVertical) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly) &&
            (identical(other.showCursor, showCursor) ||
                other.showCursor == showCursor) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.obscuringCharacter, obscuringCharacter) ||
                other.obscuringCharacter == obscuringCharacter) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines) &&
            (identical(other.minLines, minLines) ||
                other.minLines == minLines) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            (identical(other.smartDashesType, smartDashesType) ||
                other.smartDashesType == smartDashesType) &&
            (identical(other.smartQuotesType, smartQuotesType) ||
                other.smartQuotesType == smartQuotesType) &&
            (identical(other.maxLengthEnforcement, maxLengthEnforcement) ||
                other.maxLengthEnforcement == maxLengthEnforcement) &&
            (identical(other.expands, expands) || other.expands == expands) &&
            (identical(other.keyboardAppearance, keyboardAppearance) ||
                other.keyboardAppearance == keyboardAppearance) &&
            (identical(other.scrollPadding, scrollPadding) ||
                other.scrollPadding == scrollPadding) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId) &&
            (identical(other.enableIMEPersonalizedLearning,
                    enableIMEPersonalizedLearning) ||
                other.enableIMEPersonalizedLearning ==
                    enableIMEPersonalizedLearning) &&
            (identical(other.enableSuggestions, enableSuggestions) ||
                other.enableSuggestions == enableSuggestions) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.cursorWidth, cursorWidth) ||
                other.cursorWidth == cursorWidth) &&
            (identical(other.cursorHeight, cursorHeight) ||
                other.cursorHeight == cursorHeight) &&
            (identical(other.cursorColor, cursorColor) ||
                other.cursorColor == cursorColor) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode) &&
            const DeepCollectionEquality()
                .equals(other.inputFormatters, inputFormatters) &&
            const DeepCollectionEquality()
                .equals(other.validatorRules, validatorRules));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        compareId,
        decoration,
        initialValue,
        keyboardType,
        textInputAction,
        textCapitalization,
        style,
        textAlign,
        textAlignVertical,
        textDirection,
        readOnly,
        showCursor,
        autofocus,
        obscuringCharacter,
        maxLines,
        minLines,
        maxLength,
        obscureText,
        autocorrect,
        smartDashesType,
        smartQuotesType,
        maxLengthEnforcement,
        expands,
        keyboardAppearance,
        scrollPadding,
        restorationId,
        enableIMEPersonalizedLearning,
        enableSuggestions,
        enabled,
        cursorWidth,
        cursorHeight,
        cursorColor,
        hintText,
        autovalidateMode,
        const DeepCollectionEquality().hash(inputFormatters),
        const DeepCollectionEquality().hash(validatorRules)
      ]);

  @override
  String toString() {
    return 'StacTextFormField(id: $id, compareId: $compareId, decoration: $decoration, initialValue: $initialValue, keyboardType: $keyboardType, textInputAction: $textInputAction, textCapitalization: $textCapitalization, style: $style, textAlign: $textAlign, textAlignVertical: $textAlignVertical, textDirection: $textDirection, readOnly: $readOnly, showCursor: $showCursor, autofocus: $autofocus, obscuringCharacter: $obscuringCharacter, maxLines: $maxLines, minLines: $minLines, maxLength: $maxLength, obscureText: $obscureText, autocorrect: $autocorrect, smartDashesType: $smartDashesType, smartQuotesType: $smartQuotesType, maxLengthEnforcement: $maxLengthEnforcement, expands: $expands, keyboardAppearance: $keyboardAppearance, scrollPadding: $scrollPadding, restorationId: $restorationId, enableIMEPersonalizedLearning: $enableIMEPersonalizedLearning, enableSuggestions: $enableSuggestions, enabled: $enabled, cursorWidth: $cursorWidth, cursorHeight: $cursorHeight, cursorColor: $cursorColor, hintText: $hintText, autovalidateMode: $autovalidateMode, inputFormatters: $inputFormatters, validatorRules: $validatorRules)';
  }
}

/// @nodoc
abstract mixin class $StacTextFormFieldCopyWith<$Res> {
  factory $StacTextFormFieldCopyWith(
          StacTextFormField value, $Res Function(StacTextFormField) _then) =
      _$StacTextFormFieldCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? compareId,
      StacInputDecoration? decoration,
      String? initialValue,
      StacTextInputType? keyboardType,
      TextInputAction? textInputAction,
      TextCapitalization textCapitalization,
      StacTextStyle? style,
      TextAlign textAlign,
      StacTextAlignVertical? textAlignVertical,
      TextDirection? textDirection,
      bool readOnly,
      bool? showCursor,
      bool autofocus,
      String obscuringCharacter,
      int? maxLines,
      int? minLines,
      int? maxLength,
      bool? obscureText,
      bool autocorrect,
      SmartDashesType? smartDashesType,
      SmartQuotesType? smartQuotesType,
      MaxLengthEnforcement? maxLengthEnforcement,
      bool expands,
      Brightness? keyboardAppearance,
      StacEdgeInsets scrollPadding,
      String? restorationId,
      bool enableIMEPersonalizedLearning,
      bool enableSuggestions,
      bool? enabled,
      double cursorWidth,
      double? cursorHeight,
      String? cursorColor,
      String? hintText,
      AutovalidateMode? autovalidateMode,
      List<StacInputFormatter> inputFormatters,
      List<StacFormFieldValidator> validatorRules});

  $StacInputDecorationCopyWith<$Res>? get decoration;
  $StacTextStyleCopyWith<$Res>? get style;
  $StacEdgeInsetsCopyWith<$Res> get scrollPadding;
}

/// @nodoc
class _$StacTextFormFieldCopyWithImpl<$Res>
    implements $StacTextFormFieldCopyWith<$Res> {
  _$StacTextFormFieldCopyWithImpl(this._self, this._then);

  final StacTextFormField _self;
  final $Res Function(StacTextFormField) _then;

  /// Create a copy of StacTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? compareId = freezed,
    Object? decoration = freezed,
    Object? initialValue = freezed,
    Object? keyboardType = freezed,
    Object? textInputAction = freezed,
    Object? textCapitalization = null,
    Object? style = freezed,
    Object? textAlign = null,
    Object? textAlignVertical = freezed,
    Object? textDirection = freezed,
    Object? readOnly = null,
    Object? showCursor = freezed,
    Object? autofocus = null,
    Object? obscuringCharacter = null,
    Object? maxLines = freezed,
    Object? minLines = freezed,
    Object? maxLength = freezed,
    Object? obscureText = freezed,
    Object? autocorrect = null,
    Object? smartDashesType = freezed,
    Object? smartQuotesType = freezed,
    Object? maxLengthEnforcement = freezed,
    Object? expands = null,
    Object? keyboardAppearance = freezed,
    Object? scrollPadding = null,
    Object? restorationId = freezed,
    Object? enableIMEPersonalizedLearning = null,
    Object? enableSuggestions = null,
    Object? enabled = freezed,
    Object? cursorWidth = null,
    Object? cursorHeight = freezed,
    Object? cursorColor = freezed,
    Object? hintText = freezed,
    Object? autovalidateMode = freezed,
    Object? inputFormatters = null,
    Object? validatorRules = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      compareId: freezed == compareId
          ? _self.compareId
          : compareId // ignore: cast_nullable_to_non_nullable
              as String?,
      decoration: freezed == decoration
          ? _self.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StacInputDecoration?,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
      keyboardType: freezed == keyboardType
          ? _self.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as StacTextInputType?,
      textInputAction: freezed == textInputAction
          ? _self.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction?,
      textCapitalization: null == textCapitalization
          ? _self.textCapitalization
          : textCapitalization // ignore: cast_nullable_to_non_nullable
              as TextCapitalization,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      textAlign: null == textAlign
          ? _self.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign,
      textAlignVertical: freezed == textAlignVertical
          ? _self.textAlignVertical
          : textAlignVertical // ignore: cast_nullable_to_non_nullable
              as StacTextAlignVertical?,
      textDirection: freezed == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      readOnly: null == readOnly
          ? _self.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      showCursor: freezed == showCursor
          ? _self.showCursor
          : showCursor // ignore: cast_nullable_to_non_nullable
              as bool?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      obscuringCharacter: null == obscuringCharacter
          ? _self.obscuringCharacter
          : obscuringCharacter // ignore: cast_nullable_to_non_nullable
              as String,
      maxLines: freezed == maxLines
          ? _self.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      minLines: freezed == minLines
          ? _self.minLines
          : minLines // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      obscureText: freezed == obscureText
          ? _self.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocorrect: null == autocorrect
          ? _self.autocorrect
          : autocorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      smartDashesType: freezed == smartDashesType
          ? _self.smartDashesType
          : smartDashesType // ignore: cast_nullable_to_non_nullable
              as SmartDashesType?,
      smartQuotesType: freezed == smartQuotesType
          ? _self.smartQuotesType
          : smartQuotesType // ignore: cast_nullable_to_non_nullable
              as SmartQuotesType?,
      maxLengthEnforcement: freezed == maxLengthEnforcement
          ? _self.maxLengthEnforcement
          : maxLengthEnforcement // ignore: cast_nullable_to_non_nullable
              as MaxLengthEnforcement?,
      expands: null == expands
          ? _self.expands
          : expands // ignore: cast_nullable_to_non_nullable
              as bool,
      keyboardAppearance: freezed == keyboardAppearance
          ? _self.keyboardAppearance
          : keyboardAppearance // ignore: cast_nullable_to_non_nullable
              as Brightness?,
      scrollPadding: null == scrollPadding
          ? _self.scrollPadding
          : scrollPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets,
      restorationId: freezed == restorationId
          ? _self.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
      enableIMEPersonalizedLearning: null == enableIMEPersonalizedLearning
          ? _self.enableIMEPersonalizedLearning
          : enableIMEPersonalizedLearning // ignore: cast_nullable_to_non_nullable
              as bool,
      enableSuggestions: null == enableSuggestions
          ? _self.enableSuggestions
          : enableSuggestions // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      cursorWidth: null == cursorWidth
          ? _self.cursorWidth
          : cursorWidth // ignore: cast_nullable_to_non_nullable
              as double,
      cursorHeight: freezed == cursorHeight
          ? _self.cursorHeight
          : cursorHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      cursorColor: freezed == cursorColor
          ? _self.cursorColor
          : cursorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      autovalidateMode: freezed == autovalidateMode
          ? _self.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      inputFormatters: null == inputFormatters
          ? _self.inputFormatters
          : inputFormatters // ignore: cast_nullable_to_non_nullable
              as List<StacInputFormatter>,
      validatorRules: null == validatorRules
          ? _self.validatorRules
          : validatorRules // ignore: cast_nullable_to_non_nullable
              as List<StacFormFieldValidator>,
    ));
  }

  /// Create a copy of StacTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputDecorationCopyWith<$Res>? get decoration {
    if (_self.decoration == null) {
      return null;
    }

    return $StacInputDecorationCopyWith<$Res>(_self.decoration!, (value) {
      return _then(_self.copyWith(decoration: value));
    });
  }

  /// Create a copy of StacTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get style {
    if (_self.style == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.style!, (value) {
      return _then(_self.copyWith(style: value));
    });
  }

  /// Create a copy of StacTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res> get scrollPadding {
    return $StacEdgeInsetsCopyWith<$Res>(_self.scrollPadding, (value) {
      return _then(_self.copyWith(scrollPadding: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacTextFormField implements StacTextFormField {
  const _StacTextFormField(
      {this.id,
      this.compareId,
      this.decoration,
      this.initialValue,
      this.keyboardType,
      this.textInputAction,
      this.textCapitalization = TextCapitalization.none,
      this.style,
      this.textAlign = TextAlign.start,
      this.textAlignVertical,
      this.textDirection,
      this.readOnly = false,
      this.showCursor,
      this.autofocus = false,
      this.obscuringCharacter = '•',
      this.maxLines,
      this.minLines,
      this.maxLength,
      this.obscureText,
      this.autocorrect = true,
      this.smartDashesType,
      this.smartQuotesType,
      this.maxLengthEnforcement,
      this.expands = false,
      this.keyboardAppearance,
      this.scrollPadding =
          const StacEdgeInsets(bottom: 20, top: 20, left: 20, right: 20),
      this.restorationId,
      this.enableIMEPersonalizedLearning = true,
      this.enableSuggestions = true,
      this.enabled,
      this.cursorWidth = 2,
      this.cursorHeight,
      this.cursorColor,
      this.hintText,
      this.autovalidateMode,
      final List<StacInputFormatter> inputFormatters = const [],
      final List<StacFormFieldValidator> validatorRules = const []})
      : _inputFormatters = inputFormatters,
        _validatorRules = validatorRules;
  factory _StacTextFormField.fromJson(Map<String, dynamic> json) =>
      _$StacTextFormFieldFromJson(json);

  @override
  final String? id;
  @override
  final String? compareId;
  @override
  final StacInputDecoration? decoration;
  @override
  final String? initialValue;
  @override
  final StacTextInputType? keyboardType;
  @override
  final TextInputAction? textInputAction;
  @override
  @JsonKey()
  final TextCapitalization textCapitalization;
  @override
  final StacTextStyle? style;
  @override
  @JsonKey()
  final TextAlign textAlign;
  @override
  final StacTextAlignVertical? textAlignVertical;
  @override
  final TextDirection? textDirection;
  @override
  @JsonKey()
  final bool readOnly;
  @override
  final bool? showCursor;
  @override
  @JsonKey()
  final bool autofocus;
  @override
  @JsonKey()
  final String obscuringCharacter;
  @override
  final int? maxLines;
  @override
  final int? minLines;
  @override
  final int? maxLength;
  @override
  final bool? obscureText;
  @override
  @JsonKey()
  final bool autocorrect;
  @override
  final SmartDashesType? smartDashesType;
  @override
  final SmartQuotesType? smartQuotesType;
  @override
  final MaxLengthEnforcement? maxLengthEnforcement;
  @override
  @JsonKey()
  final bool expands;
  @override
  final Brightness? keyboardAppearance;
  @override
  @JsonKey()
  final StacEdgeInsets scrollPadding;
  @override
  final String? restorationId;
  @override
  @JsonKey()
  final bool enableIMEPersonalizedLearning;
  @override
  @JsonKey()
  final bool enableSuggestions;
  @override
  final bool? enabled;
  @override
  @JsonKey()
  final double cursorWidth;
  @override
  final double? cursorHeight;
  @override
  final String? cursorColor;
  @override
  final String? hintText;
  @override
  final AutovalidateMode? autovalidateMode;
  final List<StacInputFormatter> _inputFormatters;
  @override
  @JsonKey()
  List<StacInputFormatter> get inputFormatters {
    if (_inputFormatters is EqualUnmodifiableListView) return _inputFormatters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputFormatters);
  }

  final List<StacFormFieldValidator> _validatorRules;
  @override
  @JsonKey()
  List<StacFormFieldValidator> get validatorRules {
    if (_validatorRules is EqualUnmodifiableListView) return _validatorRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validatorRules);
  }

  /// Create a copy of StacTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTextFormFieldCopyWith<_StacTextFormField> get copyWith =>
      __$StacTextFormFieldCopyWithImpl<_StacTextFormField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTextFormFieldToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTextFormField &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.compareId, compareId) ||
                other.compareId == compareId) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.keyboardType, keyboardType) ||
                other.keyboardType == keyboardType) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.textCapitalization, textCapitalization) ||
                other.textCapitalization == textCapitalization) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.textAlign, textAlign) ||
                other.textAlign == textAlign) &&
            (identical(other.textAlignVertical, textAlignVertical) ||
                other.textAlignVertical == textAlignVertical) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly) &&
            (identical(other.showCursor, showCursor) ||
                other.showCursor == showCursor) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.obscuringCharacter, obscuringCharacter) ||
                other.obscuringCharacter == obscuringCharacter) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines) &&
            (identical(other.minLines, minLines) ||
                other.minLines == minLines) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            (identical(other.smartDashesType, smartDashesType) ||
                other.smartDashesType == smartDashesType) &&
            (identical(other.smartQuotesType, smartQuotesType) ||
                other.smartQuotesType == smartQuotesType) &&
            (identical(other.maxLengthEnforcement, maxLengthEnforcement) ||
                other.maxLengthEnforcement == maxLengthEnforcement) &&
            (identical(other.expands, expands) || other.expands == expands) &&
            (identical(other.keyboardAppearance, keyboardAppearance) ||
                other.keyboardAppearance == keyboardAppearance) &&
            (identical(other.scrollPadding, scrollPadding) ||
                other.scrollPadding == scrollPadding) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId) &&
            (identical(other.enableIMEPersonalizedLearning,
                    enableIMEPersonalizedLearning) ||
                other.enableIMEPersonalizedLearning ==
                    enableIMEPersonalizedLearning) &&
            (identical(other.enableSuggestions, enableSuggestions) ||
                other.enableSuggestions == enableSuggestions) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.cursorWidth, cursorWidth) ||
                other.cursorWidth == cursorWidth) &&
            (identical(other.cursorHeight, cursorHeight) ||
                other.cursorHeight == cursorHeight) &&
            (identical(other.cursorColor, cursorColor) ||
                other.cursorColor == cursorColor) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode) &&
            const DeepCollectionEquality()
                .equals(other._inputFormatters, _inputFormatters) &&
            const DeepCollectionEquality()
                .equals(other._validatorRules, _validatorRules));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        compareId,
        decoration,
        initialValue,
        keyboardType,
        textInputAction,
        textCapitalization,
        style,
        textAlign,
        textAlignVertical,
        textDirection,
        readOnly,
        showCursor,
        autofocus,
        obscuringCharacter,
        maxLines,
        minLines,
        maxLength,
        obscureText,
        autocorrect,
        smartDashesType,
        smartQuotesType,
        maxLengthEnforcement,
        expands,
        keyboardAppearance,
        scrollPadding,
        restorationId,
        enableIMEPersonalizedLearning,
        enableSuggestions,
        enabled,
        cursorWidth,
        cursorHeight,
        cursorColor,
        hintText,
        autovalidateMode,
        const DeepCollectionEquality().hash(_inputFormatters),
        const DeepCollectionEquality().hash(_validatorRules)
      ]);

  @override
  String toString() {
    return 'StacTextFormField(id: $id, compareId: $compareId, decoration: $decoration, initialValue: $initialValue, keyboardType: $keyboardType, textInputAction: $textInputAction, textCapitalization: $textCapitalization, style: $style, textAlign: $textAlign, textAlignVertical: $textAlignVertical, textDirection: $textDirection, readOnly: $readOnly, showCursor: $showCursor, autofocus: $autofocus, obscuringCharacter: $obscuringCharacter, maxLines: $maxLines, minLines: $minLines, maxLength: $maxLength, obscureText: $obscureText, autocorrect: $autocorrect, smartDashesType: $smartDashesType, smartQuotesType: $smartQuotesType, maxLengthEnforcement: $maxLengthEnforcement, expands: $expands, keyboardAppearance: $keyboardAppearance, scrollPadding: $scrollPadding, restorationId: $restorationId, enableIMEPersonalizedLearning: $enableIMEPersonalizedLearning, enableSuggestions: $enableSuggestions, enabled: $enabled, cursorWidth: $cursorWidth, cursorHeight: $cursorHeight, cursorColor: $cursorColor, hintText: $hintText, autovalidateMode: $autovalidateMode, inputFormatters: $inputFormatters, validatorRules: $validatorRules)';
  }
}

/// @nodoc
abstract mixin class _$StacTextFormFieldCopyWith<$Res>
    implements $StacTextFormFieldCopyWith<$Res> {
  factory _$StacTextFormFieldCopyWith(
          _StacTextFormField value, $Res Function(_StacTextFormField) _then) =
      __$StacTextFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? compareId,
      StacInputDecoration? decoration,
      String? initialValue,
      StacTextInputType? keyboardType,
      TextInputAction? textInputAction,
      TextCapitalization textCapitalization,
      StacTextStyle? style,
      TextAlign textAlign,
      StacTextAlignVertical? textAlignVertical,
      TextDirection? textDirection,
      bool readOnly,
      bool? showCursor,
      bool autofocus,
      String obscuringCharacter,
      int? maxLines,
      int? minLines,
      int? maxLength,
      bool? obscureText,
      bool autocorrect,
      SmartDashesType? smartDashesType,
      SmartQuotesType? smartQuotesType,
      MaxLengthEnforcement? maxLengthEnforcement,
      bool expands,
      Brightness? keyboardAppearance,
      StacEdgeInsets scrollPadding,
      String? restorationId,
      bool enableIMEPersonalizedLearning,
      bool enableSuggestions,
      bool? enabled,
      double cursorWidth,
      double? cursorHeight,
      String? cursorColor,
      String? hintText,
      AutovalidateMode? autovalidateMode,
      List<StacInputFormatter> inputFormatters,
      List<StacFormFieldValidator> validatorRules});

  @override
  $StacInputDecorationCopyWith<$Res>? get decoration;
  @override
  $StacTextStyleCopyWith<$Res>? get style;
  @override
  $StacEdgeInsetsCopyWith<$Res> get scrollPadding;
}

/// @nodoc
class __$StacTextFormFieldCopyWithImpl<$Res>
    implements _$StacTextFormFieldCopyWith<$Res> {
  __$StacTextFormFieldCopyWithImpl(this._self, this._then);

  final _StacTextFormField _self;
  final $Res Function(_StacTextFormField) _then;

  /// Create a copy of StacTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? compareId = freezed,
    Object? decoration = freezed,
    Object? initialValue = freezed,
    Object? keyboardType = freezed,
    Object? textInputAction = freezed,
    Object? textCapitalization = null,
    Object? style = freezed,
    Object? textAlign = null,
    Object? textAlignVertical = freezed,
    Object? textDirection = freezed,
    Object? readOnly = null,
    Object? showCursor = freezed,
    Object? autofocus = null,
    Object? obscuringCharacter = null,
    Object? maxLines = freezed,
    Object? minLines = freezed,
    Object? maxLength = freezed,
    Object? obscureText = freezed,
    Object? autocorrect = null,
    Object? smartDashesType = freezed,
    Object? smartQuotesType = freezed,
    Object? maxLengthEnforcement = freezed,
    Object? expands = null,
    Object? keyboardAppearance = freezed,
    Object? scrollPadding = null,
    Object? restorationId = freezed,
    Object? enableIMEPersonalizedLearning = null,
    Object? enableSuggestions = null,
    Object? enabled = freezed,
    Object? cursorWidth = null,
    Object? cursorHeight = freezed,
    Object? cursorColor = freezed,
    Object? hintText = freezed,
    Object? autovalidateMode = freezed,
    Object? inputFormatters = null,
    Object? validatorRules = null,
  }) {
    return _then(_StacTextFormField(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      compareId: freezed == compareId
          ? _self.compareId
          : compareId // ignore: cast_nullable_to_non_nullable
              as String?,
      decoration: freezed == decoration
          ? _self.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StacInputDecoration?,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
      keyboardType: freezed == keyboardType
          ? _self.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as StacTextInputType?,
      textInputAction: freezed == textInputAction
          ? _self.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction?,
      textCapitalization: null == textCapitalization
          ? _self.textCapitalization
          : textCapitalization // ignore: cast_nullable_to_non_nullable
              as TextCapitalization,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      textAlign: null == textAlign
          ? _self.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign,
      textAlignVertical: freezed == textAlignVertical
          ? _self.textAlignVertical
          : textAlignVertical // ignore: cast_nullable_to_non_nullable
              as StacTextAlignVertical?,
      textDirection: freezed == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      readOnly: null == readOnly
          ? _self.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      showCursor: freezed == showCursor
          ? _self.showCursor
          : showCursor // ignore: cast_nullable_to_non_nullable
              as bool?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      obscuringCharacter: null == obscuringCharacter
          ? _self.obscuringCharacter
          : obscuringCharacter // ignore: cast_nullable_to_non_nullable
              as String,
      maxLines: freezed == maxLines
          ? _self.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      minLines: freezed == minLines
          ? _self.minLines
          : minLines // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      obscureText: freezed == obscureText
          ? _self.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocorrect: null == autocorrect
          ? _self.autocorrect
          : autocorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      smartDashesType: freezed == smartDashesType
          ? _self.smartDashesType
          : smartDashesType // ignore: cast_nullable_to_non_nullable
              as SmartDashesType?,
      smartQuotesType: freezed == smartQuotesType
          ? _self.smartQuotesType
          : smartQuotesType // ignore: cast_nullable_to_non_nullable
              as SmartQuotesType?,
      maxLengthEnforcement: freezed == maxLengthEnforcement
          ? _self.maxLengthEnforcement
          : maxLengthEnforcement // ignore: cast_nullable_to_non_nullable
              as MaxLengthEnforcement?,
      expands: null == expands
          ? _self.expands
          : expands // ignore: cast_nullable_to_non_nullable
              as bool,
      keyboardAppearance: freezed == keyboardAppearance
          ? _self.keyboardAppearance
          : keyboardAppearance // ignore: cast_nullable_to_non_nullable
              as Brightness?,
      scrollPadding: null == scrollPadding
          ? _self.scrollPadding
          : scrollPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets,
      restorationId: freezed == restorationId
          ? _self.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
      enableIMEPersonalizedLearning: null == enableIMEPersonalizedLearning
          ? _self.enableIMEPersonalizedLearning
          : enableIMEPersonalizedLearning // ignore: cast_nullable_to_non_nullable
              as bool,
      enableSuggestions: null == enableSuggestions
          ? _self.enableSuggestions
          : enableSuggestions // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      cursorWidth: null == cursorWidth
          ? _self.cursorWidth
          : cursorWidth // ignore: cast_nullable_to_non_nullable
              as double,
      cursorHeight: freezed == cursorHeight
          ? _self.cursorHeight
          : cursorHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      cursorColor: freezed == cursorColor
          ? _self.cursorColor
          : cursorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      autovalidateMode: freezed == autovalidateMode
          ? _self.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      inputFormatters: null == inputFormatters
          ? _self._inputFormatters
          : inputFormatters // ignore: cast_nullable_to_non_nullable
              as List<StacInputFormatter>,
      validatorRules: null == validatorRules
          ? _self._validatorRules
          : validatorRules // ignore: cast_nullable_to_non_nullable
              as List<StacFormFieldValidator>,
    ));
  }

  /// Create a copy of StacTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputDecorationCopyWith<$Res>? get decoration {
    if (_self.decoration == null) {
      return null;
    }

    return $StacInputDecorationCopyWith<$Res>(_self.decoration!, (value) {
      return _then(_self.copyWith(decoration: value));
    });
  }

  /// Create a copy of StacTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get style {
    if (_self.style == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.style!, (value) {
      return _then(_self.copyWith(style: value));
    });
  }

  /// Create a copy of StacTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res> get scrollPadding {
    return $StacEdgeInsetsCopyWith<$Res>(_self.scrollPadding, (value) {
      return _then(_self.copyWith(scrollPadding: value));
    });
  }
}

// dart format on
