// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_text_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacTextField {
  StacInputDecoration? get decoration;
  String get initialValue;
  StacTextInputType? get keyboardType;
  TextInputAction? get textInputAction;
  TextCapitalization get textCapitalization;
  StacTextStyle? get style;
  TextAlign get textAlign;
  StacTextAlignVertical? get textAlignVertical;
  TextDirection? get textDirection;
  bool get readOnly;
  bool? get showCursor;
  dynamic get expands;
  bool get autofocus;
  String get obscuringCharacter;
  int? get maxLines;
  int? get minLines;
  int? get maxLength;
  bool get obscureText;
  bool get enableSuggestions;
  bool? get enabled;
  StacDouble get cursorWidth;
  StacDouble? get cursorHeight;
  String? get cursorColor;
  String? get hintText;
  List<StacInputFormatter> get inputFormatters;

  /// Create a copy of StacTextField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTextFieldCopyWith<StacTextField> get copyWith =>
      _$StacTextFieldCopyWithImpl<StacTextField>(
          this as StacTextField, _$identity);

  /// Serializes this StacTextField to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTextField &&
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
            const DeepCollectionEquality().equals(other.expands, expands) &&
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
            const DeepCollectionEquality()
                .equals(other.inputFormatters, inputFormatters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
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
        const DeepCollectionEquality().hash(expands),
        autofocus,
        obscuringCharacter,
        maxLines,
        minLines,
        maxLength,
        obscureText,
        enableSuggestions,
        enabled,
        cursorWidth,
        cursorHeight,
        cursorColor,
        hintText,
        const DeepCollectionEquality().hash(inputFormatters)
      ]);

  @override
  String toString() {
    return 'StacTextField(decoration: $decoration, initialValue: $initialValue, keyboardType: $keyboardType, textInputAction: $textInputAction, textCapitalization: $textCapitalization, style: $style, textAlign: $textAlign, textAlignVertical: $textAlignVertical, textDirection: $textDirection, readOnly: $readOnly, showCursor: $showCursor, expands: $expands, autofocus: $autofocus, obscuringCharacter: $obscuringCharacter, maxLines: $maxLines, minLines: $minLines, maxLength: $maxLength, obscureText: $obscureText, enableSuggestions: $enableSuggestions, enabled: $enabled, cursorWidth: $cursorWidth, cursorHeight: $cursorHeight, cursorColor: $cursorColor, hintText: $hintText, inputFormatters: $inputFormatters)';
  }
}

