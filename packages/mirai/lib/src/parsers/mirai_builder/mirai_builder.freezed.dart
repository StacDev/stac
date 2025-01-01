// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_builder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiBuilder _$MiraiBuilderFromJson(Map<String, dynamic> json) {
  return _MiraiBuilder.fromJson(json);
}

/// @nodoc
mixin _$MiraiBuilder {
  Map<String, dynamic>? get builder => throw _privateConstructorUsedError;

  /// Serializes this MiraiBuilder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiBuilderCopyWith<MiraiBuilder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiBuilderCopyWith<$Res> {
  factory $MiraiBuilderCopyWith(
          MiraiBuilder value, $Res Function(MiraiBuilder) then) =
      _$MiraiBuilderCopyWithImpl<$Res, MiraiBuilder>;
  @useResult
  $Res call({Map<String, dynamic>? builder});
}

/// @nodoc
class _$MiraiBuilderCopyWithImpl<$Res, $Val extends MiraiBuilder>
    implements $MiraiBuilderCopyWith<$Res> {
  _$MiraiBuilderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiBuilder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? builder = freezed,
  }) {
    return _then(_value.copyWith(
      builder: freezed == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiBuilderImplCopyWith<$Res>
    implements $MiraiBuilderCopyWith<$Res> {
  factory _$$MiraiBuilderImplCopyWith(
          _$MiraiBuilderImpl value, $Res Function(_$MiraiBuilderImpl) then) =
      __$$MiraiBuilderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? builder});
}

/// @nodoc
class __$$MiraiBuilderImplCopyWithImpl<$Res>
    extends _$MiraiBuilderCopyWithImpl<$Res, _$MiraiBuilderImpl>
    implements _$$MiraiBuilderImplCopyWith<$Res> {
  __$$MiraiBuilderImplCopyWithImpl(
      _$MiraiBuilderImpl _value, $Res Function(_$MiraiBuilderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiBuilder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? builder = freezed,
  }) {
    return _then(_$MiraiBuilderImpl(
      builder: freezed == builder
          ? _value._builder
          : builder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiBuilderImpl implements _MiraiBuilder {
  const _$MiraiBuilderImpl({final Map<String, dynamic>? builder})
      : _builder = builder;

  factory _$MiraiBuilderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiBuilderImplFromJson(json);

  final Map<String, dynamic>? _builder;
  @override
  Map<String, dynamic>? get builder {
    final value = _builder;
    if (value == null) return null;
    if (_builder is EqualUnmodifiableMapView) return _builder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MiraiBuilder(builder: $builder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiBuilderImpl &&
            const DeepCollectionEquality().equals(other._builder, _builder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_builder));

  /// Create a copy of MiraiBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiBuilderImplCopyWith<_$MiraiBuilderImpl> get copyWith =>
      __$$MiraiBuilderImplCopyWithImpl<_$MiraiBuilderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiBuilderImplToJson(
      this,
    );
  }
}

abstract class _MiraiBuilder implements MiraiBuilder {
  const factory _MiraiBuilder({final Map<String, dynamic>? builder}) =
      _$MiraiBuilderImpl;

  factory _MiraiBuilder.fromJson(Map<String, dynamic> json) =
      _$MiraiBuilderImpl.fromJson;

  @override
  Map<String, dynamic>? get builder;

  /// Create a copy of MiraiBuilder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiBuilderImplCopyWith<_$MiraiBuilderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
