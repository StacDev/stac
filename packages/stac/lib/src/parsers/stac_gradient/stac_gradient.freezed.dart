// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_gradient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacGradient _$StacGradientFromJson(Map<String, dynamic> json) {
  return _StacGradient.fromJson(json);
}

/// @nodoc
mixin _$StacGradient {
  List<String> get colors => throw _privateConstructorUsedError;
  List<double>? get stops => throw _privateConstructorUsedError;
  StacAlignment get begin => throw _privateConstructorUsedError;
  StacAlignment get end => throw _privateConstructorUsedError;
  StacAlignment get center => throw _privateConstructorUsedError;
  StacGradientType get gradientType => throw _privateConstructorUsedError;
  StacAlignmentGeometry? get focal => throw _privateConstructorUsedError;
  TileMode get tileMode => throw _privateConstructorUsedError;
  double get focalRadius => throw _privateConstructorUsedError;
  double get radius => throw _privateConstructorUsedError;
  double get startAngle => throw _privateConstructorUsedError;
  double get endAngle => throw _privateConstructorUsedError;

  /// Serializes this StacGradient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacGradient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacGradientCopyWith<StacGradient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacGradientCopyWith<$Res> {
  factory $StacGradientCopyWith(
          StacGradient value, $Res Function(StacGradient) then) =
      _$StacGradientCopyWithImpl<$Res, StacGradient>;
  @useResult
  $Res call(
      {List<String> colors,
      List<double>? stops,
      StacAlignment begin,
      StacAlignment end,
      StacAlignment center,
      StacGradientType gradientType,
      StacAlignmentGeometry? focal,
      TileMode tileMode,
      double focalRadius,
      double radius,
      double startAngle,
      double endAngle});

  $StacAlignmentGeometryCopyWith<$Res>? get focal;
}

