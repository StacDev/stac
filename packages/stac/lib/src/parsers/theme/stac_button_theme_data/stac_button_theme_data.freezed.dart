// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_button_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacButtonThemeData {
  ButtonTextTheme get textTheme;
  double get minWidth;
  double get height;
  StacEdgeInsets? get padding;
  StacShapeBorder? get shape;
  ButtonBarLayoutBehavior get layoutBehavior;
  bool get alignedDropdown;
  String? get buttonColor;
  String? get disabledColor;
  String? get focusColor;
  String? get hoverColor;
  String? get highlightColor;
  String? get splashColor;
  StacColorScheme? get colorScheme;
  MaterialTapTargetSize? get materialTapTargetSize;

  /// Create a copy of StacButtonThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacButtonThemeDataCopyWith<StacButtonThemeData> get copyWith =>
      _$StacButtonThemeDataCopyWithImpl<StacButtonThemeData>(
          this as StacButtonThemeData, _$identity);

  /// Serializes this StacButtonThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacButtonThemeData &&
            (identical(other.textTheme, textTheme) ||
                other.textTheme == textTheme) &&
            (identical(other.minWidth, minWidth) ||
                other.minWidth == minWidth) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.layoutBehavior, layoutBehavior) ||
                other.layoutBehavior == layoutBehavior) &&
            (identical(other.alignedDropdown, alignedDropdown) ||
                other.alignedDropdown == alignedDropdown) &&
            (identical(other.buttonColor, buttonColor) ||
                other.buttonColor == buttonColor) &&
            (identical(other.disabledColor, disabledColor) ||
                other.disabledColor == disabledColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.highlightColor, highlightColor) ||
                other.highlightColor == highlightColor) &&
            (identical(other.splashColor, splashColor) ||
                other.splashColor == splashColor) &&
            (identical(other.colorScheme, colorScheme) ||
                other.colorScheme == colorScheme) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      textTheme,
      minWidth,
      height,
      padding,
      shape,
      layoutBehavior,
      alignedDropdown,
      buttonColor,
      disabledColor,
      focusColor,
      hoverColor,
      highlightColor,
      splashColor,
      colorScheme,
      materialTapTargetSize);

  @override
  String toString() {
    return 'StacButtonThemeData(textTheme: $textTheme, minWidth: $minWidth, height: $height, padding: $padding, shape: $shape, layoutBehavior: $layoutBehavior, alignedDropdown: $alignedDropdown, buttonColor: $buttonColor, disabledColor: $disabledColor, focusColor: $focusColor, hoverColor: $hoverColor, highlightColor: $highlightColor, splashColor: $splashColor, colorScheme: $colorScheme, materialTapTargetSize: $materialTapTargetSize)';
  }
}

/// @nodoc
abstract mixin class $StacButtonThemeDataCopyWith<$Res> {
  factory $StacButtonThemeDataCopyWith(
          StacButtonThemeData value, $Res Function(StacButtonThemeData) _then) =
      _$StacButtonThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {ButtonTextTheme textTheme,
      double minWidth,
      double height,
      StacEdgeInsets? padding,
      StacShapeBorder? shape,
      ButtonBarLayoutBehavior layoutBehavior,
      bool alignedDropdown,
      String? buttonColor,
      String? disabledColor,
      String? focusColor,
      String? hoverColor,
      String? highlightColor,
      String? splashColor,
      StacColorScheme? colorScheme,
      MaterialTapTargetSize? materialTapTargetSize});

  $StacEdgeInsetsCopyWith<$Res>? get padding;
  $StacShapeBorderCopyWith<$Res>? get shape;
  $StacColorSchemeCopyWith<$Res>? get colorScheme;
}

