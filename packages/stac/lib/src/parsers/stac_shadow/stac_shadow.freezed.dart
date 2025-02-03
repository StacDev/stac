// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_shadow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacShadow _$StacShadowFromJson(Map<String, dynamic> json) {
  return _StacShadow.fromJson(json);
}

/// @nodoc
mixin _$StacShadow {
  String get color => throw _privateConstructorUsedError;
  StacOffset get offset => throw _privateConstructorUsedError;
  double get blurRadius => throw _privateConstructorUsedError;

  /// Serializes this StacShadow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacShadow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacShadowCopyWith<StacShadow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacShadowCopyWith<$Res> {
  factory $StacShadowCopyWith(
          StacShadow value, $Res Function(StacShadow) then) =
      _$StacShadowCopyWithImpl<$Res, StacShadow>;
  @useResult
  $Res call({String color, StacOffset offset, double blurRadius});

  $StacOffsetCopyWith<$Res> get offset;
}

/// @nodoc
class _$StacShadowCopyWithImpl<$Res, $Val extends StacShadow>
    implements $StacShadowCopyWith<$Res> {
  _$StacShadowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacShadow
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
              as StacOffset,
      blurRadius: null == blurRadius
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of StacShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res> get offset {
    return $StacOffsetCopyWith<$Res>(_value.offset, (value) {
      return _then(_value.copyWith(offset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacShadowImplCopyWith<$Res>
    implements $StacShadowCopyWith<$Res> {
  factory _$$StacShadowImplCopyWith(
          _$StacShadowImpl value, $Res Function(_$StacShadowImpl) then) =
      __$$StacShadowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String color, StacOffset offset, double blurRadius});

  @override
  $StacOffsetCopyWith<$Res> get offset;
}

/// @nodoc
class __$$StacShadowImplCopyWithImpl<$Res>
    extends _$StacShadowCopyWithImpl<$Res, _$StacShadowImpl>
    implements _$$StacShadowImplCopyWith<$Res> {
  __$$StacShadowImplCopyWithImpl(
      _$StacShadowImpl _value, $Res Function(_$StacShadowImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacShadow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? offset = null,
    Object? blurRadius = null,
  }) {
    return _then(_$StacShadowImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as StacOffset,
      blurRadius: null == blurRadius
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacShadowImpl implements _StacShadow {
  const _$StacShadowImpl(
      {this.color = '#000000',
      this.offset = const StacOffset(dx: 0, dy: 0),
      this.blurRadius = 0.0});

  factory _$StacShadowImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacShadowImplFromJson(json);

  @override
  @JsonKey()
  final String color;
  @override
  @JsonKey()
  final StacOffset offset;
  @override
  @JsonKey()
  final double blurRadius;

  @override
  String toString() {
    return 'StacShadow(color: $color, offset: $offset, blurRadius: $blurRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacShadowImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.blurRadius, blurRadius) ||
                other.blurRadius == blurRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, color, offset, blurRadius);

  /// Create a copy of StacShadow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacShadowImplCopyWith<_$StacShadowImpl> get copyWith =>
      __$$StacShadowImplCopyWithImpl<_$StacShadowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacShadowImplToJson(
      this,
    );
  }
}

abstract class _StacShadow implements StacShadow {
  const factory _StacShadow(
      {final String color,
      final StacOffset offset,
      final double blurRadius}) = _$StacShadowImpl;

  factory _StacShadow.fromJson(Map<String, dynamic> json) =
      _$StacShadowImpl.fromJson;

  @override
  String get color;
  @override
  StacOffset get offset;
  @override
  double get blurRadius;

  /// Create a copy of StacShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacShadowImplCopyWith<_$StacShadowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
