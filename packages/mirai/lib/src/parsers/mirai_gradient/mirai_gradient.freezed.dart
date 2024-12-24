// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_gradient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiGradient _$MiraiGradientFromJson(Map<String, dynamic> json) {
  return _MiraiGradient.fromJson(json);
}

/// @nodoc
mixin _$MiraiGradient {
  List<String> get colors => throw _privateConstructorUsedError;
  List<double>? get stops => throw _privateConstructorUsedError;
  MiraiAlignment get begin => throw _privateConstructorUsedError;
  MiraiAlignment get end => throw _privateConstructorUsedError;
  MiraiAlignment get center => throw _privateConstructorUsedError;
  MiraiGradientType get gradientType => throw _privateConstructorUsedError;
  MiraiAlignmentGeometry? get focal => throw _privateConstructorUsedError;
  TileMode get tileMode => throw _privateConstructorUsedError;
  double get focalRadius => throw _privateConstructorUsedError;
  double get radius => throw _privateConstructorUsedError;
  double get startAngle => throw _privateConstructorUsedError;
  double get endAngle => throw _privateConstructorUsedError;

  /// Serializes this MiraiGradient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiGradient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiGradientCopyWith<MiraiGradient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiGradientCopyWith<$Res> {
  factory $MiraiGradientCopyWith(
          MiraiGradient value, $Res Function(MiraiGradient) then) =
      _$MiraiGradientCopyWithImpl<$Res, MiraiGradient>;
  @useResult
  $Res call(
      {List<String> colors,
      List<double>? stops,
      MiraiAlignment begin,
      MiraiAlignment end,
      MiraiAlignment center,
      MiraiGradientType gradientType,
      MiraiAlignmentGeometry? focal,
      TileMode tileMode,
      double focalRadius,
      double radius,
      double startAngle,
      double endAngle});

  $MiraiAlignmentGeometryCopyWith<$Res>? get focal;
}

/// @nodoc
class _$MiraiGradientCopyWithImpl<$Res, $Val extends MiraiGradient>
    implements $MiraiGradientCopyWith<$Res> {
  _$MiraiGradientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiGradient
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
              as MiraiAlignment,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as MiraiAlignment,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as MiraiAlignment,
      gradientType: null == gradientType
          ? _value.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as MiraiGradientType,
      focal: freezed == focal
          ? _value.focal
          : focal // ignore: cast_nullable_to_non_nullable
              as MiraiAlignmentGeometry?,
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

  /// Create a copy of MiraiGradient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiAlignmentGeometryCopyWith<$Res>? get focal {
    if (_value.focal == null) {
      return null;
    }

    return $MiraiAlignmentGeometryCopyWith<$Res>(_value.focal!, (value) {
      return _then(_value.copyWith(focal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiGradientImplCopyWith<$Res>
    implements $MiraiGradientCopyWith<$Res> {
  factory _$$MiraiGradientImplCopyWith(
          _$MiraiGradientImpl value, $Res Function(_$MiraiGradientImpl) then) =
      __$$MiraiGradientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> colors,
      List<double>? stops,
      MiraiAlignment begin,
      MiraiAlignment end,
      MiraiAlignment center,
      MiraiGradientType gradientType,
      MiraiAlignmentGeometry? focal,
      TileMode tileMode,
      double focalRadius,
      double radius,
      double startAngle,
      double endAngle});

  @override
  $MiraiAlignmentGeometryCopyWith<$Res>? get focal;
}

/// @nodoc
class __$$MiraiGradientImplCopyWithImpl<$Res>
    extends _$MiraiGradientCopyWithImpl<$Res, _$MiraiGradientImpl>
    implements _$$MiraiGradientImplCopyWith<$Res> {
  __$$MiraiGradientImplCopyWithImpl(
      _$MiraiGradientImpl _value, $Res Function(_$MiraiGradientImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiGradient
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
    return _then(_$MiraiGradientImpl(
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
              as MiraiAlignment,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as MiraiAlignment,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as MiraiAlignment,
      gradientType: null == gradientType
          ? _value.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as MiraiGradientType,
      focal: freezed == focal
          ? _value.focal
          : focal // ignore: cast_nullable_to_non_nullable
              as MiraiAlignmentGeometry?,
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
class _$MiraiGradientImpl implements _MiraiGradient {
  const _$MiraiGradientImpl(
      {required final List<String> colors,
      final List<double>? stops,
      this.begin = MiraiAlignment.centerLeft,
      this.end = MiraiAlignment.centerRight,
      this.center = MiraiAlignment.center,
      this.gradientType = MiraiGradientType.linear,
      this.focal,
      this.tileMode = TileMode.clamp,
      this.focalRadius = 0.0,
      this.radius = 0.5,
      this.startAngle = 0.0,
      this.endAngle = math.pi * 2})
      : _colors = colors,
        _stops = stops;

  factory _$MiraiGradientImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiGradientImplFromJson(json);

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
  final MiraiAlignment begin;
  @override
  @JsonKey()
  final MiraiAlignment end;
  @override
  @JsonKey()
  final MiraiAlignment center;
  @override
  @JsonKey()
  final MiraiGradientType gradientType;
  @override
  final MiraiAlignmentGeometry? focal;
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
    return 'MiraiGradient(colors: $colors, stops: $stops, begin: $begin, end: $end, center: $center, gradientType: $gradientType, focal: $focal, tileMode: $tileMode, focalRadius: $focalRadius, radius: $radius, startAngle: $startAngle, endAngle: $endAngle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiGradientImpl &&
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

  /// Create a copy of MiraiGradient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiGradientImplCopyWith<_$MiraiGradientImpl> get copyWith =>
      __$$MiraiGradientImplCopyWithImpl<_$MiraiGradientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiGradientImplToJson(
      this,
    );
  }
}

abstract class _MiraiGradient implements MiraiGradient {
  const factory _MiraiGradient(
      {required final List<String> colors,
      final List<double>? stops,
      final MiraiAlignment begin,
      final MiraiAlignment end,
      final MiraiAlignment center,
      final MiraiGradientType gradientType,
      final MiraiAlignmentGeometry? focal,
      final TileMode tileMode,
      final double focalRadius,
      final double radius,
      final double startAngle,
      final double endAngle}) = _$MiraiGradientImpl;

  factory _MiraiGradient.fromJson(Map<String, dynamic> json) =
      _$MiraiGradientImpl.fromJson;

  @override
  List<String> get colors;
  @override
  List<double>? get stops;
  @override
  MiraiAlignment get begin;
  @override
  MiraiAlignment get end;
  @override
  MiraiAlignment get center;
  @override
  MiraiGradientType get gradientType;
  @override
  MiraiAlignmentGeometry? get focal;
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

  /// Create a copy of MiraiGradient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiGradientImplCopyWith<_$MiraiGradientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
