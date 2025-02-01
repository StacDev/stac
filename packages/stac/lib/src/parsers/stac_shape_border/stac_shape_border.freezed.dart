// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_shape_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacShapeBorder _$StacShapeBorderFromJson(Map<String, dynamic> json) {
  return _StacShapeBorder.fromJson(json);
}

/// @nodoc
mixin _$StacShapeBorder {
  StacShapeBorderType get borderType => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this StacShapeBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacShapeBorderCopyWith<StacShapeBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacShapeBorderCopyWith<$Res> {
  factory $StacShapeBorderCopyWith(
          StacShapeBorder value, $Res Function(StacShapeBorder) then) =
      _$StacShapeBorderCopyWithImpl<$Res, StacShapeBorder>;
  @useResult
  $Res call({StacShapeBorderType borderType, Map<String, dynamic> data});
}

/// @nodoc
class _$StacShapeBorderCopyWithImpl<$Res, $Val extends StacShapeBorder>
    implements $StacShapeBorderCopyWith<$Res> {
  _$StacShapeBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacShapeBorder
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
              as StacShapeBorderType,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacShapeBorderImplCopyWith<$Res>
    implements $StacShapeBorderCopyWith<$Res> {
  factory _$$StacShapeBorderImplCopyWith(_$StacShapeBorderImpl value,
          $Res Function(_$StacShapeBorderImpl) then) =
      __$$StacShapeBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StacShapeBorderType borderType, Map<String, dynamic> data});
}

/// @nodoc
class __$$StacShapeBorderImplCopyWithImpl<$Res>
    extends _$StacShapeBorderCopyWithImpl<$Res, _$StacShapeBorderImpl>
    implements _$$StacShapeBorderImplCopyWith<$Res> {
  __$$StacShapeBorderImplCopyWithImpl(
      _$StacShapeBorderImpl _value, $Res Function(_$StacShapeBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? borderType = null,
    Object? data = null,
  }) {
    return _then(_$StacShapeBorderImpl(
      borderType: null == borderType
          ? _value.borderType
          : borderType // ignore: cast_nullable_to_non_nullable
              as StacShapeBorderType,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacShapeBorderImpl implements _StacShapeBorder {
  const _$StacShapeBorderImpl(
      {required this.borderType, required final Map<String, dynamic> data})
      : _data = data;

  factory _$StacShapeBorderImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacShapeBorderImplFromJson(json);

  @override
  final StacShapeBorderType borderType;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'StacShapeBorder(borderType: $borderType, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacShapeBorderImpl &&
            (identical(other.borderType, borderType) ||
                other.borderType == borderType) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, borderType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of StacShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacShapeBorderImplCopyWith<_$StacShapeBorderImpl> get copyWith =>
      __$$StacShapeBorderImplCopyWithImpl<_$StacShapeBorderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacShapeBorderImplToJson(
      this,
    );
  }
}

abstract class _StacShapeBorder implements StacShapeBorder {
  const factory _StacShapeBorder(
      {required final StacShapeBorderType borderType,
      required final Map<String, dynamic> data}) = _$StacShapeBorderImpl;

  factory _StacShapeBorder.fromJson(Map<String, dynamic> json) =
      _$StacShapeBorderImpl.fromJson;

  @override
  StacShapeBorderType get borderType;
  @override
  Map<String, dynamic> get data;

  /// Create a copy of StacShapeBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacShapeBorderImplCopyWith<_$StacShapeBorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
