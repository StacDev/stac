// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_navigation_drawer_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacNavigationDrawerThemeData {
  double? get tileHeight;
  String? get backgroundColor;
  double? get elevation;
  String? get shadowColor;
  String? get surfaceTintColor;
  String? get indicatorColor;
  StacShapeBorder? get indicatorShape;
  StacSize? get indicatorSize;
  StacTextStyle? get labelTextStyle;
  StacIconThemeData? get iconTheme;

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacNavigationDrawerThemeDataCopyWith<StacNavigationDrawerThemeData>
      get copyWith => _$StacNavigationDrawerThemeDataCopyWithImpl<
              StacNavigationDrawerThemeData>(
          this as StacNavigationDrawerThemeData, _$identity);

  /// Serializes this StacNavigationDrawerThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacNavigationDrawerThemeData &&
            (identical(other.tileHeight, tileHeight) ||
                other.tileHeight == tileHeight) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.indicatorShape, indicatorShape) ||
                other.indicatorShape == indicatorShape) &&
            (identical(other.indicatorSize, indicatorSize) ||
                other.indicatorSize == indicatorSize) &&
            (identical(other.labelTextStyle, labelTextStyle) ||
                other.labelTextStyle == labelTextStyle) &&
            (identical(other.iconTheme, iconTheme) ||
                other.iconTheme == iconTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tileHeight,
      backgroundColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      indicatorColor,
      indicatorShape,
      indicatorSize,
      labelTextStyle,
      iconTheme);

  @override
  String toString() {
    return 'StacNavigationDrawerThemeData(tileHeight: $tileHeight, backgroundColor: $backgroundColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, indicatorColor: $indicatorColor, indicatorShape: $indicatorShape, indicatorSize: $indicatorSize, labelTextStyle: $labelTextStyle, iconTheme: $iconTheme)';
  }
}

/// @nodoc
abstract mixin class $StacNavigationDrawerThemeDataCopyWith<$Res> {
  factory $StacNavigationDrawerThemeDataCopyWith(
          StacNavigationDrawerThemeData value,
          $Res Function(StacNavigationDrawerThemeData) _then) =
      _$StacNavigationDrawerThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {double? tileHeight,
      String? backgroundColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      String? indicatorColor,
      StacShapeBorder? indicatorShape,
      StacSize? indicatorSize,
      StacTextStyle? labelTextStyle,
      StacIconThemeData? iconTheme});

  $StacShapeBorderCopyWith<$Res>? get indicatorShape;
  $StacSizeCopyWith<$Res>? get indicatorSize;
  $StacTextStyleCopyWith<$Res>? get labelTextStyle;
  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
}

