// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_rect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacRect _$StacRectFromJson(Map<String, dynamic> json) {
  return _StacRect.fromJson(json);
}

/// @nodoc
mixin _$StacRect {
  StacRectType get rectType => throw _privateConstructorUsedError;
  StacOffset? get center => throw _privateConstructorUsedError;
  StacOffset? get a => throw _privateConstructorUsedError;
  StacOffset? get b => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get left => throw _privateConstructorUsedError;
  double? get top => throw _privateConstructorUsedError;
  double? get right => throw _privateConstructorUsedError;
  double? get bottom => throw _privateConstructorUsedError;
  double? get radius => throw _privateConstructorUsedError;

  /// Serializes this StacRect to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacRectCopyWith<StacRect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacRectCopyWith<$Res> {
  factory $StacRectCopyWith(StacRect value, $Res Function(StacRect) then) =
      _$StacRectCopyWithImpl<$Res, StacRect>;
  @useResult
  $Res call(
      {StacRectType rectType,
      StacOffset? center,
      StacOffset? a,
      StacOffset? b,
      double? width,
      double? height,
      double? left,
      double? top,
      double? right,
      double? bottom,
      double? radius});

  $StacOffsetCopyWith<$Res>? get center;
  $StacOffsetCopyWith<$Res>? get a;
  $StacOffsetCopyWith<$Res>? get b;
}

/// @nodoc
class _$StacRectCopyWithImpl<$Res, $Val extends StacRect>
    implements $StacRectCopyWith<$Res> {
  _$StacRectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectType = null,
    Object? center = freezed,
    Object? a = freezed,
    Object? b = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
    Object? radius = freezed,
  }) {
    return _then(_value.copyWith(
      rectType: null == rectType
          ? _value.rectType
          : rectType // ignore: cast_nullable_to_non_nullable
              as StacRectType,
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      a: freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double?,
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get center {
    if (_value.center == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_value.center!, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get a {
    if (_value.a == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_value.a!, (value) {
      return _then(_value.copyWith(a: value) as $Val);
    });
  }

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get b {
    if (_value.b == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_value.b!, (value) {
      return _then(_value.copyWith(b: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacRectImplCopyWith<$Res>
    implements $StacRectCopyWith<$Res> {
  factory _$$StacRectImplCopyWith(
          _$StacRectImpl value, $Res Function(_$StacRectImpl) then) =
      __$$StacRectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StacRectType rectType,
      StacOffset? center,
      StacOffset? a,
      StacOffset? b,
      double? width,
      double? height,
      double? left,
      double? top,
      double? right,
      double? bottom,
      double? radius});

  @override
  $StacOffsetCopyWith<$Res>? get center;
  @override
  $StacOffsetCopyWith<$Res>? get a;
  @override
  $StacOffsetCopyWith<$Res>? get b;
}

/// @nodoc
class __$$StacRectImplCopyWithImpl<$Res>
    extends _$StacRectCopyWithImpl<$Res, _$StacRectImpl>
    implements _$$StacRectImplCopyWith<$Res> {
  __$$StacRectImplCopyWithImpl(
      _$StacRectImpl _value, $Res Function(_$StacRectImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rectType = null,
    Object? center = freezed,
    Object? a = freezed,
    Object? b = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
    Object? radius = freezed,
  }) {
    return _then(_$StacRectImpl(
      rectType: null == rectType
          ? _value.rectType
          : rectType // ignore: cast_nullable_to_non_nullable
              as StacRectType,
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      a: freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double?,
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacRectImpl implements _StacRect {
  const _$StacRectImpl(
      {required this.rectType,
      this.center,
      this.a,
      this.b,
      this.width,
      this.height,
      this.left,
      this.top,
      this.right,
      this.bottom,
      this.radius});

  factory _$StacRectImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacRectImplFromJson(json);

  @override
  final StacRectType rectType;
  @override
  final StacOffset? center;
  @override
  final StacOffset? a;
  @override
  final StacOffset? b;
  @override
  final double? width;
  @override
  final double? height;
  @override
  final double? left;
  @override
  final double? top;
  @override
  final double? right;
  @override
  final double? bottom;
  @override
  final double? radius;

  @override
  String toString() {
    return 'StacRect(rectType: $rectType, center: $center, a: $a, b: $b, width: $width, height: $height, left: $left, top: $top, right: $right, bottom: $bottom, radius: $radius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacRectImpl &&
            (identical(other.rectType, rectType) ||
                other.rectType == rectType) &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.radius, radius) || other.radius == radius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rectType, center, a, b, width,
      height, left, top, right, bottom, radius);

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacRectImplCopyWith<_$StacRectImpl> get copyWith =>
      __$$StacRectImplCopyWithImpl<_$StacRectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacRectImplToJson(
      this,
    );
  }
}

abstract class _StacRect implements StacRect {
  const factory _StacRect(
      {required final StacRectType rectType,
      final StacOffset? center,
      final StacOffset? a,
      final StacOffset? b,
      final double? width,
      final double? height,
      final double? left,
      final double? top,
      final double? right,
      final double? bottom,
      final double? radius}) = _$StacRectImpl;

  factory _StacRect.fromJson(Map<String, dynamic> json) =
      _$StacRectImpl.fromJson;

  @override
  StacRectType get rectType;
  @override
  StacOffset? get center;
  @override
  StacOffset? get a;
  @override
  StacOffset? get b;
  @override
  double? get width;
  @override
  double? get height;
  @override
  double? get left;
  @override
  double? get top;
  @override
  double? get right;
  @override
  double? get bottom;
  @override
  double? get radius;

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacRectImplCopyWith<_$StacRectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
