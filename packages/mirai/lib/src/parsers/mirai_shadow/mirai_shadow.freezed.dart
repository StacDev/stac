// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_shadow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiShadow _$MiraiShadowFromJson(Map<String, dynamic> json) {
  return _MiraiShadow.fromJson(json);
}

/// @nodoc
mixin _$MiraiShadow {
  String get color => throw _privateConstructorUsedError;
  MiraiOffset get offset => throw _privateConstructorUsedError;
  double get blurRadius => throw _privateConstructorUsedError;

  /// Serializes this MiraiShadow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiShadow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiShadowCopyWith<MiraiShadow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiShadowCopyWith<$Res> {
  factory $MiraiShadowCopyWith(
          MiraiShadow value, $Res Function(MiraiShadow) then) =
      _$MiraiShadowCopyWithImpl<$Res, MiraiShadow>;
  @useResult
  $Res call({String color, MiraiOffset offset, double blurRadius});

  $MiraiOffsetCopyWith<$Res> get offset;
}

/// @nodoc
class _$MiraiShadowCopyWithImpl<$Res, $Val extends MiraiShadow>
    implements $MiraiShadowCopyWith<$Res> {
  _$MiraiShadowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiShadow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? offset = null,
    Object? blurRadius = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as MiraiOffset,
      blurRadius: null == blurRadius
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of MiraiShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiOffsetCopyWith<$Res> get offset {
    return $MiraiOffsetCopyWith<$Res>(_value.offset, (value) {
      return _then(_value.copyWith(offset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiShadowImplCopyWith<$Res>
    implements $MiraiShadowCopyWith<$Res> {
  factory _$$MiraiShadowImplCopyWith(
          _$MiraiShadowImpl value, $Res Function(_$MiraiShadowImpl) then) =
      __$$MiraiShadowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String color, MiraiOffset offset, double blurRadius});

  @override
  $MiraiOffsetCopyWith<$Res> get offset;
}

/// @nodoc
class __$$MiraiShadowImplCopyWithImpl<$Res>
    extends _$MiraiShadowCopyWithImpl<$Res, _$MiraiShadowImpl>
    implements _$$MiraiShadowImplCopyWith<$Res> {
  __$$MiraiShadowImplCopyWithImpl(
      _$MiraiShadowImpl _value, $Res Function(_$MiraiShadowImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiShadow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? offset = null,
    Object? blurRadius = null,
  }) {
    return _then(_$MiraiShadowImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as MiraiOffset,
      blurRadius: null == blurRadius
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiShadowImpl implements _MiraiShadow {
  const _$MiraiShadowImpl(
      {this.color = '#000000',
      this.offset = const MiraiOffset(dx: 0, dy: 0),
      this.blurRadius = 0.0});

  factory _$MiraiShadowImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiShadowImplFromJson(json);

  @override
  @JsonKey()
  final String color;
  @override
  @JsonKey()
  final MiraiOffset offset;
  @override
  @JsonKey()
  final double blurRadius;

  @override
  String toString() {
    return 'MiraiShadow(color: $color, offset: $offset, blurRadius: $blurRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiShadowImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.blurRadius, blurRadius) ||
                other.blurRadius == blurRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, color, offset, blurRadius);

  /// Create a copy of MiraiShadow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiShadowImplCopyWith<_$MiraiShadowImpl> get copyWith =>
      __$$MiraiShadowImplCopyWithImpl<_$MiraiShadowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiShadowImplToJson(
      this,
    );
  }
}

abstract class _MiraiShadow implements MiraiShadow {
  const factory _MiraiShadow(
      {final String color,
      final MiraiOffset offset,
      final double blurRadius}) = _$MiraiShadowImpl;

  factory _MiraiShadow.fromJson(Map<String, dynamic> json) =
      _$MiraiShadowImpl.fromJson;

  @override
  String get color;
  @override
  MiraiOffset get offset;
  @override
  double get blurRadius;

  /// Create a copy of MiraiShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiShadowImplCopyWith<_$MiraiShadowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
