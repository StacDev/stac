// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_border_radius.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
StacBorderRadius _$StacBorderRadiusFromJson(Map<String, dynamic> json) {
  return _StacBorder.fromJson(json);
}

/// @nodoc
mixin _$StacBorderRadius {
  StacDouble get topLeft;
  StacDouble get topRight;
  StacDouble get bottomLeft;
  StacDouble get bottomRight;

  /// Create a copy of StacBorderRadius
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBorderRadiusCopyWith<StacBorderRadius> get copyWith =>
      _$StacBorderRadiusCopyWithImpl<StacBorderRadius>(
          this as StacBorderRadius, _$identity);

  /// Serializes this StacBorderRadius to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBorderRadius &&
            (identical(other.topLeft, topLeft) || other.topLeft == topLeft) &&
            (identical(other.topRight, topRight) ||
                other.topRight == topRight) &&
            (identical(other.bottomLeft, bottomLeft) ||
                other.bottomLeft == bottomLeft) &&
            (identical(other.bottomRight, bottomRight) ||
                other.bottomRight == bottomRight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, topLeft, topRight, bottomLeft, bottomRight);

  @override
  String toString() {
    return 'StacBorderRadius(topLeft: $topLeft, topRight: $topRight, bottomLeft: $bottomLeft, bottomRight: $bottomRight)';
  }
}

/// @nodoc
abstract mixin class $StacBorderRadiusCopyWith<$Res> {
  factory $StacBorderRadiusCopyWith(
          StacBorderRadius value, $Res Function(StacBorderRadius) _then) =
      _$StacBorderRadiusCopyWithImpl;
  @useResult
  $Res call(
      {StacDouble topLeft,
      StacDouble topRight,
      StacDouble bottomLeft,
      StacDouble bottomRight});
}

/// @nodoc
class _$StacBorderRadiusCopyWithImpl<$Res>
    implements $StacBorderRadiusCopyWith<$Res> {
  _$StacBorderRadiusCopyWithImpl(this._self, this._then);

  final StacBorderRadius _self;
  final $Res Function(StacBorderRadius) _then;

  /// Create a copy of StacBorderRadius
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topLeft = null,
    Object? topRight = null,
    Object? bottomLeft = null,
    Object? bottomRight = null,
  }) {
    return _then(_self.copyWith(
      topLeft: null == topLeft
          ? _self.topLeft
          : topLeft // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      topRight: null == topRight
          ? _self.topRight
          : topRight // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      bottomLeft: null == bottomLeft
          ? _self.bottomLeft
          : bottomLeft // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      bottomRight: null == bottomRight
          ? _self.bottomRight
          : bottomRight // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacBorder implements StacBorderRadius {
  const _StacBorder(
      {this.topLeft = StacDouble.zero,
      this.topRight = StacDouble.zero,
      this.bottomLeft = StacDouble.zero,
      this.bottomRight = StacDouble.zero});
  factory _StacBorder.fromJson(Map<String, dynamic> json) =>
      _$StacBorderFromJson(json);

  @override
  @JsonKey()
  final StacDouble topLeft;
  @override
  @JsonKey()
  final StacDouble topRight;
  @override
  @JsonKey()
  final StacDouble bottomLeft;
  @override
  @JsonKey()
  final StacDouble bottomRight;

  /// Create a copy of StacBorderRadius
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBorderCopyWith<_StacBorder> get copyWith =>
      __$StacBorderCopyWithImpl<_StacBorder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBorderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBorder &&
            (identical(other.topLeft, topLeft) || other.topLeft == topLeft) &&
            (identical(other.topRight, topRight) ||
                other.topRight == topRight) &&
            (identical(other.bottomLeft, bottomLeft) ||
                other.bottomLeft == bottomLeft) &&
            (identical(other.bottomRight, bottomRight) ||
                other.bottomRight == bottomRight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, topLeft, topRight, bottomLeft, bottomRight);

  @override
  String toString() {
    return 'StacBorderRadius(topLeft: $topLeft, topRight: $topRight, bottomLeft: $bottomLeft, bottomRight: $bottomRight)';
  }
}

/// @nodoc
abstract mixin class _$StacBorderCopyWith<$Res>
    implements $StacBorderRadiusCopyWith<$Res> {
  factory _$StacBorderCopyWith(
          _StacBorder value, $Res Function(_StacBorder) _then) =
      __$StacBorderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacDouble topLeft,
      StacDouble topRight,
      StacDouble bottomLeft,
      StacDouble bottomRight});
}

/// @nodoc
class __$StacBorderCopyWithImpl<$Res> implements _$StacBorderCopyWith<$Res> {
  __$StacBorderCopyWithImpl(this._self, this._then);

  final _StacBorder _self;
  final $Res Function(_StacBorder) _then;

  /// Create a copy of StacBorderRadius
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? topLeft = null,
    Object? topRight = null,
    Object? bottomLeft = null,
    Object? bottomRight = null,
  }) {
    return _then(_StacBorder(
      topLeft: null == topLeft
          ? _self.topLeft
          : topLeft // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      topRight: null == topRight
          ? _self.topRight
          : topRight // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      bottomLeft: null == bottomLeft
          ? _self.bottomLeft
          : bottomLeft // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      bottomRight: null == bottomRight
          ? _self.bottomRight
          : bottomRight // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }
}

// dart format on
