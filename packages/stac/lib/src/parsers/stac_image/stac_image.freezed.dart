// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacImage _$StacImageFromJson(Map<String, dynamic> json) {
  return _StacImage.fromJson(json);
}

/// @nodoc
mixin _$StacImage {
  String get src => throw _privateConstructorUsedError;
  StacAlignment get alignment => throw _privateConstructorUsedError;
  StacImageType get imageType => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  BoxFit? get fit => throw _privateConstructorUsedError;

  /// Serializes this StacImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacImageCopyWith<StacImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacImageCopyWith<$Res> {
  factory $StacImageCopyWith(StacImage value, $Res Function(StacImage) then) =
      _$StacImageCopyWithImpl<$Res, StacImage>;
  @useResult
  $Res call(
      {String src,
      StacAlignment alignment,
      StacImageType imageType,
      String? color,
      double? width,
      double? height,
      BoxFit? fit});
}

/// @nodoc
class _$StacImageCopyWithImpl<$Res, $Val extends StacImage>
    implements $StacImageCopyWith<$Res> {
  _$StacImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
    Object? alignment = null,
    Object? imageType = null,
    Object? color = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? fit = freezed,
  }) {
    return _then(_value.copyWith(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as StacImageType,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacImageImplCopyWith<$Res>
    implements $StacImageCopyWith<$Res> {
  factory _$$StacImageImplCopyWith(
          _$StacImageImpl value, $Res Function(_$StacImageImpl) then) =
      __$$StacImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String src,
      StacAlignment alignment,
      StacImageType imageType,
      String? color,
      double? width,
      double? height,
      BoxFit? fit});
}

/// @nodoc
class __$$StacImageImplCopyWithImpl<$Res>
    extends _$StacImageCopyWithImpl<$Res, _$StacImageImpl>
    implements _$$StacImageImplCopyWith<$Res> {
  __$$StacImageImplCopyWithImpl(
      _$StacImageImpl _value, $Res Function(_$StacImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
    Object? alignment = null,
    Object? imageType = null,
    Object? color = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? fit = freezed,
  }) {
    return _then(_$StacImageImpl(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as StacImageType,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacImageImpl implements _StacImage {
  const _$StacImageImpl(
      {required this.src,
      this.alignment = StacAlignment.center,
      this.imageType = StacImageType.network,
      this.color,
      this.width,
      this.height,
      this.fit});

  factory _$StacImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacImageImplFromJson(json);

  @override
  final String src;
  @override
  @JsonKey()
  final StacAlignment alignment;
  @override
  @JsonKey()
  final StacImageType imageType;
  @override
  final String? color;
  @override
  final double? width;
  @override
  final double? height;
  @override
  final BoxFit? fit;

  @override
  String toString() {
    return 'StacImage(src: $src, alignment: $alignment, imageType: $imageType, color: $color, width: $width, height: $height, fit: $fit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacImageImpl &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.fit, fit) || other.fit == fit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, src, alignment, imageType, color, width, height, fit);

  /// Create a copy of StacImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacImageImplCopyWith<_$StacImageImpl> get copyWith =>
      __$$StacImageImplCopyWithImpl<_$StacImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacImageImplToJson(
      this,
    );
  }
}

abstract class _StacImage implements StacImage {
  const factory _StacImage(
      {required final String src,
      final StacAlignment alignment,
      final StacImageType imageType,
      final String? color,
      final double? width,
      final double? height,
      final BoxFit? fit}) = _$StacImageImpl;

  factory _StacImage.fromJson(Map<String, dynamic> json) =
      _$StacImageImpl.fromJson;

  @override
  String get src;
  @override
  StacAlignment get alignment;
  @override
  StacImageType get imageType;
  @override
  String? get color;
  @override
  double? get width;
  @override
  double? get height;
  @override
  BoxFit? get fit;

  /// Create a copy of StacImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacImageImplCopyWith<_$StacImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
