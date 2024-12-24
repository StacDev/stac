// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_decoration_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiDecorationImage _$MiraiDecorationImageFromJson(Map<String, dynamic> json) {
  return _MiraiDecorationImage.fromJson(json);
}

/// @nodoc
mixin _$MiraiDecorationImage {
  String get src => throw _privateConstructorUsedError;
  BoxFit? get fit => throw _privateConstructorUsedError;
  MiraiDecorationImageType get imageType => throw _privateConstructorUsedError;
  MiraiAlignment get alignment => throw _privateConstructorUsedError;
  MiraiRect? get centerSlice => throw _privateConstructorUsedError;
  ImageRepeat get repeat => throw _privateConstructorUsedError;
  bool get matchTextDirection => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;
  double get opacity => throw _privateConstructorUsedError;
  FilterQuality get filterQuality => throw _privateConstructorUsedError;
  bool get invertColors => throw _privateConstructorUsedError;
  bool get isAntiAlias => throw _privateConstructorUsedError;

  /// Serializes this MiraiDecorationImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiDecorationImageCopyWith<MiraiDecorationImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiDecorationImageCopyWith<$Res> {
  factory $MiraiDecorationImageCopyWith(MiraiDecorationImage value,
          $Res Function(MiraiDecorationImage) then) =
      _$MiraiDecorationImageCopyWithImpl<$Res, MiraiDecorationImage>;
  @useResult
  $Res call(
      {String src,
      BoxFit? fit,
      MiraiDecorationImageType imageType,
      MiraiAlignment alignment,
      MiraiRect? centerSlice,
      ImageRepeat repeat,
      bool matchTextDirection,
      double scale,
      double opacity,
      FilterQuality filterQuality,
      bool invertColors,
      bool isAntiAlias});

  $MiraiRectCopyWith<$Res>? get centerSlice;
}

