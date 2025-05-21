// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_positioned.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacPositioned {
  StacPositionedType? get positionedType;
  StacDouble? get left;
  StacDouble? get top;
  StacDouble? get right;
  StacDouble? get bottom;
  StacDouble? get width;
  StacDouble? get height;
  StacDouble? get start;
  StacDouble? get end;
  TextDirection get textDirection;
  StacRect? get rect;
  Map<String, dynamic>? get child;

  /// Create a copy of StacPositioned
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacPositionedCopyWith<StacPositioned> get copyWith =>
      _$StacPositionedCopyWithImpl<StacPositioned>(
          this as StacPositioned, _$identity);

  /// Serializes this StacPositioned to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacPositioned &&
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
            const DeepCollectionEquality().equals(other.child, child));
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
      const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacPositioned(positionedType: $positionedType, left: $left, top: $top, right: $right, bottom: $bottom, width: $width, height: $height, start: $start, end: $end, textDirection: $textDirection, rect: $rect, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacPositionedCopyWith<$Res> {
  factory $StacPositionedCopyWith(
          StacPositioned value, $Res Function(StacPositioned) _then) =
      _$StacPositionedCopyWithImpl;
  @useResult
  $Res call(
      {StacPositionedType? positionedType,
      StacDouble? left,
      StacDouble? top,
      StacDouble? right,
      StacDouble? bottom,
      StacDouble? width,
      StacDouble? height,
      StacDouble? start,
      StacDouble? end,
      TextDirection textDirection,
      StacRect? rect,
      Map<String, dynamic>? child});

  $StacRectCopyWith<$Res>? get rect;
}

/// @nodoc
class _$StacPositionedCopyWithImpl<$Res>
    implements $StacPositionedCopyWith<$Res> {
  _$StacPositionedCopyWithImpl(this._self, this._then);

  final StacPositioned _self;
  final $Res Function(StacPositioned) _then;

  /// Create a copy of StacPositioned
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
    return _then(_self.copyWith(
      positionedType: freezed == positionedType
          ? _self.positionedType
          : positionedType // ignore: cast_nullable_to_non_nullable
              as StacPositionedType?,
      left: freezed == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      top: freezed == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      right: freezed == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      bottom: freezed == bottom
          ? _self.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      start: freezed == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      end: freezed == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      textDirection: null == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
      rect: freezed == rect
          ? _self.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as StacRect?,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacPositioned
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRectCopyWith<$Res>? get rect {
    if (_self.rect == null) {
      return null;
    }

    return $StacRectCopyWith<$Res>(_self.rect!, (value) {
      return _then(_self.copyWith(rect: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacPositioned implements StacPositioned {
  const _StacPositioned(
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
  factory _StacPositioned.fromJson(Map<String, dynamic> json) =>
      _$StacPositionedFromJson(json);

  @override
  final StacPositionedType? positionedType;
  @override
  final StacDouble? left;
  @override
  final StacDouble? top;
  @override
  final StacDouble? right;
  @override
  final StacDouble? bottom;
  @override
  final StacDouble? width;
  @override
  final StacDouble? height;
  @override
  final StacDouble? start;
  @override
  final StacDouble? end;
  @override
  @JsonKey()
  final TextDirection textDirection;
  @override
  final StacRect? rect;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacPositioned
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacPositionedCopyWith<_StacPositioned> get copyWith =>
      __$StacPositionedCopyWithImpl<_StacPositioned>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacPositionedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacPositioned &&
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

  @override
  String toString() {
    return 'StacPositioned(positionedType: $positionedType, left: $left, top: $top, right: $right, bottom: $bottom, width: $width, height: $height, start: $start, end: $end, textDirection: $textDirection, rect: $rect, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacPositionedCopyWith<$Res>
    implements $StacPositionedCopyWith<$Res> {
  factory _$StacPositionedCopyWith(
          _StacPositioned value, $Res Function(_StacPositioned) _then) =
      __$StacPositionedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacPositionedType? positionedType,
      StacDouble? left,
      StacDouble? top,
      StacDouble? right,
      StacDouble? bottom,
      StacDouble? width,
      StacDouble? height,
      StacDouble? start,
      StacDouble? end,
      TextDirection textDirection,
      StacRect? rect,
      Map<String, dynamic>? child});

  @override
  $StacRectCopyWith<$Res>? get rect;
}

/// @nodoc
class __$StacPositionedCopyWithImpl<$Res>
    implements _$StacPositionedCopyWith<$Res> {
  __$StacPositionedCopyWithImpl(this._self, this._then);

  final _StacPositioned _self;
  final $Res Function(_StacPositioned) _then;

  /// Create a copy of StacPositioned
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_StacPositioned(
      positionedType: freezed == positionedType
          ? _self.positionedType
          : positionedType // ignore: cast_nullable_to_non_nullable
              as StacPositionedType?,
      left: freezed == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      top: freezed == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      right: freezed == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      bottom: freezed == bottom
          ? _self.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      start: freezed == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      end: freezed == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      textDirection: null == textDirection
          ? _self.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
      rect: freezed == rect
          ? _self.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as StacRect?,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacPositioned
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRectCopyWith<$Res>? get rect {
    if (_self.rect == null) {
      return null;
    }

    return $StacRectCopyWith<$Res>(_self.rect!, (value) {
      return _then(_self.copyWith(rect: value));
    });
  }
}

// dart format on
