// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_shape_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiShapeBorder _$MiraiShapeBorderFromJson(Map<String, dynamic> json) {
  return _MiraiShapeBorder.fromJson(json);
}

/// @nodoc
mixin _$MiraiShapeBorder {
  MiraiShapeBorderType get borderType => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this MiraiShapeBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiShapeBorderCopyWith<MiraiShapeBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiShapeBorderCopyWith<$Res> {
  factory $MiraiShapeBorderCopyWith(
          MiraiShapeBorder value, $Res Function(MiraiShapeBorder) then) =
      _$MiraiShapeBorderCopyWithImpl<$Res, MiraiShapeBorder>;
  @useResult
  $Res call({MiraiShapeBorderType borderType, Map<String, dynamic> data});
}

/// @nodoc
class _$MiraiShapeBorderCopyWithImpl<$Res, $Val extends MiraiShapeBorder>
    implements $MiraiShapeBorderCopyWith<$Res> {
  _$MiraiShapeBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? borderType = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      borderType: null == borderType
          ? _value.borderType
          : borderType // ignore: cast_nullable_to_non_nullable
              as MiraiShapeBorderType,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiShapeBorderImplCopyWith<$Res>
    implements $MiraiShapeBorderCopyWith<$Res> {
  factory _$$MiraiShapeBorderImplCopyWith(_$MiraiShapeBorderImpl value,
          $Res Function(_$MiraiShapeBorderImpl) then) =
      __$$MiraiShapeBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MiraiShapeBorderType borderType, Map<String, dynamic> data});
}

/// @nodoc
class __$$MiraiShapeBorderImplCopyWithImpl<$Res>
    extends _$MiraiShapeBorderCopyWithImpl<$Res, _$MiraiShapeBorderImpl>
    implements _$$MiraiShapeBorderImplCopyWith<$Res> {
  __$$MiraiShapeBorderImplCopyWithImpl(_$MiraiShapeBorderImpl _value,
      $Res Function(_$MiraiShapeBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? borderType = null,
    Object? data = null,
  }) {
    return _then(_$MiraiShapeBorderImpl(
      borderType: null == borderType
          ? _value.borderType
          : borderType // ignore: cast_nullable_to_non_nullable
              as MiraiShapeBorderType,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiShapeBorderImpl implements _MiraiShapeBorder {
  const _$MiraiShapeBorderImpl(
      {required this.borderType, required final Map<String, dynamic> data})
      : _data = data;

  factory _$MiraiShapeBorderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiShapeBorderImplFromJson(json);

  @override
  final MiraiShapeBorderType borderType;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'MiraiShapeBorder(borderType: $borderType, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiShapeBorderImpl &&
            (identical(other.borderType, borderType) ||
                other.borderType == borderType) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, borderType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of MiraiShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiShapeBorderImplCopyWith<_$MiraiShapeBorderImpl> get copyWith =>
      __$$MiraiShapeBorderImplCopyWithImpl<_$MiraiShapeBorderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiShapeBorderImplToJson(
      this,
    );
  }
}

abstract class _MiraiShapeBorder implements MiraiShapeBorder {
  const factory _MiraiShapeBorder(
      {required final MiraiShapeBorderType borderType,
      required final Map<String, dynamic> data}) = _$MiraiShapeBorderImpl;

  factory _MiraiShapeBorder.fromJson(Map<String, dynamic> json) =
      _$MiraiShapeBorderImpl.fromJson;

  @override
  MiraiShapeBorderType get borderType;
  @override
  Map<String, dynamic> get data;

  /// Create a copy of MiraiShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiShapeBorderImplCopyWith<_$MiraiShapeBorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
