// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_rect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiRect _$MiraiRectFromJson(Map<String, dynamic> json) {
  return _MiraiRect.fromJson(json);
}

/// @nodoc
mixin _$MiraiRect {
  MiraiRectType get rectType => throw _privateConstructorUsedError;
  MiraiOffset? get center => throw _privateConstructorUsedError;
  MiraiOffset? get a => throw _privateConstructorUsedError;
  MiraiOffset? get b => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get left => throw _privateConstructorUsedError;
  double? get top => throw _privateConstructorUsedError;
  double? get right => throw _privateConstructorUsedError;
  double? get bottom => throw _privateConstructorUsedError;
  double? get radius => throw _privateConstructorUsedError;

  /// Serializes this MiraiRect to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiRect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiRectCopyWith<MiraiRect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiRectCopyWith<$Res> {
  factory $MiraiRectCopyWith(MiraiRect value, $Res Function(MiraiRect) then) =
      _$MiraiRectCopyWithImpl<$Res, MiraiRect>;
  @useResult
  $Res call(
      {MiraiRectType rectType,
      MiraiOffset? center,
      MiraiOffset? a,
      MiraiOffset? b,
      double? width,
      double? height,
      double? left,
      double? top,
      double? right,
      double? bottom,
      double? radius});

  $MiraiOffsetCopyWith<$Res>? get center;
  $MiraiOffsetCopyWith<$Res>? get a;
  $MiraiOffsetCopyWith<$Res>? get b;
}

/// @nodoc
class _$MiraiRectCopyWithImpl<$Res, $Val extends MiraiRect>
    implements $MiraiRectCopyWith<$Res> {
  _$MiraiRectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiRect
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
              as MiraiRectType,
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as MiraiOffset?,
      a: freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as MiraiOffset?,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as MiraiOffset?,
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

  /// Create a copy of MiraiRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiOffsetCopyWith<$Res>? get center {
    if (_value.center == null) {
      return null;
    }

    return $MiraiOffsetCopyWith<$Res>(_value.center!, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }

  /// Create a copy of MiraiRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiOffsetCopyWith<$Res>? get a {
    if (_value.a == null) {
      return null;
    }

    return $MiraiOffsetCopyWith<$Res>(_value.a!, (value) {
      return _then(_value.copyWith(a: value) as $Val);
    });
  }

  /// Create a copy of MiraiRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiOffsetCopyWith<$Res>? get b {
    if (_value.b == null) {
      return null;
    }

    return $MiraiOffsetCopyWith<$Res>(_value.b!, (value) {
      return _then(_value.copyWith(b: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiRectImplCopyWith<$Res>
    implements $MiraiRectCopyWith<$Res> {
  factory _$$MiraiRectImplCopyWith(
          _$MiraiRectImpl value, $Res Function(_$MiraiRectImpl) then) =
      __$$MiraiRectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MiraiRectType rectType,
      MiraiOffset? center,
      MiraiOffset? a,
      MiraiOffset? b,
      double? width,
      double? height,
      double? left,
      double? top,
      double? right,
      double? bottom,
      double? radius});

  @override
  $MiraiOffsetCopyWith<$Res>? get center;
  @override
  $MiraiOffsetCopyWith<$Res>? get a;
  @override
  $MiraiOffsetCopyWith<$Res>? get b;
}

/// @nodoc
class __$$MiraiRectImplCopyWithImpl<$Res>
    extends _$MiraiRectCopyWithImpl<$Res, _$MiraiRectImpl>
    implements _$$MiraiRectImplCopyWith<$Res> {
  __$$MiraiRectImplCopyWithImpl(
      _$MiraiRectImpl _value, $Res Function(_$MiraiRectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiRect
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
    return _then(_$MiraiRectImpl(
      rectType: null == rectType
          ? _value.rectType
          : rectType // ignore: cast_nullable_to_non_nullable
              as MiraiRectType,
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as MiraiOffset?,
      a: freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as MiraiOffset?,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as MiraiOffset?,
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
class _$MiraiRectImpl implements _MiraiRect {
  const _$MiraiRectImpl(
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

  factory _$MiraiRectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiRectImplFromJson(json);

  @override
  final MiraiRectType rectType;
  @override
  final MiraiOffset? center;
  @override
  final MiraiOffset? a;
  @override
  final MiraiOffset? b;
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
    return 'MiraiRect(rectType: $rectType, center: $center, a: $a, b: $b, width: $width, height: $height, left: $left, top: $top, right: $right, bottom: $bottom, radius: $radius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiRectImpl &&
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

  /// Create a copy of MiraiRect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiRectImplCopyWith<_$MiraiRectImpl> get copyWith =>
      __$$MiraiRectImplCopyWithImpl<_$MiraiRectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiRectImplToJson(
      this,
    );
  }
}

abstract class _MiraiRect implements MiraiRect {
  const factory _MiraiRect(
      {required final MiraiRectType rectType,
      final MiraiOffset? center,
      final MiraiOffset? a,
      final MiraiOffset? b,
      final double? width,
      final double? height,
      final double? left,
      final double? top,
      final double? right,
      final double? bottom,
      final double? radius}) = _$MiraiRectImpl;

  factory _MiraiRect.fromJson(Map<String, dynamic> json) =
      _$MiraiRectImpl.fromJson;

  @override
  MiraiRectType get rectType;
  @override
  MiraiOffset? get center;
  @override
  MiraiOffset? get a;
  @override
  MiraiOffset? get b;
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

  /// Create a copy of MiraiRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiRectImplCopyWith<_$MiraiRectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