/// @nodoc
class _$StacNavigationDrawerThemeDataCopyWithImpl<$Res>
    implements $StacNavigationDrawerThemeDataCopyWith<$Res> {
  _$StacNavigationDrawerThemeDataCopyWithImpl(this._self, this._then);

  final StacNavigationDrawerThemeData _self;
  final $Res Function(StacNavigationDrawerThemeData) _then;

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileHeight = freezed,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? indicatorColor = freezed,
    Object? indicatorShape = freezed,
    Object? indicatorSize = freezed,
    Object? labelTextStyle = freezed,
    Object? iconTheme = freezed,
  }) {
    return _then(_self.copyWith(
      tileHeight: freezed == tileHeight
          ? _self.tileHeight
          : tileHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorShape: freezed == indicatorShape
          ? _self.indicatorShape
          : indicatorShape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      indicatorSize: freezed == indicatorSize
          ? _self.indicatorSize
          : indicatorSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      labelTextStyle: freezed == labelTextStyle
          ? _self.labelTextStyle
          : labelTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      iconTheme: freezed == iconTheme
          ? _self.iconTheme
          : iconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
    ));
  }

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<$Res>? get indicatorShape {
    if (_self.indicatorShape == null) {
      return null;
    }

    return $StacShapeBorderCopyWith<$Res>(_self.indicatorShape!, (value) {
      return _then(_self.copyWith(indicatorShape: value));
    });
  }

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<$Res>? get indicatorSize {
    if (_self.indicatorSize == null) {
      return null;
    }

    return $StacSizeCopyWith<$Res>(_self.indicatorSize!, (value) {
      return _then(_self.copyWith(indicatorSize: value));
    });
  }

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get labelTextStyle {
    if (_self.labelTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.labelTextStyle!, (value) {
      return _then(_self.copyWith(labelTextStyle: value));
    });
  }

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get iconTheme {
    if (_self.iconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.iconTheme!, (value) {
      return _then(_self.copyWith(iconTheme: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacNavigationDrawerThemeData implements StacNavigationDrawerThemeData {
  const _StacNavigationDrawerThemeData(
      {this.tileHeight,
      this.backgroundColor,
      this.elevation,
      this.shadowColor,
      this.surfaceTintColor,
      this.indicatorColor,
      this.indicatorShape,
      this.indicatorSize,
      this.labelTextStyle,
      this.iconTheme});
  factory _StacNavigationDrawerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationDrawerThemeDataFromJson(json);

  @override
  final double? tileHeight;
  @override
  final String? backgroundColor;
  @override
  final double? elevation;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final String? indicatorColor;
  @override
  final StacShapeBorder? indicatorShape;
  @override
  final StacSize? indicatorSize;
  @override
  final StacTextStyle? labelTextStyle;
  @override
  final StacIconThemeData? iconTheme;

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacNavigationDrawerThemeDataCopyWith<_StacNavigationDrawerThemeData>
      get copyWith => __$StacNavigationDrawerThemeDataCopyWithImpl<
          _StacNavigationDrawerThemeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacNavigationDrawerThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacNavigationDrawerThemeData &&
            (identical(other.tileHeight, tileHeight) ||
                other.tileHeight == tileHeight) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.indicatorShape, indicatorShape) ||
                other.indicatorShape == indicatorShape) &&
            (identical(other.indicatorSize, indicatorSize) ||
                other.indicatorSize == indicatorSize) &&
            (identical(other.labelTextStyle, labelTextStyle) ||
                other.labelTextStyle == labelTextStyle) &&
            (identical(other.iconTheme, iconTheme) ||
                other.iconTheme == iconTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tileHeight,
      backgroundColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      indicatorColor,
      indicatorShape,
      indicatorSize,
      labelTextStyle,
      iconTheme);

  @override
  String toString() {
    return 'StacNavigationDrawerThemeData(tileHeight: $tileHeight, backgroundColor: $backgroundColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, indicatorColor: $indicatorColor, indicatorShape: $indicatorShape, indicatorSize: $indicatorSize, labelTextStyle: $labelTextStyle, iconTheme: $iconTheme)';
  }
}

/// @nodoc
abstract mixin class _$StacNavigationDrawerThemeDataCopyWith<$Res>
    implements $StacNavigationDrawerThemeDataCopyWith<$Res> {
  factory _$StacNavigationDrawerThemeDataCopyWith(
          _StacNavigationDrawerThemeData value,
          $Res Function(_StacNavigationDrawerThemeData) _then) =
      __$StacNavigationDrawerThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? tileHeight,
      String? backgroundColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      String? indicatorColor,
      StacShapeBorder? indicatorShape,
      StacSize? indicatorSize,
      StacTextStyle? labelTextStyle,
      StacIconThemeData? iconTheme});

  @override
  $StacShapeBorderCopyWith<$Res>? get indicatorShape;
  @override
  $StacSizeCopyWith<$Res>? get indicatorSize;
  @override
  $StacTextStyleCopyWith<$Res>? get labelTextStyle;
  @override
  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
}

/// @nodoc
class __$StacNavigationDrawerThemeDataCopyWithImpl<$Res>
    implements _$StacNavigationDrawerThemeDataCopyWith<$Res> {
  __$StacNavigationDrawerThemeDataCopyWithImpl(this._self, this._then);

  final _StacNavigationDrawerThemeData _self;
  final $Res Function(_StacNavigationDrawerThemeData) _then;

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tileHeight = freezed,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? indicatorColor = freezed,
    Object? indicatorShape = freezed,
    Object? indicatorSize = freezed,
    Object? labelTextStyle = freezed,
    Object? iconTheme = freezed,
  }) {
    return _then(_StacNavigationDrawerThemeData(
      tileHeight: freezed == tileHeight
          ? _self.tileHeight
          : tileHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorShape: freezed == indicatorShape
          ? _self.indicatorShape
          : indicatorShape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      indicatorSize: freezed == indicatorSize
          ? _self.indicatorSize
          : indicatorSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      labelTextStyle: freezed == labelTextStyle
          ? _self.labelTextStyle
          : labelTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      iconTheme: freezed == iconTheme
          ? _self.iconTheme
          : iconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
    ));
  }

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<$Res>? get indicatorShape {
    if (_self.indicatorShape == null) {
      return null;
    }

    return $StacShapeBorderCopyWith<$Res>(_self.indicatorShape!, (value) {
      return _then(_self.copyWith(indicatorShape: value));
    });
  }

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<$Res>? get indicatorSize {
    if (_self.indicatorSize == null) {
      return null;
    }

    return $StacSizeCopyWith<$Res>(_self.indicatorSize!, (value) {
      return _then(_self.copyWith(indicatorSize: value));
    });
  }

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get labelTextStyle {
    if (_self.labelTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.labelTextStyle!, (value) {
      return _then(_self.copyWith(labelTextStyle: value));
    });
  }

  /// Create a copy of StacNavigationDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get iconTheme {
    if (_self.iconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.iconTheme!, (value) {
      return _then(_self.copyWith(iconTheme: value));
    });
  }
}

// dart format on
