// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_offset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacOffset _$StacOffsetFromJson(Map<String, dynamic> json) {
  return _StacOffset.fromJson(json);
}

/// @nodoc
mixin _$StacOffset {
  double get dx => throw _privateConstructorUsedError;
  double get dy => throw _privateConstructorUsedError;

  /// Serializes this StacOffset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacOffset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacOffsetCopyWith<StacOffset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacOffsetCopyWith<$Res> {
  factory $StacOffsetCopyWith(
          StacOffset value, $Res Function(StacOffset) then) =
      _$StacOffsetCopyWithImpl<$Res, StacOffset>;
  @useResult
  $Res call({double dx, double dy});
}

/// @nodoc
class _$StacOffsetCopyWithImpl<$Res, $Val extends StacOffset>
    implements $StacOffsetCopyWith<$Res> {
  _$StacOffsetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacOffset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dx = null,
    Object? dy = null,
  }) {
    return _then(_value.copyWith(
      dx: null == dx
          ? _value.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as double,
      dy: null == dy
          ? _value.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacOffsetImplCopyWith<$Res>
    implements $StacOffsetCopyWith<$Res> {
  factory _$$StacOffsetImplCopyWith(
          _$StacOffsetImpl value, $Res Function(_$StacOffsetImpl) then) =
      __$$StacOffsetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double dx, double dy});
}

/// @nodoc
class __$$StacOffsetImplCopyWithImpl<$Res>
    extends _$StacOffsetCopyWithImpl<$Res, _$StacOffsetImpl>
    implements _$$StacOffsetImplCopyWith<$Res> {
  __$$StacOffsetImplCopyWithImpl(
      _$StacOffsetImpl _value, $Res Function(_$StacOffsetImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacOffset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dx = null,
    Object? dy = null,
  }) {
    return _then(_$StacOffsetImpl(
      dx: null == dx
          ? _value.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as double,
      dy: null == dy
          ? _value.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacOffsetImpl implements _StacOffset {
  const _$StacOffsetImpl({required this.dx, required this.dy});

  factory _$StacOffsetImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacOffsetImplFromJson(json);

  @override
  final double dx;
  @override
  final double dy;

  @override
  String toString() {
    return 'StacOffset(dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacOffsetImpl &&
            (identical(other.dx, dx) || other.dx == dx) &&
            (identical(other.dy, dy) || other.dy == dy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dx, dy);

  /// Create a copy of StacOffset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacOffsetImplCopyWith<_$StacOffsetImpl> get copyWith =>
      __$$StacOffsetImplCopyWithImpl<_$StacOffsetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacOffsetImplToJson(
      this,
    );
  }
}

abstract class _StacOffset implements StacOffset {
  const factory _StacOffset(
      {required final double dx, required final double dy}) = _$StacOffsetImpl;

  factory _StacOffset.fromJson(Map<String, dynamic> json) =
      _$StacOffsetImpl.fromJson;

  @override
  double get dx;
  @override
  double get dy;

  /// Create a copy of StacOffset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacOffsetImplCopyWith<_$StacOffsetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