/// @nodoc
abstract mixin class $StacTextFieldCopyWith<$Res> {
  factory $StacTextFieldCopyWith(
          StacTextField value, $Res Function(StacTextField) _then) =
      _$StacTextFieldCopyWithImpl;
  @useResult
  $Res call(
      {StacInputDecoration? decoration,
      String initialValue,
      StacTextInputType? keyboardType,
      TextInputAction? textInputAction,
      TextCapitalization textCapitalization,
      StacTextStyle? style,
      TextAlign textAlign,
      StacTextAlignVertical? textAlignVertical,
      TextDirection? textDirection,
      bool readOnly,
      bool? showCursor,
      dynamic expands,
      bool autofocus,
      String obscuringCharacter,
      int? maxLines,
      int? minLines,
      int? maxLength,
      bool obscureText,
      bool enableSuggestions,
      bool? enabled,
      StacDouble cursorWidth,
      StacDouble? cursorHeight,
      String? cursorColor,
      String? hintText,
      List<StacInputFormatter> inputFormatters});

  $StacInputDecorationCopyWith<$Res>? get decoration;
  $StacTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$StacTextFieldCopyWithImpl<$Res>
    implements $StacTextFieldCopyWith<$Res> {
  _$StacTextFieldCopyWithImpl(this._self, this._then);

  final StacTextField _self;
  final $Res Function(StacTextField) _then;

  /// Create a copy of StacTextField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decoration = freezed,
    Object? initialValue = null,
    Object? keyboardType = freezed,
    Object? textInputAction = freezed,
    Object? textCapitalization = null,
    Object? style = freezed,
    Object? textAlign = null,
    Object? textAlignVertical = freezed,
    Object? textDirection = freezed,
    Object? readOnly = null,
    Object? showCursor = freezed,
    Object? expands = freezed,
    Object? autofocus = null,
    Object? obscuringCharacter = null,
    Object? maxLines = freezed,
    Object? minLines = freezed,
    Object? maxLength = freezed,
    Object? obscureText = null,
    Object? enableSuggestions = null,
    Object? enabled = freezed,
    Object? cursorWidth = null,
    Object? cursorHeight = freezed,
    Object? cursorColor = freezed,
    Object? hintText = freezed,
    Object? inputFormatters = null,
  }) {
    return _then(_self.copyWith(
      decoration: freezed == decoration
          ? _self.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StacInputDecoration?,
      initialValue: null == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String,
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
      expands: freezed == expands
          ? _self.expands
          : expands // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      obscureText: null == obscureText
          ? _self.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
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
              as StacDouble,
      cursorHeight: freezed == cursorHeight
          ? _self.cursorHeight
          : cursorHeight // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      cursorColor: freezed == cursorColor
          ? _self.cursorColor
          : cursorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      inputFormatters: null == inputFormatters
          ? _self.inputFormatters
          : inputFormatters // ignore: cast_nullable_to_non_nullable
              as List<StacInputFormatter>,
    ));
  }

  /// Create a copy of StacTextField
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

  /// Create a copy of StacTextField
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
}

/// @nodoc
@JsonSerializable()
class _StacTextField implements StacTextField {
  const _StacTextField(
      {this.decoration,
      this.initialValue = '',
      this.keyboardType,
      this.textInputAction,
      this.textCapitalization = TextCapitalization.none,
      this.style,
      this.textAlign = TextAlign.start,
      this.textAlignVertical,
      this.textDirection,
      this.readOnly = false,
      this.showCursor,
      this.expands = false,
      this.autofocus = false,
      this.obscuringCharacter = '•',
      this.maxLines,
      this.minLines,
      this.maxLength,
      this.obscureText = false,
      this.enableSuggestions = true,
      this.enabled,
      this.cursorWidth = const StacDouble(2),
      this.cursorHeight,
      this.cursorColor,
      this.hintText,
      final List<StacInputFormatter> inputFormatters = const []})
      : _inputFormatters = inputFormatters;
  factory _StacTextField.fromJson(Map<String, dynamic> json) =>
      _$StacTextFieldFromJson(json);

  @override
  final StacInputDecoration? decoration;
  @override
  @JsonKey()
  final String initialValue;
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
  final dynamic expands;
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
  @JsonKey()
  final bool obscureText;
  @override
  @JsonKey()
  final bool enableSuggestions;
  @override
  final bool? enabled;
  @override
  @JsonKey()
  final StacDouble cursorWidth;
  @override
  final StacDouble? cursorHeight;
  @override
  final String? cursorColor;
  @override
  final String? hintText;
  final List<StacInputFormatter> _inputFormatters;
  @override
  @JsonKey()
  List<StacInputFormatter> get inputFormatters {
    if (_inputFormatters is EqualUnmodifiableListView) return _inputFormatters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputFormatters);
  }

  /// Create a copy of StacTextField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTextFieldCopyWith<_StacTextField> get copyWith =>
      __$StacTextFieldCopyWithImpl<_StacTextField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTextFieldToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTextField &&
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
            const DeepCollectionEquality().equals(other.expands, expands) &&
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
            const DeepCollectionEquality()
                .equals(other._inputFormatters, _inputFormatters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
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
        const DeepCollectionEquality().hash(expands),
        autofocus,
        obscuringCharacter,
        maxLines,
        minLines,
        maxLength,
        obscureText,
        enableSuggestions,
        enabled,
        cursorWidth,
        cursorHeight,
        cursorColor,
        hintText,
        const DeepCollectionEquality().hash(_inputFormatters)
      ]);

  @override
  String toString() {
    return 'StacTextField(decoration: $decoration, initialValue: $initialValue, keyboardType: $keyboardType, textInputAction: $textInputAction, textCapitalization: $textCapitalization, style: $style, textAlign: $textAlign, textAlignVertical: $textAlignVertical, textDirection: $textDirection, readOnly: $readOnly, showCursor: $showCursor, expands: $expands, autofocus: $autofocus, obscuringCharacter: $obscuringCharacter, maxLines: $maxLines, minLines: $minLines, maxLength: $maxLength, obscureText: $obscureText, enableSuggestions: $enableSuggestions, enabled: $enabled, cursorWidth: $cursorWidth, cursorHeight: $cursorHeight, cursorColor: $cursorColor, hintText: $hintText, inputFormatters: $inputFormatters)';
  }
}

