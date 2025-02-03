// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacSize _$StacSizeFromJson(Map<String, dynamic> json) {
  return _StacSize.fromJson(json);
}

/// @nodoc
mixin _$StacSize {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  /// Serializes this StacSize to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacSizeCopyWith<StacSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacSizeCopyWith<$Res> {
  factory $StacSizeCopyWith(StacSize value, $Res Function(StacSize) then) =
      _$StacSizeCopyWithImpl<$Res, StacSize>;
  @useResult
  $Res call({double width, double height});
}

/// @nodoc
class _$StacSizeCopyWithImpl<$Res, $Val extends StacSize>
    implements $StacSizeCopyWith<$Res> {
  _$StacSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacSizeImplCopyWith<$Res>
    implements $StacSizeCopyWith<$Res> {
  factory _$$StacSizeImplCopyWith(
          _$StacSizeImpl value, $Res Function(_$StacSizeImpl) then) =
      __$$StacSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double width, double height});
}

/// @nodoc
class __$$StacSizeImplCopyWithImpl<$Res>
    extends _$StacSizeCopyWithImpl<$Res, _$StacSizeImpl>
    implements _$$StacSizeImplCopyWith<$Res> {
  __$$StacSizeImplCopyWithImpl(
      _$StacSizeImpl _value, $Res Function(_$StacSizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$StacSizeImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacSizeImpl implements _StacSize {
  const _$StacSizeImpl({required this.width, required this.height});

  factory _$StacSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacSizeImplFromJson(json);

  @override
  final double width;
  @override
  final double height;

  @override
  String toString() {
    return 'StacSize(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacSizeImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  /// Create a copy of StacSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacSizeImplCopyWith<_$StacSizeImpl> get copyWith =>
      __$$StacSizeImplCopyWithImpl<_$StacSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacSizeImplToJson(
      this,
    );
  }
}

abstract class _StacSize implements StacSize {
  const factory _StacSize(
      {required final double width,
      required final double height}) = _$StacSizeImpl;

  factory _StacSize.fromJson(Map<String, dynamic> json) =
      _$StacSizeImpl.fromJson;

  @override
  double get width;
  @override
  double get height;

  /// Create a copy of StacSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacSizeImplCopyWith<_$StacSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
