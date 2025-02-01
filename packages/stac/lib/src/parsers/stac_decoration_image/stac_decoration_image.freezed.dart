// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_decoration_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacDecorationImage _$StacDecorationImageFromJson(Map<String, dynamic> json) {
  return _StacDecorationImage.fromJson(json);
}

/// @nodoc
mixin _$StacDecorationImage {
  String get src => throw _privateConstructorUsedError;
  BoxFit? get fit => throw _privateConstructorUsedError;
  StacDecorationImageType get imageType => throw _privateConstructorUsedError;
  StacAlignment get alignment => throw _privateConstructorUsedError;
  StacRect? get centerSlice => throw _privateConstructorUsedError;
  ImageRepeat get repeat => throw _privateConstructorUsedError;
  bool get matchTextDirection => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;
  double get opacity => throw _privateConstructorUsedError;
  FilterQuality get filterQuality => throw _privateConstructorUsedError;
  bool get invertColors => throw _privateConstructorUsedError;
  bool get isAntiAlias => throw _privateConstructorUsedError;

  /// Serializes this StacDecorationImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacDecorationImageCopyWith<StacDecorationImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacDecorationImageCopyWith<$Res> {
  factory $StacDecorationImageCopyWith(
          StacDecorationImage value, $Res Function(StacDecorationImage) then) =
      _$StacDecorationImageCopyWithImpl<$Res, StacDecorationImage>;
  @useResult
  $Res call(
      {String src,
      BoxFit? fit,
      StacDecorationImageType imageType,
      StacAlignment alignment,
      StacRect? centerSlice,
      ImageRepeat repeat,
      bool matchTextDirection,
      double scale,
      double opacity,
      FilterQuality filterQuality,
      bool invertColors,
      bool isAntiAlias});

  $StacRectCopyWith<$Res>? get centerSlice;
}

/// @nodoc
class _$StacDecorationImageCopyWithImpl<$Res, $Val extends StacDecorationImage>
    implements $StacDecorationImageCopyWith<$Res> {
  _$StacDecorationImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacDecorationImage
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
              as StacDecorationImageType,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      centerSlice: freezed == centerSlice
          ? _value.centerSlice
          : centerSlice // ignore: cast_nullable_to_non_nullable
              as StacRect?,
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

  /// Create a copy of StacDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRectCopyWith<$Res>? get centerSlice {
    if (_value.centerSlice == null) {
      return null;
    }

    return $StacRectCopyWith<$Res>(_value.centerSlice!, (value) {
      return _then(_value.copyWith(centerSlice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacDecorationImageImplCopyWith<$Res>
    implements $StacDecorationImageCopyWith<$Res> {
  factory _$$StacDecorationImageImplCopyWith(_$StacDecorationImageImpl value,
          $Res Function(_$StacDecorationImageImpl) then) =
      __$$StacDecorationImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String src,
      BoxFit? fit,
      StacDecorationImageType imageType,
      StacAlignment alignment,
      StacRect? centerSlice,
      ImageRepeat repeat,
      bool matchTextDirection,
      double scale,
      double opacity,
      FilterQuality filterQuality,
      bool invertColors,
      bool isAntiAlias});

  @override
  $StacRectCopyWith<$Res>? get centerSlice;
}

/// @nodoc
class __$$StacDecorationImageImplCopyWithImpl<$Res>
    extends _$StacDecorationImageCopyWithImpl<$Res, _$StacDecorationImageImpl>
    implements _$$StacDecorationImageImplCopyWith<$Res> {
  __$$StacDecorationImageImplCopyWithImpl(_$StacDecorationImageImpl _value,
      $Res Function(_$StacDecorationImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacDecorationImage
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
    return _then(_$StacDecorationImageImpl(
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
              as StacDecorationImageType,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      centerSlice: freezed == centerSlice
          ? _value.centerSlice
          : centerSlice // ignore: cast_nullable_to_non_nullable
              as StacRect?,
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
class _$StacDecorationImageImpl implements _StacDecorationImage {
  const _$StacDecorationImageImpl(
      {required this.src,
      this.fit,
      this.imageType = StacDecorationImageType.network,
      this.alignment = StacAlignment.center,
      this.centerSlice,
      this.repeat = ImageRepeat.noRepeat,
      this.matchTextDirection = false,
      this.scale = 1.0,
      this.opacity = 1.0,
      this.filterQuality = FilterQuality.low,
      this.invertColors = false,
      this.isAntiAlias = false});

  factory _$StacDecorationImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacDecorationImageImplFromJson(json);

  @override
  final String src;
  @override
  final BoxFit? fit;
  @override
  @JsonKey()
  final StacDecorationImageType imageType;
  @override
  @JsonKey()
  final StacAlignment alignment;
  @override
  final StacRect? centerSlice;
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
    return 'StacDecorationImage(src: $src, fit: $fit, imageType: $imageType, alignment: $alignment, centerSlice: $centerSlice, repeat: $repeat, matchTextDirection: $matchTextDirection, scale: $scale, opacity: $opacity, filterQuality: $filterQuality, invertColors: $invertColors, isAntiAlias: $isAntiAlias)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacDecorationImageImpl &&
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

  /// Create a copy of StacDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacDecorationImageImplCopyWith<_$StacDecorationImageImpl> get copyWith =>
      __$$StacDecorationImageImplCopyWithImpl<_$StacDecorationImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacDecorationImageImplToJson(
      this,
    );
  }
}

abstract class _StacDecorationImage implements StacDecorationImage {
  const factory _StacDecorationImage(
      {required final String src,
      final BoxFit? fit,
      final StacDecorationImageType imageType,
      final StacAlignment alignment,
      final StacRect? centerSlice,
      final ImageRepeat repeat,
      final bool matchTextDirection,
      final double scale,
      final double opacity,
      final FilterQuality filterQuality,
      final bool invertColors,
      final bool isAntiAlias}) = _$StacDecorationImageImpl;

  factory _StacDecorationImage.fromJson(Map<String, dynamic> json) =
      _$StacDecorationImageImpl.fromJson;

  @override
  String get src;
  @override
  BoxFit? get fit;
  @override
  StacDecorationImageType get imageType;
  @override
  StacAlignment get alignment;
  @override
  StacRect? get centerSlice;
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

  /// Create a copy of StacDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacDecorationImageImplCopyWith<_$StacDecorationImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
