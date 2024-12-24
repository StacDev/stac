// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_offset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiOffset _$MiraiOffsetFromJson(Map<String, dynamic> json) {
  return _MiraiOffset.fromJson(json);
}

/// @nodoc
mixin _$MiraiOffset {
  double get dx => throw _privateConstructorUsedError;
  double get dy => throw _privateConstructorUsedError;

  /// Serializes this MiraiOffset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiOffset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiOffsetCopyWith<MiraiOffset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiOffsetCopyWith<$Res> {
  factory $MiraiOffsetCopyWith(
          MiraiOffset value, $Res Function(MiraiOffset) then) =
      _$MiraiOffsetCopyWithImpl<$Res, MiraiOffset>;
  @useResult
  $Res call({double dx, double dy});
}

/// @nodoc
class _$MiraiOffsetCopyWithImpl<$Res, $Val extends MiraiOffset>
    implements $MiraiOffsetCopyWith<$Res> {
  _$MiraiOffsetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiOffset
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
abstract class _$$MiraiOffsetImplCopyWith<$Res>
    implements $MiraiOffsetCopyWith<$Res> {
  factory _$$MiraiOffsetImplCopyWith(
          _$MiraiOffsetImpl value, $Res Function(_$MiraiOffsetImpl) then) =
      __$$MiraiOffsetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double dx, double dy});
}

/// @nodoc
class __$$MiraiOffsetImplCopyWithImpl<$Res>
    extends _$MiraiOffsetCopyWithImpl<$Res, _$MiraiOffsetImpl>
    implements _$$MiraiOffsetImplCopyWith<$Res> {
  __$$MiraiOffsetImplCopyWithImpl(
      _$MiraiOffsetImpl _value, $Res Function(_$MiraiOffsetImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiOffset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dx = null,
    Object? dy = null,
  }) {
    return _then(_$MiraiOffsetImpl(
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
class _$MiraiOffsetImpl implements _MiraiOffset {
  const _$MiraiOffsetImpl({required this.dx, required this.dy});

  factory _$MiraiOffsetImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiOffsetImplFromJson(json);

  @override
  final double dx;
  @override
  final double dy;

  @override
  String toString() {
    return 'MiraiOffset(dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiOffsetImpl &&
            (identical(other.dx, dx) || other.dx == dx) &&
            (identical(other.dy, dy) || other.dy == dy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dx, dy);

  /// Create a copy of MiraiOffset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiOffsetImplCopyWith<_$MiraiOffsetImpl> get copyWith =>
      __$$MiraiOffsetImplCopyWithImpl<_$MiraiOffsetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiOffsetImplToJson(
      this,
    );
  }
}

abstract class _MiraiOffset implements MiraiOffset {
  const factory _MiraiOffset(
      {required final double dx, required final double dy}) = _$MiraiOffsetImpl;

  factory _MiraiOffset.fromJson(Map<String, dynamic> json) =
      _$MiraiOffsetImpl.fromJson;

  @override
  double get dx;
  @override
  double get dy;

  /// Create a copy of MiraiOffset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiOffsetImplCopyWith<_$MiraiOffsetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
