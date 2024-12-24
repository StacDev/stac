// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiSize _$MiraiSizeFromJson(Map<String, dynamic> json) {
  return _MiraiSize.fromJson(json);
}

/// @nodoc
mixin _$MiraiSize {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  /// Serializes this MiraiSize to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiSizeCopyWith<MiraiSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiSizeCopyWith<$Res> {
  factory $MiraiSizeCopyWith(MiraiSize value, $Res Function(MiraiSize) then) =
      _$MiraiSizeCopyWithImpl<$Res, MiraiSize>;
  @useResult
  $Res call({double width, double height});
}

/// @nodoc
class _$MiraiSizeCopyWithImpl<$Res, $Val extends MiraiSize>
    implements $MiraiSizeCopyWith<$Res> {
  _$MiraiSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiSize
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
abstract class _$$MiraiSizeImplCopyWith<$Res>
    implements $MiraiSizeCopyWith<$Res> {
  factory _$$MiraiSizeImplCopyWith(
          _$MiraiSizeImpl value, $Res Function(_$MiraiSizeImpl) then) =
      __$$MiraiSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double width, double height});
}

/// @nodoc
class __$$MiraiSizeImplCopyWithImpl<$Res>
    extends _$MiraiSizeCopyWithImpl<$Res, _$MiraiSizeImpl>
    implements _$$MiraiSizeImplCopyWith<$Res> {
  __$$MiraiSizeImplCopyWithImpl(
      _$MiraiSizeImpl _value, $Res Function(_$MiraiSizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$MiraiSizeImpl(
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
class _$MiraiSizeImpl implements _MiraiSize {
  const _$MiraiSizeImpl({required this.width, required this.height});

  factory _$MiraiSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiSizeImplFromJson(json);

  @override
  final double width;
  @override
  final double height;

  @override
  String toString() {
    return 'MiraiSize(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiSizeImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  /// Create a copy of MiraiSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiSizeImplCopyWith<_$MiraiSizeImpl> get copyWith =>
      __$$MiraiSizeImplCopyWithImpl<_$MiraiSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiSizeImplToJson(
      this,
    );
  }
}

abstract class _MiraiSize implements MiraiSize {
  const factory _MiraiSize(
      {required final double width,
      required final double height}) = _$MiraiSizeImpl;

  factory _MiraiSize.fromJson(Map<String, dynamic> json) =
      _$MiraiSizeImpl.fromJson;

  @override
  double get width;
  @override
  double get height;

  /// Create a copy of MiraiSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiSizeImplCopyWith<_$MiraiSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
