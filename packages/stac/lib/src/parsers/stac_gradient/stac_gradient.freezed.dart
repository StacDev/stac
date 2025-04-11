// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_gradient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacGradient {
  List<String> get colors;
  List<double>? get stops;
  StacAlignment get begin;
  StacAlignment get end;
  StacAlignment get center;
  StacGradientType get gradientType;
  StacAlignmentGeometry? get focal;
  TileMode get tileMode;
  double get focalRadius;
  double get radius;
  double get startAngle;
  double get endAngle;

  /// Create a copy of StacGradient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacGradientCopyWith<StacGradient> get copyWith =>
      _$StacGradientCopyWithImpl<StacGradient>(
          this as StacGradient, _$identity);

  /// Serializes this StacGradient to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacGradient &&
            const DeepCollectionEquality().equals(other.colors, colors) &&
            const DeepCollectionEquality().equals(other.stops, stops) &&
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
      const DeepCollectionEquality().hash(colors),
      const DeepCollectionEquality().hash(stops),
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

  @override
  String toString() {
    return 'StacGradient(colors: $colors, stops: $stops, begin: $begin, end: $end, center: $center, gradientType: $gradientType, focal: $focal, tileMode: $tileMode, focalRadius: $focalRadius, radius: $radius, startAngle: $startAngle, endAngle: $endAngle)';
  }
}

/// @nodoc
abstract mixin class $StacGradientCopyWith<$Res> {
  factory $StacGradientCopyWith(
          StacGradient value, $Res Function(StacGradient) _then) =
      _$StacGradientCopyWithImpl;
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
class _$StacGradientCopyWithImpl<$Res> implements $StacGradientCopyWith<$Res> {
  _$StacGradientCopyWithImpl(this._self, this._then);

  final StacGradient _self;
  final $Res Function(StacGradient) _then;

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
    return _then(_self.copyWith(
      colors: null == colors
          ? _self.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stops: freezed == stops
          ? _self.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      begin: null == begin
          ? _self.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      end: null == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      center: null == center
          ? _self.center
          : center // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      gradientType: null == gradientType
          ? _self.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as StacGradientType,
      focal: freezed == focal
          ? _self.focal
          : focal // ignore: cast_nullable_to_non_nullable
              as StacAlignmentGeometry?,
      tileMode: null == tileMode
          ? _self.tileMode
          : tileMode // ignore: cast_nullable_to_non_nullable
              as TileMode,
      focalRadius: null == focalRadius
          ? _self.focalRadius
          : focalRadius // ignore: cast_nullable_to_non_nullable
              as double,
      radius: null == radius
          ? _self.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      startAngle: null == startAngle
          ? _self.startAngle
          : startAngle // ignore: cast_nullable_to_non_nullable
              as double,
      endAngle: null == endAngle
          ? _self.endAngle
          : endAngle // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of StacGradient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacAlignmentGeometryCopyWith<$Res>? get focal {
    if (_self.focal == null) {
      return null;
    }

    return $StacAlignmentGeometryCopyWith<$Res>(_self.focal!, (value) {
      return _then(_self.copyWith(focal: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacGradient implements StacGradient {
  const _StacGradient(
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
  factory _StacGradient.fromJson(Map<String, dynamic> json) =>
      _$StacGradientFromJson(json);

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

  /// Create a copy of StacGradient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacGradientCopyWith<_StacGradient> get copyWith =>
      __$StacGradientCopyWithImpl<_StacGradient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacGradientToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacGradient &&
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

  @override
  String toString() {
    return 'StacGradient(colors: $colors, stops: $stops, begin: $begin, end: $end, center: $center, gradientType: $gradientType, focal: $focal, tileMode: $tileMode, focalRadius: $focalRadius, radius: $radius, startAngle: $startAngle, endAngle: $endAngle)';
  }
}

/// @nodoc
abstract mixin class _$StacGradientCopyWith<$Res>
    implements $StacGradientCopyWith<$Res> {
  factory _$StacGradientCopyWith(
          _StacGradient value, $Res Function(_StacGradient) _then) =
      __$StacGradientCopyWithImpl;
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
class __$StacGradientCopyWithImpl<$Res>
    implements _$StacGradientCopyWith<$Res> {
  __$StacGradientCopyWithImpl(this._self, this._then);

  final _StacGradient _self;
  final $Res Function(_StacGradient) _then;

  /// Create a copy of StacGradient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_StacGradient(
      colors: null == colors
          ? _self._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stops: freezed == stops
          ? _self._stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      begin: null == begin
          ? _self.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      end: null == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      center: null == center
          ? _self.center
          : center // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      gradientType: null == gradientType
          ? _self.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as StacGradientType,
      focal: freezed == focal
          ? _self.focal
          : focal // ignore: cast_nullable_to_non_nullable
              as StacAlignmentGeometry?,
      tileMode: null == tileMode
          ? _self.tileMode
          : tileMode // ignore: cast_nullable_to_non_nullable
              as TileMode,
      focalRadius: null == focalRadius
          ? _self.focalRadius
          : focalRadius // ignore: cast_nullable_to_non_nullable
              as double,
      radius: null == radius
          ? _self.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      startAngle: null == startAngle
          ? _self.startAngle
          : startAngle // ignore: cast_nullable_to_non_nullable
              as double,
      endAngle: null == endAngle
          ? _self.endAngle
          : endAngle // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of StacGradient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacAlignmentGeometryCopyWith<$Res>? get focal {
    if (_self.focal == null) {
      return null;
    }

    return $StacAlignmentGeometryCopyWith<$Res>(_self.focal!, (value) {
      return _then(_self.copyWith(focal: value));
    });
  }
}

// dart format on