/// @nodoc
abstract mixin class _$StacTextFieldCopyWith<$Res>
    implements $StacTextFieldCopyWith<$Res> {
  factory _$StacTextFieldCopyWith(
          _StacTextField value, $Res Function(_StacTextField) _then) =
      __$StacTextFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacInputDecoration? decoration,
      String initialValue,
      StacTextInputType? keyboardType,
      TextInputAction? textInputAction,
      TextCapitalization textCapitalization,
      StacTextStyle? style,
      TextAlign textAlign,
      StacTextAlignVertical? textAlignVertical,
      TextDirection? textDirection,
      bool readOnly,
      bool? showCursor,
      dynamic expands,
      bool autofocus,
      String obscuringCharacter,
      int? maxLines,
      int? minLines,
      int? maxLength,
      bool obscureText,
      bool enableSuggestions,
      bool? enabled,
      StacDouble cursorWidth,
      StacDouble? cursorHeight,
      String? cursorColor,
      String? hintText,
      List<StacInputFormatter> inputFormatters});

  @override
  $StacInputDecorationCopyWith<$Res>? get decoration;
  @override
  $StacTextStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$StacTextFieldCopyWithImpl<$Res>
    implements _$StacTextFieldCopyWith<$Res> {
  __$StacTextFieldCopyWithImpl(this._self, this._then);

  final _StacTextField _self;
  final $Res Function(_StacTextField) _then;

  /// Create a copy of StacTextField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? decoration = freezed,
    Object? initialValue = null,
    Object? keyboardType = freezed,
    Object? textInputAction = freezed,
    Object? textCapitalization = null,
    Object? style = freezed,
    Object? textAlign = null,
    Object? textAlignVertical = freezed,
    Object? textDirection = freezed,
    Object? readOnly = null,
    Object? showCursor = freezed,
    Object? expands = freezed,
    Object? autofocus = null,
    Object? obscuringCharacter = null,
    Object? maxLines = freezed,
    Object? minLines = freezed,
    Object? maxLength = freezed,
    Object? obscureText = null,
    Object? enableSuggestions = null,
    Object? enabled = freezed,
    Object? cursorWidth = null,
    Object? cursorHeight = freezed,
    Object? cursorColor = freezed,
    Object? hintText = freezed,
    Object? inputFormatters = null,
  }) {
    return _then(_StacTextField(
      decoration: freezed == decoration
          ? _self.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StacInputDecoration?,
      initialValue: null == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String,
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
      expands: freezed == expands
          ? _self.expands
          : expands // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      obscureText: null == obscureText
          ? _self.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
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
              as StacDouble,
      cursorHeight: freezed == cursorHeight
          ? _self.cursorHeight
          : cursorHeight // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      cursorColor: freezed == cursorColor
          ? _self.cursorColor
          : cursorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      inputFormatters: null == inputFormatters
          ? _self._inputFormatters
          : inputFormatters // ignore: cast_nullable_to_non_nullable
              as List<StacInputFormatter>,
    ));
  }

  /// Create a copy of StacTextField
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

  /// Create a copy of StacTextField
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
}

// dart format on
