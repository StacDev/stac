// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_positioned.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiPositioned _$MiraiPositionedFromJson(Map<String, dynamic> json) {
  return _MiraiPositioned.fromJson(json);
}

/// @nodoc
mixin _$MiraiPositioned {
  MiraiPositionedType? get positionedType => throw _privateConstructorUsedError;
  double? get left => throw _privateConstructorUsedError;
  double? get top => throw _privateConstructorUsedError;
  double? get right => throw _privateConstructorUsedError;
  double? get bottom => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get start => throw _privateConstructorUsedError;
  double? get end => throw _privateConstructorUsedError;
  TextDirection get textDirection => throw _privateConstructorUsedError;
  MiraiRect? get rect => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiPositioned to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiPositioned
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiPositionedCopyWith<MiraiPositioned> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiPositionedCopyWith<$Res> {
  factory $MiraiPositionedCopyWith(
          MiraiPositioned value, $Res Function(MiraiPositioned) then) =
      _$MiraiPositionedCopyWithImpl<$Res, MiraiPositioned>;
  @useResult
  $Res call(
      {MiraiPositionedType? positionedType,
      double? left,
      double? top,
      double? right,
      double? bottom,
      double? width,
      double? height,
      double? start,
      double? end,
      TextDirection textDirection,
      MiraiRect? rect,
      Map<String, dynamic>? child});

  $MiraiRectCopyWith<$Res>? get rect;
}

/// @nodoc
class _$MiraiPositionedCopyWithImpl<$Res, $Val extends MiraiPositioned>
    implements $MiraiPositionedCopyWith<$Res> {
  _$MiraiPositionedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiPositioned
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionedType = freezed,
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? textDirection = null,
    Object? rect = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      positionedType: freezed == positionedType
          ? _value.positionedType
          : positionedType // ignore: cast_nullable_to_non_nullable
              as MiraiPositionedType?,
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
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as double?,
      textDirection: null == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
      rect: freezed == rect
          ? _value.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as MiraiRect?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of MiraiPositioned
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiRectCopyWith<$Res>? get rect {
    if (_value.rect == null) {
      return null;
    }

    return $MiraiRectCopyWith<$Res>(_value.rect!, (value) {
      return _then(_value.copyWith(rect: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiPositionedImplCopyWith<$Res>
    implements $MiraiPositionedCopyWith<$Res> {
  factory _$$MiraiPositionedImplCopyWith(_$MiraiPositionedImpl value,
          $Res Function(_$MiraiPositionedImpl) then) =
      __$$MiraiPositionedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MiraiPositionedType? positionedType,
      double? left,
      double? top,
      double? right,
      double? bottom,
      double? width,
      double? height,
      double? start,
      double? end,
      TextDirection textDirection,
      MiraiRect? rect,
      Map<String, dynamic>? child});

  @override
  $MiraiRectCopyWith<$Res>? get rect;
}

/// @nodoc
class __$$MiraiPositionedImplCopyWithImpl<$Res>
    extends _$MiraiPositionedCopyWithImpl<$Res, _$MiraiPositionedImpl>
    implements _$$MiraiPositionedImplCopyWith<$Res> {
  __$$MiraiPositionedImplCopyWithImpl(
      _$MiraiPositionedImpl _value, $Res Function(_$MiraiPositionedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiPositioned
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionedType = freezed,
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? textDirection = null,
    Object? rect = freezed,
    Object? child = freezed,
  }) {
    return _then(_$MiraiPositionedImpl(
      positionedType: freezed == positionedType
          ? _value.positionedType
          : positionedType // ignore: cast_nullable_to_non_nullable
              as MiraiPositionedType?,
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
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as double?,
      textDirection: null == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
      rect: freezed == rect
          ? _value.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as MiraiRect?,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiPositionedImpl implements _MiraiPositioned {
  const _$MiraiPositionedImpl(
      {this.positionedType,
      this.left,
      this.top,
      this.right,
      this.bottom,
      this.width,
      this.height,
      this.start,
      this.end,
      this.textDirection = TextDirection.ltr,
      this.rect,
      final Map<String, dynamic>? child})
      : _child = child;

  factory _$MiraiPositionedImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiPositionedImplFromJson(json);

  @override
  final MiraiPositionedType? positionedType;
  @override
  final double? left;
  @override
  final double? top;
  @override
  final double? right;
  @override
  final double? bottom;
  @override
  final double? width;
  @override
  final double? height;
  @override
  final double? start;
  @override
  final double? end;
  @override
  @JsonKey()
  final TextDirection textDirection;
  @override
  final MiraiRect? rect;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MiraiPositioned(positionedType: $positionedType, left: $left, top: $top, right: $right, bottom: $bottom, width: $width, height: $height, start: $start, end: $end, textDirection: $textDirection, rect: $rect, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiPositionedImpl &&
            (identical(other.positionedType, positionedType) ||
                other.positionedType == positionedType) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.rect, rect) || other.rect == rect) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      positionedType,
      left,
      top,
      right,
      bottom,
      width,
      height,
      start,
      end,
      textDirection,
      rect,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of MiraiPositioned
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiPositionedImplCopyWith<_$MiraiPositionedImpl> get copyWith =>
      __$$MiraiPositionedImplCopyWithImpl<_$MiraiPositionedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiPositionedImplToJson(
      this,
    );
  }
}

abstract class _MiraiPositioned implements MiraiPositioned {
  const factory _MiraiPositioned(
      {final MiraiPositionedType? positionedType,
      final double? left,
      final double? top,
      final double? right,
      final double? bottom,
      final double? width,
      final double? height,
      final double? start,
      final double? end,
      final TextDirection textDirection,
      final MiraiRect? rect,
      final Map<String, dynamic>? child}) = _$MiraiPositionedImpl;

  factory _MiraiPositioned.fromJson(Map<String, dynamic> json) =
      _$MiraiPositionedImpl.fromJson;

  @override
  MiraiPositionedType? get positionedType;
  @override
  double? get left;
  @override
  double? get top;
  @override
  double? get right;
  @override
  double? get bottom;
  @override
  double? get width;
  @override
  double? get height;
  @override
  double? get start;
  @override
  double? get end;
  @override
  TextDirection get textDirection;
  @override
  MiraiRect? get rect;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of MiraiPositioned
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiPositionedImplCopyWith<_$MiraiPositionedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
