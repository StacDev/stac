// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiImage _$MiraiImageFromJson(Map<String, dynamic> json) {
  return _MiraiImage.fromJson(json);
}

/// @nodoc
mixin _$MiraiImage {
  String get src => throw _privateConstructorUsedError;
  MiraiAlignment get alignment => throw _privateConstructorUsedError;
  MiraiImageType get imageType => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  BoxFit? get fit => throw _privateConstructorUsedError;

  /// Serializes this MiraiImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiImageCopyWith<MiraiImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiImageCopyWith<$Res> {
  factory $MiraiImageCopyWith(
          MiraiImage value, $Res Function(MiraiImage) then) =
      _$MiraiImageCopyWithImpl<$Res, MiraiImage>;
  @useResult
  $Res call(
      {String src,
      MiraiAlignment alignment,
      MiraiImageType imageType,
      String? color,
      double? width,
      double? height,
      BoxFit? fit});
}

/// @nodoc
class _$MiraiImageCopyWithImpl<$Res, $Val extends MiraiImage>
    implements $MiraiImageCopyWith<$Res> {
  _$MiraiImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiImage
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
              as MiraiAlignment,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as MiraiImageType,
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
abstract class _$$MiraiImageImplCopyWith<$Res>
    implements $MiraiImageCopyWith<$Res> {
  factory _$$MiraiImageImplCopyWith(
          _$MiraiImageImpl value, $Res Function(_$MiraiImageImpl) then) =
      __$$MiraiImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String src,
      MiraiAlignment alignment,
      MiraiImageType imageType,
      String? color,
      double? width,
      double? height,
      BoxFit? fit});
}

/// @nodoc
class __$$MiraiImageImplCopyWithImpl<$Res>
    extends _$MiraiImageCopyWithImpl<$Res, _$MiraiImageImpl>
    implements _$$MiraiImageImplCopyWith<$Res> {
  __$$MiraiImageImplCopyWithImpl(
      _$MiraiImageImpl _value, $Res Function(_$MiraiImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiImage
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
    return _then(_$MiraiImageImpl(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as MiraiAlignment,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as MiraiImageType,
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
class _$MiraiImageImpl implements _MiraiImage {
  const _$MiraiImageImpl(
      {required this.src,
      this.alignment = MiraiAlignment.center,
      this.imageType = MiraiImageType.network,
      this.color,
      this.width,
      this.height,
      this.fit});

  factory _$MiraiImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiImageImplFromJson(json);

  @override
  final String src;
  @override
  @JsonKey()
  final MiraiAlignment alignment;
  @override
  @JsonKey()
  final MiraiImageType imageType;
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
    return 'MiraiImage(src: $src, alignment: $alignment, imageType: $imageType, color: $color, width: $width, height: $height, fit: $fit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiImageImpl &&
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

  /// Create a copy of MiraiImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiImageImplCopyWith<_$MiraiImageImpl> get copyWith =>
      __$$MiraiImageImplCopyWithImpl<_$MiraiImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiImageImplToJson(
      this,
    );
  }
}

abstract class _MiraiImage implements MiraiImage {
  const factory _MiraiImage(
      {required final String src,
      final MiraiAlignment alignment,
      final MiraiImageType imageType,
      final String? color,
      final double? width,
      final double? height,
      final BoxFit? fit}) = _$MiraiImageImpl;

  factory _MiraiImage.fromJson(Map<String, dynamic> json) =
      _$MiraiImageImpl.fromJson;

  @override
  String get src;
  @override
  MiraiAlignment get alignment;
  @override
  MiraiImageType get imageType;
  @override
  String? get color;
  @override
  double? get width;
  @override
  double? get height;
  @override
  BoxFit? get fit;

  /// Create a copy of MiraiImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiImageImplCopyWith<_$MiraiImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
