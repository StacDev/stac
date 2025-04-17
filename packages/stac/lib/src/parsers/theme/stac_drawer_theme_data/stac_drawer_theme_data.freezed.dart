// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_drawer_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDrawerThemeData {
  String? get backgroundColor;
  String? get scrimColor;
  double? get elevation;
  String? get shadowColor;
  String? get surfaceTintColor;
  StacShapeBorder? get shape;
  StacShapeBorder? get endShape;
  double? get width;
  Clip? get clipBehavior;

  /// Create a copy of StacDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDrawerThemeDataCopyWith<StacDrawerThemeData> get copyWith =>
      _$StacDrawerThemeDataCopyWithImpl<StacDrawerThemeData>(
          this as StacDrawerThemeData, _$identity);

  /// Serializes this StacDrawerThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDrawerThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.scrimColor, scrimColor) ||
                other.scrimColor == scrimColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.endShape, endShape) ||
                other.endShape == endShape) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      scrimColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      shape,
      endShape,
      width,
      clipBehavior);

  @override
  String toString() {
    return 'StacDrawerThemeData(backgroundColor: $backgroundColor, scrimColor: $scrimColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, shape: $shape, endShape: $endShape, width: $width, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacDrawerThemeDataCopyWith<$Res> {
  factory $StacDrawerThemeDataCopyWith(
          StacDrawerThemeData value, $Res Function(StacDrawerThemeData) _then) =
      _$StacDrawerThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {String? backgroundColor,
      String? scrimColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacShapeBorder? shape,
      StacShapeBorder? endShape,
      double? width,
      Clip? clipBehavior});

  $StacShapeBorderCopyWith<$Res>? get shape;
  $StacShapeBorderCopyWith<$Res>? get endShape;
}

/// @nodoc
class _$StacDrawerThemeDataCopyWithImpl<$Res>
    implements $StacDrawerThemeDataCopyWith<$Res> {
  _$StacDrawerThemeDataCopyWithImpl(this._self, this._then);

  final StacDrawerThemeData _self;
  final $Res Function(StacDrawerThemeData) _then;

  /// Create a copy of StacDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? scrimColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? endShape = freezed,
    Object? width = freezed,
    Object? clipBehavior = freezed,
  }) {
    return _then(_self.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      scrimColor: freezed == scrimColor
          ? _self.scrimColor
          : scrimColor // ignore: cast_nullable_to_non_nullable
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
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      endShape: freezed == endShape
          ? _self.endShape
          : endShape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
    ));
  }

  /// Create a copy of StacDrawerThemeData
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

  /// Create a copy of StacDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<$Res>? get endShape {
    if (_self.endShape == null) {
      return null;
    }

    return $StacShapeBorderCopyWith<$Res>(_self.endShape!, (value) {
      return _then(_self.copyWith(endShape: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacDrawerThemeData implements StacDrawerThemeData {
  const _StacDrawerThemeData(
      {this.backgroundColor,
      this.scrimColor,
      this.elevation,
      this.shadowColor,
      this.surfaceTintColor,
      this.shape,
      this.endShape,
      this.width,
      this.clipBehavior});
  factory _StacDrawerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDrawerThemeDataFromJson(json);

  @override
  final String? backgroundColor;
  @override
  final String? scrimColor;
  @override
  final double? elevation;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final StacShapeBorder? shape;
  @override
  final StacShapeBorder? endShape;
  @override
  final double? width;
  @override
  final Clip? clipBehavior;

  /// Create a copy of StacDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDrawerThemeDataCopyWith<_StacDrawerThemeData> get copyWith =>
      __$StacDrawerThemeDataCopyWithImpl<_StacDrawerThemeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDrawerThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDrawerThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.scrimColor, scrimColor) ||
                other.scrimColor == scrimColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.endShape, endShape) ||
                other.endShape == endShape) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      scrimColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      shape,
      endShape,
      width,
      clipBehavior);

  @override
  String toString() {
    return 'StacDrawerThemeData(backgroundColor: $backgroundColor, scrimColor: $scrimColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, shape: $shape, endShape: $endShape, width: $width, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacDrawerThemeDataCopyWith<$Res>
    implements $StacDrawerThemeDataCopyWith<$Res> {
  factory _$StacDrawerThemeDataCopyWith(_StacDrawerThemeData value,
          $Res Function(_StacDrawerThemeData) _then) =
      __$StacDrawerThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? backgroundColor,
      String? scrimColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacShapeBorder? shape,
      StacShapeBorder? endShape,
      double? width,
      Clip? clipBehavior});

  @override
  $StacShapeBorderCopyWith<$Res>? get shape;
  @override
  $StacShapeBorderCopyWith<$Res>? get endShape;
}

/// @nodoc
class __$StacDrawerThemeDataCopyWithImpl<$Res>
    implements _$StacDrawerThemeDataCopyWith<$Res> {
  __$StacDrawerThemeDataCopyWithImpl(this._self, this._then);

  final _StacDrawerThemeData _self;
  final $Res Function(_StacDrawerThemeData) _then;

  /// Create a copy of StacDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backgroundColor = freezed,
    Object? scrimColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? endShape = freezed,
    Object? width = freezed,
    Object? clipBehavior = freezed,
  }) {
    return _then(_StacDrawerThemeData(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      scrimColor: freezed == scrimColor
          ? _self.scrimColor
          : scrimColor // ignore: cast_nullable_to_non_nullable
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
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      endShape: freezed == endShape
          ? _self.endShape
          : endShape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
    ));
  }

  /// Create a copy of StacDrawerThemeData
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

  /// Create a copy of StacDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<$Res>? get endShape {
    if (_self.endShape == null) {
      return null;
    }

    return $StacShapeBorderCopyWith<$Res>(_self.endShape!, (value) {
      return _then(_self.copyWith(endShape: value));
    });
  }
}

// dart format on
