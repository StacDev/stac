// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_input_decoration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacInputDecoration {
  Map<String, dynamic>? get icon;
  String? get iconColor;
  Map<String, dynamic>? get label;
  String? get labelText;
  StacTextStyle? get labelStyle;
  StacTextStyle? get floatingLabelStyle;
  String? get helperText;
  StacTextStyle? get helperStyle;
  String? get hintText;
  StacTextStyle? get hintStyle;
  int? get helperMaxLines;
  TextDirection? get hintTextDirection;
  int? get hintMaxLines;
  String? get errorText;
  StacTextStyle? get errorStyle;
  int? get errorMaxLines;
  FloatingLabelBehavior? get floatingLabelBehavior;
  StacFloatingLabelAlignment? get floatingLabelAlignment;
  bool get isCollapsed;
  bool get isDense;
  StacEdgeInsets? get contentPadding;
  Map<String, dynamic>? get prefixIcon;
  StacBoxConstraints? get prefixIconConstraints;
  Map<String, dynamic>? get prefix;
  String? get prefixText;
  StacTextStyle? get prefixStyle;
  String? get prefixIconColor;
  Map<String, dynamic>? get suffix;
  Map<String, dynamic>? get suffixIcon;
  StacBoxConstraints? get suffixIconConstraints;
  String? get suffixText;
  StacTextStyle? get suffixStyle;
  String? get suffixIconColor;
  Map<String, dynamic>? get counter;
  String? get counterText;
  StacTextStyle? get counterStyle;
  bool? get filled;
  String? get fillColor;
  String? get hoverColor;
  String? get focusColor;
  StacInputBorder? get errorBorder;
  StacInputBorder? get focusedBorder;
  StacInputBorder? get focusedErrorBorder;
  StacInputBorder? get disabledBorder;
  StacInputBorder? get enabledBorder;
  StacInputBorder? get border;
  bool get enabled;
  String? get semanticCounterText;
  bool get alignLabelWithHint;
  StacBoxConstraints? get constraints;

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacInputDecorationCopyWith<StacInputDecoration> get copyWith =>
      _$StacInputDecorationCopyWithImpl<StacInputDecoration>(
          this as StacInputDecoration, _$identity);

  /// Serializes this StacInputDecoration to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacInputDecoration &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.labelStyle, labelStyle) ||
                other.labelStyle == labelStyle) &&
            (identical(other.floatingLabelStyle, floatingLabelStyle) ||
                other.floatingLabelStyle == floatingLabelStyle) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.helperStyle, helperStyle) ||
                other.helperStyle == helperStyle) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.hintStyle, hintStyle) ||
                other.hintStyle == hintStyle) &&
            (identical(other.helperMaxLines, helperMaxLines) ||
                other.helperMaxLines == helperMaxLines) &&
            (identical(other.hintTextDirection, hintTextDirection) ||
                other.hintTextDirection == hintTextDirection) &&
            (identical(other.hintMaxLines, hintMaxLines) ||
                other.hintMaxLines == hintMaxLines) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.errorStyle, errorStyle) ||
                other.errorStyle == errorStyle) &&
            (identical(other.errorMaxLines, errorMaxLines) ||
                other.errorMaxLines == errorMaxLines) &&
            (identical(other.floatingLabelBehavior, floatingLabelBehavior) ||
                other.floatingLabelBehavior == floatingLabelBehavior) &&
            (identical(other.floatingLabelAlignment, floatingLabelAlignment) ||
                other.floatingLabelAlignment == floatingLabelAlignment) &&
            (identical(other.isCollapsed, isCollapsed) ||
                other.isCollapsed == isCollapsed) &&
            (identical(other.isDense, isDense) || other.isDense == isDense) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            const DeepCollectionEquality()
                .equals(other.prefixIcon, prefixIcon) &&
            (identical(other.prefixIconConstraints, prefixIconConstraints) ||
                other.prefixIconConstraints == prefixIconConstraints) &&
            const DeepCollectionEquality().equals(other.prefix, prefix) &&
            (identical(other.prefixText, prefixText) ||
                other.prefixText == prefixText) &&
            (identical(other.prefixStyle, prefixStyle) ||
                other.prefixStyle == prefixStyle) &&
            (identical(other.prefixIconColor, prefixIconColor) ||
                other.prefixIconColor == prefixIconColor) &&
            const DeepCollectionEquality().equals(other.suffix, suffix) &&
            const DeepCollectionEquality()
                .equals(other.suffixIcon, suffixIcon) &&
            (identical(other.suffixIconConstraints, suffixIconConstraints) ||
                other.suffixIconConstraints == suffixIconConstraints) &&
            (identical(other.suffixText, suffixText) ||
                other.suffixText == suffixText) &&
            (identical(other.suffixStyle, suffixStyle) ||
                other.suffixStyle == suffixStyle) &&
            (identical(other.suffixIconColor, suffixIconColor) ||
                other.suffixIconColor == suffixIconColor) &&
            const DeepCollectionEquality().equals(other.counter, counter) &&
            (identical(other.counterText, counterText) ||
                other.counterText == counterText) &&
            (identical(other.counterStyle, counterStyle) ||
                other.counterStyle == counterStyle) &&
            (identical(other.filled, filled) || other.filled == filled) &&
            (identical(other.fillColor, fillColor) ||
                other.fillColor == fillColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.errorBorder, errorBorder) ||
                other.errorBorder == errorBorder) &&
            (identical(other.focusedBorder, focusedBorder) ||
                other.focusedBorder == focusedBorder) &&
            (identical(other.focusedErrorBorder, focusedErrorBorder) ||
                other.focusedErrorBorder == focusedErrorBorder) &&
            (identical(other.disabledBorder, disabledBorder) ||
                other.disabledBorder == disabledBorder) &&
            (identical(other.enabledBorder, enabledBorder) ||
                other.enabledBorder == enabledBorder) &&
            (identical(other.border, border) || other.border == border) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.semanticCounterText, semanticCounterText) ||
                other.semanticCounterText == semanticCounterText) &&
            (identical(other.alignLabelWithHint, alignLabelWithHint) ||
                other.alignLabelWithHint == alignLabelWithHint) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(icon),
        iconColor,
        const DeepCollectionEquality().hash(label),
        labelText,
        labelStyle,
        floatingLabelStyle,
        helperText,
        helperStyle,
        hintText,
        hintStyle,
        helperMaxLines,
        hintTextDirection,
        hintMaxLines,
        errorText,
        errorStyle,
        errorMaxLines,
        floatingLabelBehavior,
        floatingLabelAlignment,
        isCollapsed,
        isDense,
        contentPadding,
        const DeepCollectionEquality().hash(prefixIcon),
        prefixIconConstraints,
        const DeepCollectionEquality().hash(prefix),
        prefixText,
        prefixStyle,
        prefixIconColor,
        const DeepCollectionEquality().hash(suffix),
        const DeepCollectionEquality().hash(suffixIcon),
        suffixIconConstraints,
        suffixText,
        suffixStyle,
        suffixIconColor,
        const DeepCollectionEquality().hash(counter),
        counterText,
        counterStyle,
        filled,
        fillColor,
        hoverColor,
        focusColor,
        errorBorder,
        focusedBorder,
        focusedErrorBorder,
        disabledBorder,
        enabledBorder,
        border,
        enabled,
        semanticCounterText,
        alignLabelWithHint,
        constraints
      ]);

  @override
  String toString() {
    return 'StacInputDecoration(icon: $icon, iconColor: $iconColor, label: $label, labelText: $labelText, labelStyle: $labelStyle, floatingLabelStyle: $floatingLabelStyle, helperText: $helperText, helperStyle: $helperStyle, hintText: $hintText, hintStyle: $hintStyle, helperMaxLines: $helperMaxLines, hintTextDirection: $hintTextDirection, hintMaxLines: $hintMaxLines, errorText: $errorText, errorStyle: $errorStyle, errorMaxLines: $errorMaxLines, floatingLabelBehavior: $floatingLabelBehavior, floatingLabelAlignment: $floatingLabelAlignment, isCollapsed: $isCollapsed, isDense: $isDense, contentPadding: $contentPadding, prefixIcon: $prefixIcon, prefixIconConstraints: $prefixIconConstraints, prefix: $prefix, prefixText: $prefixText, prefixStyle: $prefixStyle, prefixIconColor: $prefixIconColor, suffix: $suffix, suffixIcon: $suffixIcon, suffixIconConstraints: $suffixIconConstraints, suffixText: $suffixText, suffixStyle: $suffixStyle, suffixIconColor: $suffixIconColor, counter: $counter, counterText: $counterText, counterStyle: $counterStyle, filled: $filled, fillColor: $fillColor, hoverColor: $hoverColor, focusColor: $focusColor, errorBorder: $errorBorder, focusedBorder: $focusedBorder, focusedErrorBorder: $focusedErrorBorder, disabledBorder: $disabledBorder, enabledBorder: $enabledBorder, border: $border, enabled: $enabled, semanticCounterText: $semanticCounterText, alignLabelWithHint: $alignLabelWithHint, constraints: $constraints)';
  }
}