/// @nodoc
class _$StacButtonThemeDataCopyWithImpl<$Res>
    implements $StacButtonThemeDataCopyWith<$Res> {
  _$StacButtonThemeDataCopyWithImpl(this._self, this._then);

  final StacButtonThemeData _self;
  final $Res Function(StacButtonThemeData) _then;

  /// Create a copy of StacButtonThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textTheme = null,
    Object? minWidth = null,
    Object? height = null,
    Object? padding = freezed,
    Object? shape = freezed,
    Object? layoutBehavior = null,
    Object? alignedDropdown = null,
    Object? buttonColor = freezed,
    Object? disabledColor = freezed,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? highlightColor = freezed,
    Object? splashColor = freezed,
    Object? colorScheme = freezed,
    Object? materialTapTargetSize = freezed,
  }) {
    return _then(_self.copyWith(
      textTheme: null == textTheme
          ? _self.textTheme
          : textTheme // ignore: cast_nullable_to_non_nullable
              as ButtonTextTheme,
      minWidth: null == minWidth
          ? _self.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      layoutBehavior: null == layoutBehavior
          ? _self.layoutBehavior
          : layoutBehavior // ignore: cast_nullable_to_non_nullable
              as ButtonBarLayoutBehavior,
      alignedDropdown: null == alignedDropdown
          ? _self.alignedDropdown
          : alignedDropdown // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonColor: freezed == buttonColor
          ? _self.buttonColor
          : buttonColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledColor: freezed == disabledColor
          ? _self.disabledColor
          : disabledColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightColor: freezed == highlightColor
          ? _self.highlightColor
          : highlightColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashColor: freezed == splashColor
          ? _self.splashColor
          : splashColor // ignore: cast_nullable_to_non_nullable
              as String?,
      colorScheme: freezed == colorScheme
          ? _self.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as StacColorScheme?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
    ));
  }

  /// Create a copy of StacButtonThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get padding {
    if (_self.padding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.padding!, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }

  /// Create a copy of StacButtonThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacShapeBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacButtonThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacColorSchemeCopyWith<$Res>? get colorScheme {
    if (_self.colorScheme == null) {
      return null;
    }

    return $StacColorSchemeCopyWith<$Res>(_self.colorScheme!, (value) {
      return _then(_self.copyWith(colorScheme: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacButtonThemeData implements StacButtonThemeData {
  const _StacButtonThemeData(
      {this.textTheme = ButtonTextTheme.normal,
      this.minWidth = 88.0,
      this.height = 36.0,
      this.padding,
      this.shape,
      this.layoutBehavior = ButtonBarLayoutBehavior.padded,
      this.alignedDropdown = false,
      this.buttonColor,
      this.disabledColor,
      this.focusColor,
      this.hoverColor,
      this.highlightColor,
      this.splashColor,
      this.colorScheme,
      this.materialTapTargetSize});
  factory _StacButtonThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacButtonThemeDataFromJson(json);

  @override
  @JsonKey()
  final ButtonTextTheme textTheme;
  @override
  @JsonKey()
  final double minWidth;
  @override
  @JsonKey()
  final double height;
  @override
  final StacEdgeInsets? padding;
  @override
  final StacShapeBorder? shape;
  @override
  @JsonKey()
  final ButtonBarLayoutBehavior layoutBehavior;
  @override
  @JsonKey()
  final bool alignedDropdown;
  @override
  final String? buttonColor;
  @override
  final String? disabledColor;
  @override
  final String? focusColor;
  @override
  final String? hoverColor;
  @override
  final String? highlightColor;
  @override
  final String? splashColor;
  @override
  final StacColorScheme? colorScheme;
  @override
  final MaterialTapTargetSize? materialTapTargetSize;

  /// Create a copy of StacButtonThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacButtonThemeDataCopyWith<_StacButtonThemeData> get copyWith =>
      __$StacButtonThemeDataCopyWithImpl<_StacButtonThemeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacButtonThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacButtonThemeData &&
            (identical(other.textTheme, textTheme) ||
                other.textTheme == textTheme) &&
            (identical(other.minWidth, minWidth) ||
                other.minWidth == minWidth) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.layoutBehavior, layoutBehavior) ||
                other.layoutBehavior == layoutBehavior) &&
            (identical(other.alignedDropdown, alignedDropdown) ||
                other.alignedDropdown == alignedDropdown) &&
            (identical(other.buttonColor, buttonColor) ||
                other.buttonColor == buttonColor) &&
            (identical(other.disabledColor, disabledColor) ||
                other.disabledColor == disabledColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.highlightColor, highlightColor) ||
                other.highlightColor == highlightColor) &&
            (identical(other.splashColor, splashColor) ||
                other.splashColor == splashColor) &&
            (identical(other.colorScheme, colorScheme) ||
                other.colorScheme == colorScheme) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      textTheme,
      minWidth,
      height,
      padding,
      shape,
      layoutBehavior,
      alignedDropdown,
      buttonColor,
      disabledColor,
      focusColor,
      hoverColor,
      highlightColor,
      splashColor,
      colorScheme,
      materialTapTargetSize);

  @override
  String toString() {
    return 'StacButtonThemeData(textTheme: $textTheme, minWidth: $minWidth, height: $height, padding: $padding, shape: $shape, layoutBehavior: $layoutBehavior, alignedDropdown: $alignedDropdown, buttonColor: $buttonColor, disabledColor: $disabledColor, focusColor: $focusColor, hoverColor: $hoverColor, highlightColor: $highlightColor, splashColor: $splashColor, colorScheme: $colorScheme, materialTapTargetSize: $materialTapTargetSize)';
  }
}