/// @nodoc
class _$StacGradientCopyWithImpl<$Res, $Val extends StacGradient>
    implements $StacGradientCopyWith<$Res> {
  _$StacGradientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacGradient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
    Object? stops = freezed,
    Object? begin = null,
    Object? end = null,
    Object? center = null,
    Object? gradientType = null,
    Object? focal = freezed,
    Object? tileMode = null,
    Object? focalRadius = null,
    Object? radius = null,
    Object? startAngle = null,
    Object? endAngle = null,
  }) {
    return _then(_value.copyWith(
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stops: freezed == stops
          ? _value.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      begin: null == begin
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      gradientType: null == gradientType
          ? _value.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as StacGradientType,
      focal: freezed == focal
          ? _value.focal
          : focal // ignore: cast_nullable_to_non_nullable
              as StacAlignmentGeometry?,
      tileMode: null == tileMode
          ? _value.tileMode
          : tileMode // ignore: cast_nullable_to_non_nullable
              as TileMode,
      focalRadius: null == focalRadius
          ? _value.focalRadius
          : focalRadius // ignore: cast_nullable_to_non_nullable
              as double,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      startAngle: null == startAngle
          ? _value.startAngle
          : startAngle // ignore: cast_nullable_to_non_nullable
              as double,
      endAngle: null == endAngle
          ? _value.endAngle
          : endAngle // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of StacGradient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacAlignmentGeometryCopyWith<$Res>? get focal {
    if (_value.focal == null) {
      return null;
    }

    return $StacAlignmentGeometryCopyWith<$Res>(_value.focal!, (value) {
      return _then(_value.copyWith(focal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacGradientImplCopyWith<$Res>
    implements $StacGradientCopyWith<$Res> {
  factory _$$StacGradientImplCopyWith(
          _$StacGradientImpl value, $Res Function(_$StacGradientImpl) then) =
      __$$StacGradientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> colors,
      List<double>? stops,
      StacAlignment begin,
      StacAlignment end,
      StacAlignment center,
      StacGradientType gradientType,
      StacAlignmentGeometry? focal,
      TileMode tileMode,
      double focalRadius,
      double radius,
      double startAngle,
      double endAngle});

  @override
  $StacAlignmentGeometryCopyWith<$Res>? get focal;
}

/// @nodoc
class __$$StacGradientImplCopyWithImpl<$Res>
    extends _$StacGradientCopyWithImpl<$Res, _$StacGradientImpl>
    implements _$$StacGradientImplCopyWith<$Res> {
  __$$StacGradientImplCopyWithImpl(
      _$StacGradientImpl _value, $Res Function(_$StacGradientImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacGradient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
    Object? stops = freezed,
    Object? begin = null,
    Object? end = null,
    Object? center = null,
    Object? gradientType = null,
    Object? focal = freezed,
    Object? tileMode = null,
    Object? focalRadius = null,
    Object? radius = null,
    Object? startAngle = null,
    Object? endAngle = null,
  }) {
    return _then(_$StacGradientImpl(
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stops: freezed == stops
          ? _value._stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      begin: null == begin
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      gradientType: null == gradientType
          ? _value.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as StacGradientType,
      focal: freezed == focal
          ? _value.focal
          : focal // ignore: cast_nullable_to_non_nullable
              as StacAlignmentGeometry?,
      tileMode: null == tileMode
          ? _value.tileMode
          : tileMode // ignore: cast_nullable_to_non_nullable
              as TileMode,
      focalRadius: null == focalRadius
          ? _value.focalRadius
          : focalRadius // ignore: cast_nullable_to_non_nullable
              as double,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      startAngle: null == startAngle
          ? _value.startAngle
          : startAngle // ignore: cast_nullable_to_non_nullable
              as double,
      endAngle: null == endAngle
          ? _value.endAngle
          : endAngle // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacGradientImpl implements _StacGradient {
  const _$StacGradientImpl(
      {required final List<String> colors,
      final List<double>? stops,
      this.begin = StacAlignment.centerLeft,
      this.end = StacAlignment.centerRight,
      this.center = StacAlignment.center,
      this.gradientType = StacGradientType.linear,
      this.focal,
      this.tileMode = TileMode.clamp,
      this.focalRadius = 0.0,
      this.radius = 0.5,
      this.startAngle = 0.0,
      this.endAngle = math.pi * 2})
      : _colors = colors,
        _stops = stops;

  factory _$StacGradientImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacGradientImplFromJson(json);

  final List<String> _colors;
  @override
  List<String> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  final List<double>? _stops;
  @override
  List<double>? get stops {
    final value = _stops;
    if (value == null) return null;
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final StacAlignment begin;
  @override
  @JsonKey()
  final StacAlignment end;
  @override
  @JsonKey()
  final StacAlignment center;
  @override
  @JsonKey()
  final StacGradientType gradientType;
  @override
  final StacAlignmentGeometry? focal;
  @override
  @JsonKey()
  final TileMode tileMode;
  @override
  @JsonKey()
  final double focalRadius;
  @override
  @JsonKey()
  final double radius;
  @override
  @JsonKey()
  final double startAngle;
  @override
  @JsonKey()
  final double endAngle;

  @override
  String toString() {
    return 'StacGradient(colors: $colors, stops: $stops, begin: $begin, end: $end, center: $center, gradientType: $gradientType, focal: $focal, tileMode: $tileMode, focalRadius: $focalRadius, radius: $radius, startAngle: $startAngle, endAngle: $endAngle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacGradientImpl &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality().equals(other._stops, _stops) &&
            (identical(other.begin, begin) || other.begin == begin) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.gradientType, gradientType) ||
                other.gradientType == gradientType) &&
            (identical(other.focal, focal) || other.focal == focal) &&
            (identical(other.tileMode, tileMode) ||
                other.tileMode == tileMode) &&
            (identical(other.focalRadius, focalRadius) ||
                other.focalRadius == focalRadius) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.startAngle, startAngle) ||
                other.startAngle == startAngle) &&
            (identical(other.endAngle, endAngle) ||
                other.endAngle == endAngle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_stops),
      begin,
      end,
      center,
      gradientType,
      focal,
      tileMode,
      focalRadius,
      radius,
      startAngle,
      endAngle);

  /// Create a copy of StacGradient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacGradientImplCopyWith<_$StacGradientImpl> get copyWith =>
      __$$StacGradientImplCopyWithImpl<_$StacGradientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacGradientImplToJson(
      this,
    );
  }
}

abstract class _StacGradient implements StacGradient {
  const factory _StacGradient(
      {required final List<String> colors,
      final List<double>? stops,
      final StacAlignment begin,
      final StacAlignment end,
      final StacAlignment center,
      final StacGradientType gradientType,
      final StacAlignmentGeometry? focal,
      final TileMode tileMode,
      final double focalRadius,
      final double radius,
      final double startAngle,
      final double endAngle}) = _$StacGradientImpl;

  factory _StacGradient.fromJson(Map<String, dynamic> json) =
      _$StacGradientImpl.fromJson;

  @override
  List<String> get colors;
  @override
  List<double>? get stops;
  @override
  StacAlignment get begin;
  @override
  StacAlignment get end;
  @override
  StacAlignment get center;
  @override
  StacGradientType get gradientType;
  @override
  StacAlignmentGeometry? get focal;
  @override
  TileMode get tileMode;
  @override
  double get focalRadius;
  @override
  double get radius;
  @override
  double get startAngle;
  @override
  double get endAngle;

  /// Create a copy of StacGradient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacGradientImplCopyWith<_$StacGradientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
