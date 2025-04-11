// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_offset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacOffset {
  double get dx;
  double get dy;

  /// Create a copy of StacOffset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<StacOffset> get copyWith =>
      _$StacOffsetCopyWithImpl<StacOffset>(this as StacOffset, _$identity);

  /// Serializes this StacOffset to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacOffset &&
            (identical(other.dx, dx) || other.dx == dx) &&
            (identical(other.dy, dy) || other.dy == dy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dx, dy);

  @override
  String toString() {
    return 'StacOffset(dx: $dx, dy: $dy)';
  }
}

/// @nodoc
abstract mixin class $StacOffsetCopyWith<$Res> {
  factory $StacOffsetCopyWith(
          StacOffset value, $Res Function(StacOffset) _then) =
      _$StacOffsetCopyWithImpl;
  @useResult
  $Res call({double dx, double dy});
}

/// @nodoc
class _$StacOffsetCopyWithImpl<$Res> implements $StacOffsetCopyWith<$Res> {
  _$StacOffsetCopyWithImpl(this._self, this._then);

  final StacOffset _self;
  final $Res Function(StacOffset) _then;

  /// Create a copy of StacOffset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dx = null,
    Object? dy = null,
  }) {
    return _then(_self.copyWith(
      dx: null == dx
          ? _self.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as double,
      dy: null == dy
          ? _self.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacOffset implements StacOffset {
  const _StacOffset({required this.dx, required this.dy});
  factory _StacOffset.fromJson(Map<String, dynamic> json) =>
      _$StacOffsetFromJson(json);

  @override
  final double dx;
  @override
  final double dy;

  /// Create a copy of StacOffset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacOffsetCopyWith<_StacOffset> get copyWith =>
      __$StacOffsetCopyWithImpl<_StacOffset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacOffsetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacOffset &&
            (identical(other.dx, dx) || other.dx == dx) &&
            (identical(other.dy, dy) || other.dy == dy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dx, dy);

  @override
  String toString() {
    return 'StacOffset(dx: $dx, dy: $dy)';
  }
}

/// @nodoc
abstract mixin class _$StacOffsetCopyWith<$Res>
    implements $StacOffsetCopyWith<$Res> {
  factory _$StacOffsetCopyWith(
          _StacOffset value, $Res Function(_StacOffset) _then) =
      __$StacOffsetCopyWithImpl;
  @override
  @useResult
  $Res call({double dx, double dy});
}

/// @nodoc
class __$StacOffsetCopyWithImpl<$Res> implements _$StacOffsetCopyWith<$Res> {
  __$StacOffsetCopyWithImpl(this._self, this._then);

  final _StacOffset _self;
  final $Res Function(_StacOffset) _then;

  /// Create a copy of StacOffset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dx = null,
    Object? dy = null,
  }) {
    return _then(_StacOffset(
      dx: null == dx
          ? _self.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as double,
      dy: null == dy
          ? _self.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
