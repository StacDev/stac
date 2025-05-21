// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_edge_insets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacEdgeInsets {
  StacDouble? get left;
  StacDouble? get top;
  StacDouble? get right;
  StacDouble? get bottom;

  /// Create a copy of StacEdgeInsets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<StacEdgeInsets> get copyWith =>
      _$StacEdgeInsetsCopyWithImpl<StacEdgeInsets>(
          this as StacEdgeInsets, _$identity);

  /// Serializes this StacEdgeInsets to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacEdgeInsets &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, left, top, right, bottom);

  @override
  String toString() {
    return 'StacEdgeInsets(left: $left, top: $top, right: $right, bottom: $bottom)';
  }
}

/// @nodoc
abstract mixin class $StacEdgeInsetsCopyWith<$Res> {
  factory $StacEdgeInsetsCopyWith(
          StacEdgeInsets value, $Res Function(StacEdgeInsets) _then) =
      _$StacEdgeInsetsCopyWithImpl;
  @useResult
  $Res call(
      {StacDouble? left,
      StacDouble? top,
      StacDouble? right,
      StacDouble? bottom});
}

/// @nodoc
class _$StacEdgeInsetsCopyWithImpl<$Res>
    implements $StacEdgeInsetsCopyWith<$Res> {
  _$StacEdgeInsetsCopyWithImpl(this._self, this._then);

  final StacEdgeInsets _self;
  final $Res Function(StacEdgeInsets) _then;

  /// Create a copy of StacEdgeInsets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
  }) {
    return _then(_self.copyWith(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacEdgeInsets implements StacEdgeInsets {
  const _StacEdgeInsets({this.left, this.top, this.right, this.bottom});
  factory _StacEdgeInsets.fromJson(Map<String, dynamic> json) =>
      _$StacEdgeInsetsFromJson(json);

  @override
  final StacDouble? left;
  @override
  final StacDouble? top;
  @override
  final StacDouble? right;
  @override
  final StacDouble? bottom;

  /// Create a copy of StacEdgeInsets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacEdgeInsetsCopyWith<_StacEdgeInsets> get copyWith =>
      __$StacEdgeInsetsCopyWithImpl<_StacEdgeInsets>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacEdgeInsetsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacEdgeInsets &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, left, top, right, bottom);

  @override
  String toString() {
    return 'StacEdgeInsets(left: $left, top: $top, right: $right, bottom: $bottom)';
  }
}

/// @nodoc
abstract mixin class _$StacEdgeInsetsCopyWith<$Res>
    implements $StacEdgeInsetsCopyWith<$Res> {
  factory _$StacEdgeInsetsCopyWith(
          _StacEdgeInsets value, $Res Function(_StacEdgeInsets) _then) =
      __$StacEdgeInsetsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacDouble? left,
      StacDouble? top,
      StacDouble? right,
      StacDouble? bottom});
}

/// @nodoc
class __$StacEdgeInsetsCopyWithImpl<$Res>
    implements _$StacEdgeInsetsCopyWith<$Res> {
  __$StacEdgeInsetsCopyWithImpl(this._self, this._then);

  final _StacEdgeInsets _self;
  final $Res Function(_StacEdgeInsets) _then;

  /// Create a copy of StacEdgeInsets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
  }) {
    return _then(_StacEdgeInsets(
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
    ));
  }
}

// dart format on
