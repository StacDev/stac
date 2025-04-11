// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_icon_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacIconThemeData {
  double? get size;
  double? get fill;
  double? get weight;
  double? get grade;
  double? get opticalSize;
  String? get color;
  double? get opacity;
  List<StacShadow>? get shadows;

  /// Create a copy of StacIconThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<StacIconThemeData> get copyWith =>
      _$StacIconThemeDataCopyWithImpl<StacIconThemeData>(
          this as StacIconThemeData, _$identity);

  /// Serializes this StacIconThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacIconThemeData &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.fill, fill) || other.fill == fill) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.opticalSize, opticalSize) ||
                other.opticalSize == opticalSize) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.opacity, opacity) || other.opacity == opacity) &&
            const DeepCollectionEquality().equals(other.shadows, shadows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      size,
      fill,
      weight,
      grade,
      opticalSize,
      color,
      opacity,
      const DeepCollectionEquality().hash(shadows));

  @override
  String toString() {
    return 'StacIconThemeData(size: $size, fill: $fill, weight: $weight, grade: $grade, opticalSize: $opticalSize, color: $color, opacity: $opacity, shadows: $shadows)';
  }
}

/// @nodoc
abstract mixin class $StacIconThemeDataCopyWith<$Res> {
  factory $StacIconThemeDataCopyWith(
          StacIconThemeData value, $Res Function(StacIconThemeData) _then) =
      _$StacIconThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {double? size,
      double? fill,
      double? weight,
      double? grade,
      double? opticalSize,
      String? color,
      double? opacity,
      List<StacShadow>? shadows});
}

/// @nodoc
class _$StacIconThemeDataCopyWithImpl<$Res>
    implements $StacIconThemeDataCopyWith<$Res> {
  _$StacIconThemeDataCopyWithImpl(this._self, this._then);

  final StacIconThemeData _self;
  final $Res Function(StacIconThemeData) _then;

  /// Create a copy of StacIconThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? fill = freezed,
    Object? weight = freezed,
    Object? grade = freezed,
    Object? opticalSize = freezed,
    Object? color = freezed,
    Object? opacity = freezed,
    Object? shadows = freezed,
  }) {
    return _then(_self.copyWith(
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      fill: freezed == fill
          ? _self.fill
          : fill // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      grade: freezed == grade
          ? _self.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double?,
      opticalSize: freezed == opticalSize
          ? _self.opticalSize
          : opticalSize // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      opacity: freezed == opacity
          ? _self.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double?,
      shadows: freezed == shadows
          ? _self.shadows
          : shadows // ignore: cast_nullable_to_non_nullable
              as List<StacShadow>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacIconThemeData implements StacIconThemeData {
  const _StacIconThemeData(
      {this.size,
      this.fill,
      this.weight,
      this.grade,
      this.opticalSize,
      this.color,
      this.opacity,
      final List<StacShadow>? shadows})
      : _shadows = shadows;
  factory _StacIconThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacIconThemeDataFromJson(json);

  @override
  final double? size;
  @override
  final double? fill;
  @override
  final double? weight;
  @override
  final double? grade;
  @override
  final double? opticalSize;
  @override
  final String? color;
  @override
  final double? opacity;
  final List<StacShadow>? _shadows;
  @override
  List<StacShadow>? get shadows {
    final value = _shadows;
    if (value == null) return null;
    if (_shadows is EqualUnmodifiableListView) return _shadows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of StacIconThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacIconThemeDataCopyWith<_StacIconThemeData> get copyWith =>
      __$StacIconThemeDataCopyWithImpl<_StacIconThemeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacIconThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacIconThemeData &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.fill, fill) || other.fill == fill) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.opticalSize, opticalSize) ||
                other.opticalSize == opticalSize) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.opacity, opacity) || other.opacity == opacity) &&
            const DeepCollectionEquality().equals(other._shadows, _shadows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      size,
      fill,
      weight,
      grade,
      opticalSize,
      color,
      opacity,
      const DeepCollectionEquality().hash(_shadows));

  @override
  String toString() {
    return 'StacIconThemeData(size: $size, fill: $fill, weight: $weight, grade: $grade, opticalSize: $opticalSize, color: $color, opacity: $opacity, shadows: $shadows)';
  }
}

/// @nodoc
abstract mixin class _$StacIconThemeDataCopyWith<$Res>
    implements $StacIconThemeDataCopyWith<$Res> {
  factory _$StacIconThemeDataCopyWith(
          _StacIconThemeData value, $Res Function(_StacIconThemeData) _then) =
      __$StacIconThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? size,
      double? fill,
      double? weight,
      double? grade,
      double? opticalSize,
      String? color,
      double? opacity,
      List<StacShadow>? shadows});
}

/// @nodoc
class __$StacIconThemeDataCopyWithImpl<$Res>
    implements _$StacIconThemeDataCopyWith<$Res> {
  __$StacIconThemeDataCopyWithImpl(this._self, this._then);

  final _StacIconThemeData _self;
  final $Res Function(_StacIconThemeData) _then;

  /// Create a copy of StacIconThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? size = freezed,
    Object? fill = freezed,
    Object? weight = freezed,
    Object? grade = freezed,
    Object? opticalSize = freezed,
    Object? color = freezed,
    Object? opacity = freezed,
    Object? shadows = freezed,
  }) {
    return _then(_StacIconThemeData(
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      fill: freezed == fill
          ? _self.fill
          : fill // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      grade: freezed == grade
          ? _self.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double?,
      opticalSize: freezed == opticalSize
          ? _self.opticalSize
          : opticalSize // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      opacity: freezed == opacity
          ? _self.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double?,
      shadows: freezed == shadows
          ? _self._shadows
          : shadows // ignore: cast_nullable_to_non_nullable
              as List<StacShadow>?,
    ));
  }
}

// dart format on