/// @nodoc
abstract mixin class $StacInputDecorationCopyWith<$Res> {
  factory $StacInputDecorationCopyWith(
          StacInputDecoration value, $Res Function(StacInputDecoration) _then) =
      _$StacInputDecorationCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? icon,
      String? iconColor,
      Map<String, dynamic>? label,
      String? labelText,
      StacTextStyle? labelStyle,
      StacTextStyle? floatingLabelStyle,
      String? helperText,
      StacTextStyle? helperStyle,
      String? hintText,
      StacTextStyle? hintStyle,
      int? helperMaxLines,
      TextDirection? hintTextDirection,
      int? hintMaxLines,
      String? errorText,
      StacTextStyle? errorStyle,
      int? errorMaxLines,
      FloatingLabelBehavior? floatingLabelBehavior,
      StacFloatingLabelAlignment? floatingLabelAlignment,
      bool isCollapsed,
      bool isDense,
      StacEdgeInsets? contentPadding,
      Map<String, dynamic>? prefixIcon,
      StacBoxConstraints? prefixIconConstraints,
      Map<String, dynamic>? prefix,
      String? prefixText,
      StacTextStyle? prefixStyle,
      String? prefixIconColor,
      Map<String, dynamic>? suffix,
      Map<String, dynamic>? suffixIcon,
      StacBoxConstraints? suffixIconConstraints,
      String? suffixText,
      StacTextStyle? suffixStyle,
      String? suffixIconColor,
      Map<String, dynamic>? counter,
      String? counterText,
      StacTextStyle? counterStyle,
      bool? filled,
      String? fillColor,
      String? hoverColor,
      String? focusColor,
      StacInputBorder? errorBorder,
      StacInputBorder? focusedBorder,
      StacInputBorder? focusedErrorBorder,
      StacInputBorder? disabledBorder,
      StacInputBorder? enabledBorder,
      StacInputBorder? border,
      bool enabled,
      String? semanticCounterText,
      bool alignLabelWithHint,
      StacBoxConstraints? constraints});

  $StacTextStyleCopyWith<$Res>? get labelStyle;
  $StacTextStyleCopyWith<$Res>? get floatingLabelStyle;
  $StacTextStyleCopyWith<$Res>? get helperStyle;
  $StacTextStyleCopyWith<$Res>? get hintStyle;
  $StacTextStyleCopyWith<$Res>? get errorStyle;
  $StacEdgeInsetsCopyWith<$Res>? get contentPadding;
  $StacBoxConstraintsCopyWith<$Res>? get prefixIconConstraints;
  $StacTextStyleCopyWith<$Res>? get prefixStyle;
  $StacBoxConstraintsCopyWith<$Res>? get suffixIconConstraints;
  $StacTextStyleCopyWith<$Res>? get suffixStyle;
  $StacTextStyleCopyWith<$Res>? get counterStyle;
  $StacInputBorderCopyWith<$Res>? get errorBorder;
  $StacInputBorderCopyWith<$Res>? get focusedBorder;
  $StacInputBorderCopyWith<$Res>? get focusedErrorBorder;
  $StacInputBorderCopyWith<$Res>? get disabledBorder;
  $StacInputBorderCopyWith<$Res>? get enabledBorder;
  $StacInputBorderCopyWith<$Res>? get border;
  $StacBoxConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class _$StacInputDecorationCopyWithImpl<$Res>
    implements $StacInputDecorationCopyWith<$Res> {
  _$StacInputDecorationCopyWithImpl(this._self, this._then);

  final StacInputDecoration _self;
  final $Res Function(StacInputDecoration) _then;

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? iconColor = freezed,
    Object? label = freezed,
    Object? labelText = freezed,
    Object? labelStyle = freezed,
    Object? floatingLabelStyle = freezed,
    Object? helperText = freezed,
    Object? helperStyle = freezed,
    Object? hintText = freezed,
    Object? hintStyle = freezed,
    Object? helperMaxLines = freezed,
    Object? hintTextDirection = freezed,
    Object? hintMaxLines = freezed,
    Object? errorText = freezed,
    Object? errorStyle = freezed,
    Object? errorMaxLines = freezed,
    Object? floatingLabelBehavior = freezed,
    Object? floatingLabelAlignment = freezed,
    Object? isCollapsed = null,
    Object? isDense = null,
    Object? contentPadding = freezed,
    Object? prefixIcon = freezed,
    Object? prefixIconConstraints = freezed,
    Object? prefix = freezed,
    Object? prefixText = freezed,
    Object? prefixStyle = freezed,
    Object? prefixIconColor = freezed,
    Object? suffix = freezed,
    Object? suffixIcon = freezed,
    Object? suffixIconConstraints = freezed,
    Object? suffixText = freezed,
    Object? suffixStyle = freezed,
    Object? suffixIconColor = freezed,
    Object? counter = freezed,
    Object? counterText = freezed,
    Object? counterStyle = freezed,
    Object? filled = freezed,
    Object? fillColor = freezed,
    Object? hoverColor = freezed,
    Object? focusColor = freezed,
    Object? errorBorder = freezed,
    Object? focusedBorder = freezed,
    Object? focusedErrorBorder = freezed,
    Object? disabledBorder = freezed,
    Object? enabledBorder = freezed,
    Object? border = freezed,
    Object? enabled = null,
    Object? semanticCounterText = freezed,
    Object? alignLabelWithHint = null,
    Object? constraints = freezed,
  }) {
    return _then(_self.copyWith(
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      iconColor: freezed == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      labelStyle: freezed == labelStyle
          ? _self.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      floatingLabelStyle: freezed == floatingLabelStyle
          ? _self.floatingLabelStyle
          : floatingLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperStyle: freezed == helperStyle
          ? _self.helperStyle
          : helperStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintStyle: freezed == hintStyle
          ? _self.hintStyle
          : hintStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      helperMaxLines: freezed == helperMaxLines
          ? _self.helperMaxLines
          : helperMaxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      hintTextDirection: freezed == hintTextDirection
          ? _self.hintTextDirection
          : hintTextDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      hintMaxLines: freezed == hintMaxLines
          ? _self.hintMaxLines
          : hintMaxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      errorText: freezed == errorText
          ? _self.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      errorStyle: freezed == errorStyle
          ? _self.errorStyle
          : errorStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      errorMaxLines: freezed == errorMaxLines
          ? _self.errorMaxLines
          : errorMaxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      floatingLabelBehavior: freezed == floatingLabelBehavior
          ? _self.floatingLabelBehavior
          : floatingLabelBehavior // ignore: cast_nullable_to_non_nullable
              as FloatingLabelBehavior?,
      floatingLabelAlignment: freezed == floatingLabelAlignment
          ? _self.floatingLabelAlignment
          : floatingLabelAlignment // ignore: cast_nullable_to_non_nullable
              as StacFloatingLabelAlignment?,
      isCollapsed: null == isCollapsed
          ? _self.isCollapsed
          : isCollapsed // ignore: cast_nullable_to_non_nullable
              as bool,
      isDense: null == isDense
          ? _self.isDense
          : isDense // ignore: cast_nullable_to_non_nullable
              as bool,
      contentPadding: freezed == contentPadding
          ? _self.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      prefixIcon: freezed == prefixIcon
          ? _self.prefixIcon
          : prefixIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      prefixIconConstraints: freezed == prefixIconConstraints
          ? _self.prefixIconConstraints
          : prefixIconConstraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      prefix: freezed == prefix
          ? _self.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      prefixText: freezed == prefixText
          ? _self.prefixText
          : prefixText // ignore: cast_nullable_to_non_nullable
              as String?,
      prefixStyle: freezed == prefixStyle
          ? _self.prefixStyle
          : prefixStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      prefixIconColor: freezed == prefixIconColor
          ? _self.prefixIconColor
          : prefixIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _self.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      suffixIcon: freezed == suffixIcon
          ? _self.suffixIcon
          : suffixIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      suffixIconConstraints: freezed == suffixIconConstraints
          ? _self.suffixIconConstraints
          : suffixIconConstraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      suffixText: freezed == suffixText
          ? _self.suffixText
          : suffixText // ignore: cast_nullable_to_non_nullable
              as String?,
      suffixStyle: freezed == suffixStyle
          ? _self.suffixStyle
          : suffixStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      suffixIconColor: freezed == suffixIconColor
          ? _self.suffixIconColor
          : suffixIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      counter: freezed == counter
          ? _self.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      counterText: freezed == counterText
          ? _self.counterText
          : counterText // ignore: cast_nullable_to_non_nullable
              as String?,
      counterStyle: freezed == counterStyle
          ? _self.counterStyle
          : counterStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      filled: freezed == filled
          ? _self.filled
          : filled // ignore: cast_nullable_to_non_nullable
              as bool?,
      fillColor: freezed == fillColor
          ? _self.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      errorBorder: freezed == errorBorder
          ? _self.errorBorder
          : errorBorder // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      focusedBorder: freezed == focusedBorder
          ? _self.focusedBorder
          : focusedBorder // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      focusedErrorBorder: freezed == focusedErrorBorder
          ? _self.focusedErrorBorder
          : focusedErrorBorder // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      disabledBorder: freezed == disabledBorder
          ? _self.disabledBorder
          : disabledBorder // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      enabledBorder: freezed == enabledBorder
          ? _self.enabledBorder
          : enabledBorder // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      border: freezed == border
          ? _self.border
          : border // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      semanticCounterText: freezed == semanticCounterText
          ? _self.semanticCounterText
          : semanticCounterText // ignore: cast_nullable_to_non_nullable
              as String?,
      alignLabelWithHint: null == alignLabelWithHint
          ? _self.alignLabelWithHint
          : alignLabelWithHint // ignore: cast_nullable_to_non_nullable
              as bool,
      constraints: freezed == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
    ));
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get labelStyle {
    if (_self.labelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.labelStyle!, (value) {
      return _then(_self.copyWith(labelStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get floatingLabelStyle {
    if (_self.floatingLabelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.floatingLabelStyle!, (value) {
      return _then(_self.copyWith(floatingLabelStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get helperStyle {
    if (_self.helperStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.helperStyle!, (value) {
      return _then(_self.copyWith(helperStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get hintStyle {
    if (_self.hintStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.hintStyle!, (value) {
      return _then(_self.copyWith(hintStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get errorStyle {
    if (_self.errorStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.errorStyle!, (value) {
      return _then(_self.copyWith(errorStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get contentPadding {
    if (_self.contentPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.contentPadding!, (value) {
      return _then(_self.copyWith(contentPadding: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get prefixIconConstraints {
    if (_self.prefixIconConstraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.prefixIconConstraints!,
        (value) {
      return _then(_self.copyWith(prefixIconConstraints: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get prefixStyle {
    if (_self.prefixStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.prefixStyle!, (value) {
      return _then(_self.copyWith(prefixStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get suffixIconConstraints {
    if (_self.suffixIconConstraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.suffixIconConstraints!,
        (value) {
      return _then(_self.copyWith(suffixIconConstraints: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get suffixStyle {
    if (_self.suffixStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.suffixStyle!, (value) {
      return _then(_self.copyWith(suffixStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get counterStyle {
    if (_self.counterStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.counterStyle!, (value) {
      return _then(_self.copyWith(counterStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get errorBorder {
    if (_self.errorBorder == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.errorBorder!, (value) {
      return _then(_self.copyWith(errorBorder: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get focusedBorder {
    if (_self.focusedBorder == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.focusedBorder!, (value) {
      return _then(_self.copyWith(focusedBorder: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get focusedErrorBorder {
    if (_self.focusedErrorBorder == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.focusedErrorBorder!, (value) {
      return _then(_self.copyWith(focusedErrorBorder: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get disabledBorder {
    if (_self.disabledBorder == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.disabledBorder!, (value) {
      return _then(_self.copyWith(disabledBorder: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get enabledBorder {
    if (_self.enabledBorder == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.enabledBorder!, (value) {
      return _then(_self.copyWith(enabledBorder: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get border {
    if (_self.border == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.border!, (value) {
      return _then(_self.copyWith(border: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.constraints!, (value) {
      return _then(_self.copyWith(constraints: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacInputDecoration implements StacInputDecoration {
  const _StacInputDecoration(
      {final Map<String, dynamic>? icon,
      this.iconColor,
      final Map<String, dynamic>? label,
      this.labelText,
      this.labelStyle,
      this.floatingLabelStyle,
      this.helperText,
      this.helperStyle,
      this.hintText,
      this.hintStyle,
      this.helperMaxLines,
      this.hintTextDirection,
      this.hintMaxLines,
      this.errorText,
      this.errorStyle,
      this.errorMaxLines,
      this.floatingLabelBehavior,
      this.floatingLabelAlignment,
      this.isCollapsed = false,
      this.isDense = false,
      this.contentPadding,
      final Map<String, dynamic>? prefixIcon,
      this.prefixIconConstraints,
      final Map<String, dynamic>? prefix,
      this.prefixText,
      this.prefixStyle,
      this.prefixIconColor,
      final Map<String, dynamic>? suffix,
      final Map<String, dynamic>? suffixIcon,
      this.suffixIconConstraints,
      this.suffixText,
      this.suffixStyle,
      this.suffixIconColor,
      final Map<String, dynamic>? counter,
      this.counterText,
      this.counterStyle,
      this.filled,
      this.fillColor,
      this.hoverColor,
      this.focusColor,
      this.errorBorder,
      this.focusedBorder,
      this.focusedErrorBorder,
      this.disabledBorder,
      this.enabledBorder,
      this.border,
      this.enabled = true,
      this.semanticCounterText,
      this.alignLabelWithHint = false,
      this.constraints})
      : _icon = icon,
        _label = label,
        _prefixIcon = prefixIcon,
        _prefix = prefix,
        _suffix = suffix,
        _suffixIcon = suffixIcon,
        _counter = counter;
  factory _StacInputDecoration.fromJson(Map<String, dynamic> json) =>
      _$StacInputDecorationFromJson(json);

  final Map<String, dynamic>? _icon;
  @override
  Map<String, dynamic>? get icon {
    final value = _icon;
    if (value == null) return null;
    if (_icon is EqualUnmodifiableMapView) return _icon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? iconColor;
  final Map<String, dynamic>? _label;
  @override
  Map<String, dynamic>? get label {
    final value = _label;
    if (value == null) return null;
    if (_label is EqualUnmodifiableMapView) return _label;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? labelText;
  @override
  final StacTextStyle? labelStyle;
  @override
  final StacTextStyle? floatingLabelStyle;
  @override
  final String? helperText;
  @override
  final StacTextStyle? helperStyle;
  @override
  final String? hintText;
  @override
  final StacTextStyle? hintStyle;
  @override
  final int? helperMaxLines;
  @override
  final TextDirection? hintTextDirection;
  @override
  final int? hintMaxLines;
  @override
  final String? errorText;
  @override
  final StacTextStyle? errorStyle;
  @override
  final int? errorMaxLines;
  @override
  final FloatingLabelBehavior? floatingLabelBehavior;
  @override
  final StacFloatingLabelAlignment? floatingLabelAlignment;
  @override
  @JsonKey()
  final bool isCollapsed;
  @override
  @JsonKey()
  final bool isDense;
  @override
  final StacEdgeInsets? contentPadding;
  final Map<String, dynamic>? _prefixIcon;
  @override
  Map<String, dynamic>? get prefixIcon {
    final value = _prefixIcon;
    if (value == null) return null;
    if (_prefixIcon is EqualUnmodifiableMapView) return _prefixIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacBoxConstraints? prefixIconConstraints;
  final Map<String, dynamic>? _prefix;
  @override
  Map<String, dynamic>? get prefix {
    final value = _prefix;
    if (value == null) return null;
    if (_prefix is EqualUnmodifiableMapView) return _prefix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? prefixText;
  @override
  final StacTextStyle? prefixStyle;
  @override
  final String? prefixIconColor;
  final Map<String, dynamic>? _suffix;
  @override
  Map<String, dynamic>? get suffix {
    final value = _suffix;
    if (value == null) return null;
    if (_suffix is EqualUnmodifiableMapView) return _suffix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _suffixIcon;
  @override
  Map<String, dynamic>? get suffixIcon {
    final value = _suffixIcon;
    if (value == null) return null;
    if (_suffixIcon is EqualUnmodifiableMapView) return _suffixIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacBoxConstraints? suffixIconConstraints;
  @override
  final String? suffixText;
  @override
  final StacTextStyle? suffixStyle;
  @override
  final String? suffixIconColor;
  final Map<String, dynamic>? _counter;
  @override
  Map<String, dynamic>? get counter {
    final value = _counter;
    if (value == null) return null;
    if (_counter is EqualUnmodifiableMapView) return _counter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? counterText;
  @override
  final StacTextStyle? counterStyle;
  @override
  final bool? filled;
  @override
  final String? fillColor;
  @override
  final String? hoverColor;
  @override
  final String? focusColor;
  @override
  final StacInputBorder? errorBorder;
  @override
  final StacInputBorder? focusedBorder;
  @override
  final StacInputBorder? focusedErrorBorder;
  @override
  final StacInputBorder? disabledBorder;
  @override
  final StacInputBorder? enabledBorder;
  @override
  final StacInputBorder? border;
  @override
  @JsonKey()
  final bool enabled;
  @override
  final String? semanticCounterText;
  @override
  @JsonKey()
  final bool alignLabelWithHint;
  @override
  final StacBoxConstraints? constraints;

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacInputDecorationCopyWith<_StacInputDecoration> get copyWith =>
      __$StacInputDecorationCopyWithImpl<_StacInputDecoration>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacInputDecorationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacInputDecoration &&
            const DeepCollectionEquality().equals(other._icon, _icon) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            const DeepCollectionEquality().equals(other._label, _label) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.labelStyle, labelStyle) ||
                other.labelStyle == labelStyle) &&
            (identical(other.floatingLabelStyle, floatingLabelStyle) ||
                other.floatingLabelStyle == floatingLabelStyle) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.helperStyle, helperStyle) ||
                other.helperStyle == helperStyle) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.hintStyle, hintStyle) ||
                other.hintStyle == hintStyle) &&
            (identical(other.helperMaxLines, helperMaxLines) ||
                other.helperMaxLines == helperMaxLines) &&
            (identical(other.hintTextDirection, hintTextDirection) ||
                other.hintTextDirection == hintTextDirection) &&
            (identical(other.hintMaxLines, hintMaxLines) ||
                other.hintMaxLines == hintMaxLines) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.errorStyle, errorStyle) ||
                other.errorStyle == errorStyle) &&
            (identical(other.errorMaxLines, errorMaxLines) ||
                other.errorMaxLines == errorMaxLines) &&
            (identical(other.floatingLabelBehavior, floatingLabelBehavior) ||
                other.floatingLabelBehavior == floatingLabelBehavior) &&
            (identical(other.floatingLabelAlignment, floatingLabelAlignment) ||
                other.floatingLabelAlignment == floatingLabelAlignment) &&
            (identical(other.isCollapsed, isCollapsed) ||
                other.isCollapsed == isCollapsed) &&
            (identical(other.isDense, isDense) || other.isDense == isDense) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            const DeepCollectionEquality()
                .equals(other._prefixIcon, _prefixIcon) &&
            (identical(other.prefixIconConstraints, prefixIconConstraints) ||
                other.prefixIconConstraints == prefixIconConstraints) &&
            const DeepCollectionEquality().equals(other._prefix, _prefix) &&
            (identical(other.prefixText, prefixText) ||
                other.prefixText == prefixText) &&
            (identical(other.prefixStyle, prefixStyle) ||
                other.prefixStyle == prefixStyle) &&
            (identical(other.prefixIconColor, prefixIconColor) ||
                other.prefixIconColor == prefixIconColor) &&
            const DeepCollectionEquality().equals(other._suffix, _suffix) &&
            const DeepCollectionEquality()
                .equals(other._suffixIcon, _suffixIcon) &&
            (identical(other.suffixIconConstraints, suffixIconConstraints) ||
                other.suffixIconConstraints == suffixIconConstraints) &&
            (identical(other.suffixText, suffixText) ||
                other.suffixText == suffixText) &&
            (identical(other.suffixStyle, suffixStyle) ||
                other.suffixStyle == suffixStyle) &&
            (identical(other.suffixIconColor, suffixIconColor) ||
                other.suffixIconColor == suffixIconColor) &&
            const DeepCollectionEquality().equals(other._counter, _counter) &&
            (identical(other.counterText, counterText) ||
                other.counterText == counterText) &&
            (identical(other.counterStyle, counterStyle) ||
                other.counterStyle == counterStyle) &&
            (identical(other.filled, filled) || other.filled == filled) &&
            (identical(other.fillColor, fillColor) ||
                other.fillColor == fillColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.errorBorder, errorBorder) ||
                other.errorBorder == errorBorder) &&
            (identical(other.focusedBorder, focusedBorder) ||
                other.focusedBorder == focusedBorder) &&
            (identical(other.focusedErrorBorder, focusedErrorBorder) ||
                other.focusedErrorBorder == focusedErrorBorder) &&
            (identical(other.disabledBorder, disabledBorder) ||
                other.disabledBorder == disabledBorder) &&
            (identical(other.enabledBorder, enabledBorder) ||
                other.enabledBorder == enabledBorder) &&
            (identical(other.border, border) || other.border == border) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.semanticCounterText, semanticCounterText) ||
                other.semanticCounterText == semanticCounterText) &&
            (identical(other.alignLabelWithHint, alignLabelWithHint) ||
                other.alignLabelWithHint == alignLabelWithHint) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_icon),
        iconColor,
        const DeepCollectionEquality().hash(_label),
        labelText,
        labelStyle,
        floatingLabelStyle,
        helperText,
        helperStyle,
        hintText,
        hintStyle,
        helperMaxLines,
        hintTextDirection,
        hintMaxLines,
        errorText,
        errorStyle,
        errorMaxLines,
        floatingLabelBehavior,
        floatingLabelAlignment,
        isCollapsed,
        isDense,
        contentPadding,
        const DeepCollectionEquality().hash(_prefixIcon),
        prefixIconConstraints,
        const DeepCollectionEquality().hash(_prefix),
        prefixText,
        prefixStyle,
        prefixIconColor,
        const DeepCollectionEquality().hash(_suffix),
        const DeepCollectionEquality().hash(_suffixIcon),
        suffixIconConstraints,
        suffixText,
        suffixStyle,
        suffixIconColor,
        const DeepCollectionEquality().hash(_counter),
        counterText,
        counterStyle,
        filled,
        fillColor,
        hoverColor,
        focusColor,
        errorBorder,
        focusedBorder,
        focusedErrorBorder,
        disabledBorder,
        enabledBorder,
        border,
        enabled,
        semanticCounterText,
        alignLabelWithHint,
        constraints
      ]);

  @override
  String toString() {
    return 'StacInputDecoration(icon: $icon, iconColor: $iconColor, label: $label, labelText: $labelText, labelStyle: $labelStyle, floatingLabelStyle: $floatingLabelStyle, helperText: $helperText, helperStyle: $helperStyle, hintText: $hintText, hintStyle: $hintStyle, helperMaxLines: $helperMaxLines, hintTextDirection: $hintTextDirection, hintMaxLines: $hintMaxLines, errorText: $errorText, errorStyle: $errorStyle, errorMaxLines: $errorMaxLines, floatingLabelBehavior: $floatingLabelBehavior, floatingLabelAlignment: $floatingLabelAlignment, isCollapsed: $isCollapsed, isDense: $isDense, contentPadding: $contentPadding, prefixIcon: $prefixIcon, prefixIconConstraints: $prefixIconConstraints, prefix: $prefix, prefixText: $prefixText, prefixStyle: $prefixStyle, prefixIconColor: $prefixIconColor, suffix: $suffix, suffixIcon: $suffixIcon, suffixIconConstraints: $suffixIconConstraints, suffixText: $suffixText, suffixStyle: $suffixStyle, suffixIconColor: $suffixIconColor, counter: $counter, counterText: $counterText, counterStyle: $counterStyle, filled: $filled, fillColor: $fillColor, hoverColor: $hoverColor, focusColor: $focusColor, errorBorder: $errorBorder, focusedBorder: $focusedBorder, focusedErrorBorder: $focusedErrorBorder, disabledBorder: $disabledBorder, enabledBorder: $enabledBorder, border: $border, enabled: $enabled, semanticCounterText: $semanticCounterText, alignLabelWithHint: $alignLabelWithHint, constraints: $constraints)';
  }
}

/// @nodoc
abstract mixin class _$StacInputDecorationCopyWith<$Res>
    implements $StacInputDecorationCopyWith<$Res> {
  factory _$StacInputDecorationCopyWith(_StacInputDecoration value,
          $Res Function(_StacInputDecoration) _then) =
      __$StacInputDecorationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? icon,
      String? iconColor,
      Map<String, dynamic>? label,
      String? labelText,
      StacTextStyle? labelStyle,
      StacTextStyle? floatingLabelStyle,
      String? helperText,
      StacTextStyle? helperStyle,
      String? hintText,
      StacTextStyle? hintStyle,
      int? helperMaxLines,
      TextDirection? hintTextDirection,
      int? hintMaxLines,
      String? errorText,
      StacTextStyle? errorStyle,
      int? errorMaxLines,
      FloatingLabelBehavior? floatingLabelBehavior,
      StacFloatingLabelAlignment? floatingLabelAlignment,
      bool isCollapsed,
      bool isDense,
      StacEdgeInsets? contentPadding,
      Map<String, dynamic>? prefixIcon,
      StacBoxConstraints? prefixIconConstraints,
      Map<String, dynamic>? prefix,
      String? prefixText,
      StacTextStyle? prefixStyle,
      String? prefixIconColor,
      Map<String, dynamic>? suffix,
      Map<String, dynamic>? suffixIcon,
      StacBoxConstraints? suffixIconConstraints,
      String? suffixText,
      StacTextStyle? suffixStyle,
      String? suffixIconColor,
      Map<String, dynamic>? counter,
      String? counterText,
      StacTextStyle? counterStyle,
      bool? filled,
      String? fillColor,
      String? hoverColor,
      String? focusColor,
      StacInputBorder? errorBorder,
      StacInputBorder? focusedBorder,
      StacInputBorder? focusedErrorBorder,
      StacInputBorder? disabledBorder,
      StacInputBorder? enabledBorder,
      StacInputBorder? border,
      bool enabled,
      String? semanticCounterText,
      bool alignLabelWithHint,
      StacBoxConstraints? constraints});

  @override
  $StacTextStyleCopyWith<$Res>? get labelStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get floatingLabelStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get helperStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get hintStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get errorStyle;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get contentPadding;
  @override
  $StacBoxConstraintsCopyWith<$Res>? get prefixIconConstraints;
  @override
  $StacTextStyleCopyWith<$Res>? get prefixStyle;
  @override
  $StacBoxConstraintsCopyWith<$Res>? get suffixIconConstraints;
  @override
  $StacTextStyleCopyWith<$Res>? get suffixStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get counterStyle;
  @override
  $StacInputBorderCopyWith<$Res>? get errorBorder;
  @override
  $StacInputBorderCopyWith<$Res>? get focusedBorder;
  @override
  $StacInputBorderCopyWith<$Res>? get focusedErrorBorder;
  @override
  $StacInputBorderCopyWith<$Res>? get disabledBorder;
  @override
  $StacInputBorderCopyWith<$Res>? get enabledBorder;
  @override
  $StacInputBorderCopyWith<$Res>? get border;
  @override
  $StacBoxConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class __$StacInputDecorationCopyWithImpl<$Res>
    implements _$StacInputDecorationCopyWith<$Res> {
  __$StacInputDecorationCopyWithImpl(this._self, this._then);

  final _StacInputDecoration _self;
  final $Res Function(_StacInputDecoration) _then;

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? icon = freezed,
    Object? iconColor = freezed,
    Object? label = freezed,
    Object? labelText = freezed,
    Object? labelStyle = freezed,
    Object? floatingLabelStyle = freezed,
    Object? helperText = freezed,
    Object? helperStyle = freezed,
    Object? hintText = freezed,
    Object? hintStyle = freezed,
    Object? helperMaxLines = freezed,
    Object? hintTextDirection = freezed,
    Object? hintMaxLines = freezed,
    Object? errorText = freezed,
    Object? errorStyle = freezed,
    Object? errorMaxLines = freezed,
    Object? floatingLabelBehavior = freezed,
    Object? floatingLabelAlignment = freezed,
    Object? isCollapsed = null,
    Object? isDense = null,
    Object? contentPadding = freezed,
    Object? prefixIcon = freezed,
    Object? prefixIconConstraints = freezed,
    Object? prefix = freezed,
    Object? prefixText = freezed,
    Object? prefixStyle = freezed,
    Object? prefixIconColor = freezed,
    Object? suffix = freezed,
    Object? suffixIcon = freezed,
    Object? suffixIconConstraints = freezed,
    Object? suffixText = freezed,
    Object? suffixStyle = freezed,
    Object? suffixIconColor = freezed,
    Object? counter = freezed,
    Object? counterText = freezed,
    Object? counterStyle = freezed,
    Object? filled = freezed,
    Object? fillColor = freezed,
    Object? hoverColor = freezed,
    Object? focusColor = freezed,
    Object? errorBorder = freezed,
    Object? focusedBorder = freezed,
    Object? focusedErrorBorder = freezed,
    Object? disabledBorder = freezed,
    Object? enabledBorder = freezed,
    Object? border = freezed,
    Object? enabled = null,
    Object? semanticCounterText = freezed,
    Object? alignLabelWithHint = null,
    Object? constraints = freezed,
  }) {
    return _then(_StacInputDecoration(
      icon: freezed == icon
          ? _self._icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      iconColor: freezed == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _self._label
          : label // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      labelStyle: freezed == labelStyle
          ? _self.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      floatingLabelStyle: freezed == floatingLabelStyle
          ? _self.floatingLabelStyle
          : floatingLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperStyle: freezed == helperStyle
          ? _self.helperStyle
          : helperStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintStyle: freezed == hintStyle
          ? _self.hintStyle
          : hintStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      helperMaxLines: freezed == helperMaxLines
          ? _self.helperMaxLines
          : helperMaxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      hintTextDirection: freezed == hintTextDirection
          ? _self.hintTextDirection
          : hintTextDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      hintMaxLines: freezed == hintMaxLines
          ? _self.hintMaxLines
          : hintMaxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      errorText: freezed == errorText
          ? _self.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      errorStyle: freezed == errorStyle
          ? _self.errorStyle
          : errorStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      errorMaxLines: freezed == errorMaxLines
          ? _self.errorMaxLines
          : errorMaxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      floatingLabelBehavior: freezed == floatingLabelBehavior
          ? _self.floatingLabelBehavior
          : floatingLabelBehavior // ignore: cast_nullable_to_non_nullable
              as FloatingLabelBehavior?,
      floatingLabelAlignment: freezed == floatingLabelAlignment
          ? _self.floatingLabelAlignment
          : floatingLabelAlignment // ignore: cast_nullable_to_non_nullable
              as StacFloatingLabelAlignment?,
      isCollapsed: null == isCollapsed
          ? _self.isCollapsed
          : isCollapsed // ignore: cast_nullable_to_non_nullable
              as bool,
      isDense: null == isDense
          ? _self.isDense
          : isDense // ignore: cast_nullable_to_non_nullable
              as bool,
      contentPadding: freezed == contentPadding
          ? _self.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      prefixIcon: freezed == prefixIcon
          ? _self._prefixIcon
          : prefixIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      prefixIconConstraints: freezed == prefixIconConstraints
          ? _self.prefixIconConstraints
          : prefixIconConstraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      prefix: freezed == prefix
          ? _self._prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      prefixText: freezed == prefixText
          ? _self.prefixText
          : prefixText // ignore: cast_nullable_to_non_nullable
              as String?,
      prefixStyle: freezed == prefixStyle
          ? _self.prefixStyle
          : prefixStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      prefixIconColor: freezed == prefixIconColor
          ? _self.prefixIconColor
          : prefixIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _self._suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      suffixIcon: freezed == suffixIcon
          ? _self._suffixIcon
          : suffixIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      suffixIconConstraints: freezed == suffixIconConstraints
          ? _self.suffixIconConstraints
          : suffixIconConstraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      suffixText: freezed == suffixText
          ? _self.suffixText
          : suffixText // ignore: cast_nullable_to_non_nullable
              as String?,
      suffixStyle: freezed == suffixStyle
          ? _self.suffixStyle
          : suffixStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      suffixIconColor: freezed == suffixIconColor
          ? _self.suffixIconColor
          : suffixIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      counter: freezed == counter
          ? _self._counter
          : counter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      counterText: freezed == counterText
          ? _self.counterText
          : counterText // ignore: cast_nullable_to_non_nullable
              as String?,
      counterStyle: freezed == counterStyle
          ? _self.counterStyle
          : counterStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      filled: freezed == filled
          ? _self.filled
          : filled // ignore: cast_nullable_to_non_nullable
              as bool?,
      fillColor: freezed == fillColor
          ? _self.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      errorBorder: freezed == errorBorder
          ? _self.errorBorder
          : errorBorder // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      focusedBorder: freezed == focusedBorder
          ? _self.focusedBorder
          : focusedBorder // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      focusedErrorBorder: freezed == focusedErrorBorder
          ? _self.focusedErrorBorder
          : focusedErrorBorder // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      disabledBorder: freezed == disabledBorder
          ? _self.disabledBorder
          : disabledBorder // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      enabledBorder: freezed == enabledBorder
          ? _self.enabledBorder
          : enabledBorder // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      border: freezed == border
          ? _self.border
          : border // ignore: cast_nullable_to_non_nullable
              as StacInputBorder?,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      semanticCounterText: freezed == semanticCounterText
          ? _self.semanticCounterText
          : semanticCounterText // ignore: cast_nullable_to_non_nullable
              as String?,
      alignLabelWithHint: null == alignLabelWithHint
          ? _self.alignLabelWithHint
          : alignLabelWithHint // ignore: cast_nullable_to_non_nullable
              as bool,
      constraints: freezed == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
    ));
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get labelStyle {
    if (_self.labelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.labelStyle!, (value) {
      return _then(_self.copyWith(labelStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get floatingLabelStyle {
    if (_self.floatingLabelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.floatingLabelStyle!, (value) {
      return _then(_self.copyWith(floatingLabelStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get helperStyle {
    if (_self.helperStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.helperStyle!, (value) {
      return _then(_self.copyWith(helperStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get hintStyle {
    if (_self.hintStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.hintStyle!, (value) {
      return _then(_self.copyWith(hintStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get errorStyle {
    if (_self.errorStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.errorStyle!, (value) {
      return _then(_self.copyWith(errorStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get contentPadding {
    if (_self.contentPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.contentPadding!, (value) {
      return _then(_self.copyWith(contentPadding: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get prefixIconConstraints {
    if (_self.prefixIconConstraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.prefixIconConstraints!,
        (value) {
      return _then(_self.copyWith(prefixIconConstraints: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get prefixStyle {
    if (_self.prefixStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.prefixStyle!, (value) {
      return _then(_self.copyWith(prefixStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get suffixIconConstraints {
    if (_self.suffixIconConstraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.suffixIconConstraints!,
        (value) {
      return _then(_self.copyWith(suffixIconConstraints: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get suffixStyle {
    if (_self.suffixStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.suffixStyle!, (value) {
      return _then(_self.copyWith(suffixStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get counterStyle {
    if (_self.counterStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.counterStyle!, (value) {
      return _then(_self.copyWith(counterStyle: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get errorBorder {
    if (_self.errorBorder == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.errorBorder!, (value) {
      return _then(_self.copyWith(errorBorder: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get focusedBorder {
    if (_self.focusedBorder == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.focusedBorder!, (value) {
      return _then(_self.copyWith(focusedBorder: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get focusedErrorBorder {
    if (_self.focusedErrorBorder == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.focusedErrorBorder!, (value) {
      return _then(_self.copyWith(focusedErrorBorder: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get disabledBorder {
    if (_self.disabledBorder == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.disabledBorder!, (value) {
      return _then(_self.copyWith(disabledBorder: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get enabledBorder {
    if (_self.enabledBorder == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.enabledBorder!, (value) {
      return _then(_self.copyWith(enabledBorder: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<$Res>? get border {
    if (_self.border == null) {
      return null;
    }

    return $StacInputBorderCopyWith<$Res>(_self.border!, (value) {
      return _then(_self.copyWith(border: value));
    });
  }

  /// Create a copy of StacInputDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.constraints!, (value) {
      return _then(_self.copyWith(constraints: value));
    });
  }
}

// dart format on
