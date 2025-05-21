// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_decoration_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDecorationImage {
  String get src;
  BoxFit? get fit;
  StacDecorationImageType get imageType;
  StacAlignment get alignment;
  StacRect? get centerSlice;
  ImageRepeat get repeat;
  bool get matchTextDirection;
  StacDouble get scale;
  StacDouble get opacity;
  FilterQuality get filterQuality;
  bool get invertColors;
  bool get isAntiAlias;

  /// Create a copy of StacDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDecorationImageCopyWith<StacDecorationImage> get copyWith =>
      _$StacDecorationImageCopyWithImpl<StacDecorationImage>(
          this as StacDecorationImage, _$identity);

  /// Serializes this StacDecorationImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDecorationImage &&
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

  @override
  String toString() {
    return 'StacDecorationImage(src: $src, fit: $fit, imageType: $imageType, alignment: $alignment, centerSlice: $centerSlice, repeat: $repeat, matchTextDirection: $matchTextDirection, scale: $scale, opacity: $opacity, filterQuality: $filterQuality, invertColors: $invertColors, isAntiAlias: $isAntiAlias)';
  }
}

/// @nodoc
abstract mixin class $StacDecorationImageCopyWith<$Res> {
  factory $StacDecorationImageCopyWith(
          StacDecorationImage value, $Res Function(StacDecorationImage) _then) =
      _$StacDecorationImageCopyWithImpl;
  @useResult
  $Res call(
      {String src,
      BoxFit? fit,
      StacDecorationImageType imageType,
      StacAlignment alignment,
      StacRect? centerSlice,
      ImageRepeat repeat,
      bool matchTextDirection,
      StacDouble scale,
      StacDouble opacity,
      FilterQuality filterQuality,
      bool invertColors,
      bool isAntiAlias});

  $StacRectCopyWith<$Res>? get centerSlice;
}

/// @nodoc
class _$StacDecorationImageCopyWithImpl<$Res>
    implements $StacDecorationImageCopyWith<$Res> {
  _$StacDecorationImageCopyWithImpl(this._self, this._then);

  final StacDecorationImage _self;
  final $Res Function(StacDecorationImage) _then;

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
    return _then(_self.copyWith(
      src: null == src
          ? _self.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      fit: freezed == fit
          ? _self.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      imageType: null == imageType
          ? _self.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as StacDecorationImageType,
      alignment: null == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      centerSlice: freezed == centerSlice
          ? _self.centerSlice
          : centerSlice // ignore: cast_nullable_to_non_nullable
              as StacRect?,
      repeat: null == repeat
          ? _self.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as ImageRepeat,
      matchTextDirection: null == matchTextDirection
          ? _self.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool,
      scale: null == scale
          ? _self.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      opacity: null == opacity
          ? _self.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      filterQuality: null == filterQuality
          ? _self.filterQuality
          : filterQuality // ignore: cast_nullable_to_non_nullable
              as FilterQuality,
      invertColors: null == invertColors
          ? _self.invertColors
          : invertColors // ignore: cast_nullable_to_non_nullable
              as bool,
      isAntiAlias: null == isAntiAlias
          ? _self.isAntiAlias
          : isAntiAlias // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRectCopyWith<$Res>? get centerSlice {
    if (_self.centerSlice == null) {
      return null;
    }

    return $StacRectCopyWith<$Res>(_self.centerSlice!, (value) {
      return _then(_self.copyWith(centerSlice: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacDecorationImage implements StacDecorationImage {
  const _StacDecorationImage(
      {required this.src,
      this.fit,
      this.imageType = StacDecorationImageType.network,
      this.alignment = StacAlignment.center,
      this.centerSlice,
      this.repeat = ImageRepeat.noRepeat,
      this.matchTextDirection = false,
      this.scale = const StacDouble(1.0),
      this.opacity = const StacDouble(1.0),
      this.filterQuality = FilterQuality.low,
      this.invertColors = false,
      this.isAntiAlias = false});
  factory _StacDecorationImage.fromJson(Map<String, dynamic> json) =>
      _$StacDecorationImageFromJson(json);

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
  final StacDouble scale;
  @override
  @JsonKey()
  final StacDouble opacity;
  @override
  @JsonKey()
  final FilterQuality filterQuality;
  @override
  @JsonKey()
  final bool invertColors;
  @override
  @JsonKey()
  final bool isAntiAlias;

  /// Create a copy of StacDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDecorationImageCopyWith<_StacDecorationImage> get copyWith =>
      __$StacDecorationImageCopyWithImpl<_StacDecorationImage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDecorationImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDecorationImage &&
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

  @override
  String toString() {
    return 'StacDecorationImage(src: $src, fit: $fit, imageType: $imageType, alignment: $alignment, centerSlice: $centerSlice, repeat: $repeat, matchTextDirection: $matchTextDirection, scale: $scale, opacity: $opacity, filterQuality: $filterQuality, invertColors: $invertColors, isAntiAlias: $isAntiAlias)';
  }
}

/// @nodoc
abstract mixin class _$StacDecorationImageCopyWith<$Res>
    implements $StacDecorationImageCopyWith<$Res> {
  factory _$StacDecorationImageCopyWith(_StacDecorationImage value,
          $Res Function(_StacDecorationImage) _then) =
      __$StacDecorationImageCopyWithImpl;
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
      StacDouble scale,
      StacDouble opacity,
      FilterQuality filterQuality,
      bool invertColors,
      bool isAntiAlias});

  @override
  $StacRectCopyWith<$Res>? get centerSlice;
}

/// @nodoc
class __$StacDecorationImageCopyWithImpl<$Res>
    implements _$StacDecorationImageCopyWith<$Res> {
  __$StacDecorationImageCopyWithImpl(this._self, this._then);

  final _StacDecorationImage _self;
  final $Res Function(_StacDecorationImage) _then;

  /// Create a copy of StacDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_StacDecorationImage(
      src: null == src
          ? _self.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      fit: freezed == fit
          ? _self.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      imageType: null == imageType
          ? _self.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as StacDecorationImageType,
      alignment: null == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment,
      centerSlice: freezed == centerSlice
          ? _self.centerSlice
          : centerSlice // ignore: cast_nullable_to_non_nullable
              as StacRect?,
      repeat: null == repeat
          ? _self.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as ImageRepeat,
      matchTextDirection: null == matchTextDirection
          ? _self.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool,
      scale: null == scale
          ? _self.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      opacity: null == opacity
          ? _self.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      filterQuality: null == filterQuality
          ? _self.filterQuality
          : filterQuality // ignore: cast_nullable_to_non_nullable
              as FilterQuality,
      invertColors: null == invertColors
          ? _self.invertColors
          : invertColors // ignore: cast_nullable_to_non_nullable
              as bool,
      isAntiAlias: null == isAntiAlias
          ? _self.isAntiAlias
          : isAntiAlias // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacDecorationImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRectCopyWith<$Res>? get centerSlice {
    if (_self.centerSlice == null) {
      return null;
    }

    return $StacRectCopyWith<$Res>(_self.centerSlice!, (value) {
      return _then(_self.copyWith(centerSlice: value));
    });
  }
}

// dart format on