/// @nodoc
abstract mixin class _$StacButtonThemeDataCopyWith<$Res>
    implements $StacButtonThemeDataCopyWith<$Res> {
  factory _$StacButtonThemeDataCopyWith(_StacButtonThemeData value,
          $Res Function(_StacButtonThemeData) _then) =
      __$StacButtonThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ButtonTextTheme textTheme,
      double minWidth,
      double height,
      StacEdgeInsets? padding,
      StacShapeBorder? shape,
      ButtonBarLayoutBehavior layoutBehavior,
      bool alignedDropdown,
      String? buttonColor,
      String? disabledColor,
      String? focusColor,
      String? hoverColor,
      String? highlightColor,
      String? splashColor,
      StacColorScheme? colorScheme,
      MaterialTapTargetSize? materialTapTargetSize});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  @override
  $StacShapeBorderCopyWith<$Res>? get shape;
  @override
  $StacColorSchemeCopyWith<$Res>? get colorScheme;
}

/// @nodoc
class __$StacButtonThemeDataCopyWithImpl<$Res>
    implements _$StacButtonThemeDataCopyWith<$Res> {
  __$StacButtonThemeDataCopyWithImpl(this._self, this._then);

  final _StacButtonThemeData _self;
  final $Res Function(_StacButtonThemeData) _then;

  /// Create a copy of StacButtonThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? textTheme = null,
    Object? minWidth = null,
    Object? height = null,
    Object? padding = freezed,
    Object? shape = freezed,
    Object? layoutBehavior = null,
    Object? alignedDropdown = null,
    Object? buttonColor = freezed,
    Object? disabledColor = freezed,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? highlightColor = freezed,
    Object? splashColor = freezed,
    Object? colorScheme = freezed,
    Object? materialTapTargetSize = freezed,
  }) {
    return _then(_StacButtonThemeData(
      textTheme: null == textTheme
          ? _self.textTheme
          : textTheme // ignore: cast_nullable_to_non_nullable
              as ButtonTextTheme,
      minWidth: null == minWidth
          ? _self.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      layoutBehavior: null == layoutBehavior
          ? _self.layoutBehavior
          : layoutBehavior // ignore: cast_nullable_to_non_nullable
              as ButtonBarLayoutBehavior,
      alignedDropdown: null == alignedDropdown
          ? _self.alignedDropdown
          : alignedDropdown // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonColor: freezed == buttonColor
          ? _self.buttonColor
          : buttonColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledColor: freezed == disabledColor
          ? _self.disabledColor
          : disabledColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightColor: freezed == highlightColor
          ? _self.highlightColor
          : highlightColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashColor: freezed == splashColor
          ? _self.splashColor
          : splashColor // ignore: cast_nullable_to_non_nullable
              as String?,
      colorScheme: freezed == colorScheme
          ? _self.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as StacColorScheme?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
    ));
  }

  /// Create a copy of StacButtonThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get padding {
    if (_self.padding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.padding!, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }

  /// Create a copy of StacButtonThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacShapeBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacButtonThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacColorSchemeCopyWith<$Res>? get colorScheme {
    if (_self.colorScheme == null) {
      return null;
    }

    return $StacColorSchemeCopyWith<$Res>(_self.colorScheme!, (value) {
      return _then(_self.copyWith(colorScheme: value));
    });
  }
}

// dart format on
