// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_rect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacRect {
  StacRectType get rectType;
  StacOffset? get center;
  StacOffset? get a;
  StacOffset? get b;
  double? get width;
  double? get height;
  double? get left;
  double? get top;
  double? get right;
  double? get bottom;
  double? get radius;

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacRectCopyWith<StacRect> get copyWith =>
      _$StacRectCopyWithImpl<StacRect>(this as StacRect, _$identity);

  /// Serializes this StacRect to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacRect &&
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

  @override
  String toString() {
    return 'StacRect(rectType: $rectType, center: $center, a: $a, b: $b, width: $width, height: $height, left: $left, top: $top, right: $right, bottom: $bottom, radius: $radius)';
  }
}

/// @nodoc
abstract mixin class $StacRectCopyWith<$Res> {
  factory $StacRectCopyWith(StacRect value, $Res Function(StacRect) _then) =
      _$StacRectCopyWithImpl;
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
class _$StacRectCopyWithImpl<$Res> implements $StacRectCopyWith<$Res> {
  _$StacRectCopyWithImpl(this._self, this._then);

  final StacRect _self;
  final $Res Function(StacRect) _then;

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
    return _then(_self.copyWith(
      rectType: null == rectType
          ? _self.rectType
          : rectType // ignore: cast_nullable_to_non_nullable
              as StacRectType,
      center: freezed == center
          ? _self.center
          : center // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      a: freezed == a
          ? _self.a
          : a // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      b: freezed == b
          ? _self.b
          : b // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      left: freezed == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as double?,
      top: freezed == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      right: freezed == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: freezed == bottom
          ? _self.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
      radius: freezed == radius
          ? _self.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get center {
    if (_self.center == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_self.center!, (value) {
      return _then(_self.copyWith(center: value));
    });
  }

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get a {
    if (_self.a == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_self.a!, (value) {
      return _then(_self.copyWith(a: value));
    });
  }

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get b {
    if (_self.b == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_self.b!, (value) {
      return _then(_self.copyWith(b: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacRect implements StacRect {
  const _StacRect(
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
  factory _StacRect.fromJson(Map<String, dynamic> json) =>
      _$StacRectFromJson(json);

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

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacRectCopyWith<_StacRect> get copyWith =>
      __$StacRectCopyWithImpl<_StacRect>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacRectToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacRect &&
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

  @override
  String toString() {
    return 'StacRect(rectType: $rectType, center: $center, a: $a, b: $b, width: $width, height: $height, left: $left, top: $top, right: $right, bottom: $bottom, radius: $radius)';
  }
}

/// @nodoc
abstract mixin class _$StacRectCopyWith<$Res>
    implements $StacRectCopyWith<$Res> {
  factory _$StacRectCopyWith(_StacRect value, $Res Function(_StacRect) _then) =
      __$StacRectCopyWithImpl;
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
class __$StacRectCopyWithImpl<$Res> implements _$StacRectCopyWith<$Res> {
  __$StacRectCopyWithImpl(this._self, this._then);

  final _StacRect _self;
  final $Res Function(_StacRect) _then;

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_StacRect(
      rectType: null == rectType
          ? _self.rectType
          : rectType // ignore: cast_nullable_to_non_nullable
              as StacRectType,
      center: freezed == center
          ? _self.center
          : center // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      a: freezed == a
          ? _self.a
          : a // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      b: freezed == b
          ? _self.b
          : b // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      left: freezed == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as double?,
      top: freezed == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      right: freezed == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: freezed == bottom
          ? _self.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
      radius: freezed == radius
          ? _self.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get center {
    if (_self.center == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_self.center!, (value) {
      return _then(_self.copyWith(center: value));
    });
  }

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get a {
    if (_self.a == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_self.a!, (value) {
      return _then(_self.copyWith(a: value));
    });
  }

  /// Create a copy of StacRect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get b {
    if (_self.b == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_self.b!, (value) {
      return _then(_self.copyWith(b: value));
    });
  }
}

// dart format on