/// @nodoc
class _$MiraiDecorationImageCopyWithImpl<$Res,
        $Val extends MiraiDecorationImage>
    implements $MiraiDecorationImageCopyWith<$Res> {
  _$MiraiDecorationImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
    Object? fit = freezed,
    Object? imageType = null,
    Object? alignment = null,
    Object? centerSlice = freezed,
    Object? repeat = null,
    Object? matchTextDirection = null,
    Object? scale = null,
    Object? opacity = null,
    Object? filterQuality = null,
    Object? invertColors = null,
    Object? isAntiAlias = null,
  }) {
    return _then(_value.copyWith(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as MiraiDecorationImageType,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as MiraiAlignment,
      centerSlice: freezed == centerSlice
          ? _value.centerSlice
          : centerSlice // ignore: cast_nullable_to_non_nullable
              as MiraiRect?,
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as ImageRepeat,
      matchTextDirection: null == matchTextDirection
          ? _value.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      opacity: null == opacity
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
      filterQuality: null == filterQuality
          ? _value.filterQuality
          : filterQuality // ignore: cast_nullable_to_non_nullable
              as FilterQuality,
      invertColors: null == invertColors
          ? _value.invertColors
          : invertColors // ignore: cast_nullable_to_non_nullable
              as bool,
      isAntiAlias: null == isAntiAlias
          ? _value.isAntiAlias
          : isAntiAlias // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MiraiDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiRectCopyWith<$Res>? get centerSlice {
    if (_value.centerSlice == null) {
      return null;
    }

    return $MiraiRectCopyWith<$Res>(_value.centerSlice!, (value) {
      return _then(_value.copyWith(centerSlice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiDecorationImageImplCopyWith<$Res>
    implements $MiraiDecorationImageCopyWith<$Res> {
  factory _$$MiraiDecorationImageImplCopyWith(_$MiraiDecorationImageImpl value,
          $Res Function(_$MiraiDecorationImageImpl) then) =
      __$$MiraiDecorationImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String src,
      BoxFit? fit,
      MiraiDecorationImageType imageType,
      MiraiAlignment alignment,
      MiraiRect? centerSlice,
      ImageRepeat repeat,
      bool matchTextDirection,
      double scale,
      double opacity,
      FilterQuality filterQuality,
      bool invertColors,
      bool isAntiAlias});

  @override
  $MiraiRectCopyWith<$Res>? get centerSlice;
}

/// @nodoc
class __$$MiraiDecorationImageImplCopyWithImpl<$Res>
    extends _$MiraiDecorationImageCopyWithImpl<$Res, _$MiraiDecorationImageImpl>
    implements _$$MiraiDecorationImageImplCopyWith<$Res> {
  __$$MiraiDecorationImageImplCopyWithImpl(_$MiraiDecorationImageImpl _value,
      $Res Function(_$MiraiDecorationImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
    Object? fit = freezed,
    Object? imageType = null,
    Object? alignment = null,
    Object? centerSlice = freezed,
    Object? repeat = null,
    Object? matchTextDirection = null,
    Object? scale = null,
    Object? opacity = null,
    Object? filterQuality = null,
    Object? invertColors = null,
    Object? isAntiAlias = null,
  }) {
    return _then(_$MiraiDecorationImageImpl(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as MiraiDecorationImageType,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as MiraiAlignment,
      centerSlice: freezed == centerSlice
          ? _value.centerSlice
          : centerSlice // ignore: cast_nullable_to_non_nullable
              as MiraiRect?,
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as ImageRepeat,
      matchTextDirection: null == matchTextDirection
          ? _value.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      opacity: null == opacity
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
      filterQuality: null == filterQuality
          ? _value.filterQuality
          : filterQuality // ignore: cast_nullable_to_non_nullable
              as FilterQuality,
      invertColors: null == invertColors
          ? _value.invertColors
          : invertColors // ignore: cast_nullable_to_non_nullable
              as bool,
      isAntiAlias: null == isAntiAlias
          ? _value.isAntiAlias
          : isAntiAlias // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiDecorationImageImpl implements _MiraiDecorationImage {
  const _$MiraiDecorationImageImpl(
      {required this.src,
      this.fit,
      this.imageType = MiraiDecorationImageType.network,
      this.alignment = MiraiAlignment.center,
      this.centerSlice,
      this.repeat = ImageRepeat.noRepeat,
      this.matchTextDirection = false,
      this.scale = 1.0,
      this.opacity = 1.0,
      this.filterQuality = FilterQuality.low,
      this.invertColors = false,
      this.isAntiAlias = false});

  factory _$MiraiDecorationImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiDecorationImageImplFromJson(json);

  @override
  final String src;
  @override
  final BoxFit? fit;
  @override
  @JsonKey()
  final MiraiDecorationImageType imageType;
  @override
  @JsonKey()
  final MiraiAlignment alignment;
  @override
  final MiraiRect? centerSlice;
  @override
  @JsonKey()
  final ImageRepeat repeat;
  @override
  @JsonKey()
  final bool matchTextDirection;
  @override
  @JsonKey()
  final double scale;
  @override
  @JsonKey()
  final double opacity;
  @override
  @JsonKey()
  final FilterQuality filterQuality;
  @override
  @JsonKey()
  final bool invertColors;
  @override
  @JsonKey()
  final bool isAntiAlias;

  @override
  String toString() {
    return 'MiraiDecorationImage(src: $src, fit: $fit, imageType: $imageType, alignment: $alignment, centerSlice: $centerSlice, repeat: $repeat, matchTextDirection: $matchTextDirection, scale: $scale, opacity: $opacity, filterQuality: $filterQuality, invertColors: $invertColors, isAntiAlias: $isAntiAlias)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiDecorationImageImpl &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.centerSlice, centerSlice) ||
                other.centerSlice == centerSlice) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.matchTextDirection, matchTextDirection) ||
                other.matchTextDirection == matchTextDirection) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.opacity, opacity) || other.opacity == opacity) &&
            (identical(other.filterQuality, filterQuality) ||
                other.filterQuality == filterQuality) &&
            (identical(other.invertColors, invertColors) ||
                other.invertColors == invertColors) &&
            (identical(other.isAntiAlias, isAntiAlias) ||
                other.isAntiAlias == isAntiAlias));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      src,
      fit,
      imageType,
      alignment,
      centerSlice,
      repeat,
      matchTextDirection,
      scale,
      opacity,
      filterQuality,
      invertColors,
      isAntiAlias);

  /// Create a copy of MiraiDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiDecorationImageImplCopyWith<_$MiraiDecorationImageImpl>
      get copyWith =>
          __$$MiraiDecorationImageImplCopyWithImpl<_$MiraiDecorationImageImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiDecorationImageImplToJson(
      this,
    );
  }
}

abstract class _MiraiDecorationImage implements MiraiDecorationImage {
  const factory _MiraiDecorationImage(
      {required final String src,
      final BoxFit? fit,
      final MiraiDecorationImageType imageType,
      final MiraiAlignment alignment,
      final MiraiRect? centerSlice,
      final ImageRepeat repeat,
      final bool matchTextDirection,
      final double scale,
      final double opacity,
      final FilterQuality filterQuality,
      final bool invertColors,
      final bool isAntiAlias}) = _$MiraiDecorationImageImpl;

  factory _MiraiDecorationImage.fromJson(Map<String, dynamic> json) =
      _$MiraiDecorationImageImpl.fromJson;

  @override
  String get src;
  @override
  BoxFit? get fit;
  @override
  MiraiDecorationImageType get imageType;
  @override
  MiraiAlignment get alignment;
  @override
  MiraiRect? get centerSlice;
  @override
  ImageRepeat get repeat;
  @override
  bool get matchTextDirection;
  @override
  double get scale;
  @override
  double get opacity;
  @override
  FilterQuality get filterQuality;
  @override
  bool get invertColors;
  @override
  bool get isAntiAlias;

  /// Create a copy of MiraiDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiDecorationImageImplCopyWith<_$MiraiDecorationImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
