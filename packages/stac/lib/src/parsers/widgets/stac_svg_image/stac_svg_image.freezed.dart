// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_svg_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
StacSvgImage _$StacSvgImageFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'asset':
      return StacSvgAsset.fromJson(json);
    case 'network':
      return StacSvgNetwork.fromJson(json);
    case 'file':
      return StacSvgFile.fromJson(json);
    case 'memory':
      return StacSvgMemory.fromJson(json);
    case 'string':
      return StacSvgString.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'StacSvgImage',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$StacSvgImage {
  String? get semanticsLabel;
  bool? get matchTextDirection;
  StacColorFilter? get colorFilter;
  StacDouble? get width;
  StacDouble? get height;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSvgImageCopyWith<StacSvgImage> get copyWith =>
      _$StacSvgImageCopyWithImpl<StacSvgImage>(
          this as StacSvgImage, _$identity);

  /// Serializes this StacSvgImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSvgImage &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.matchTextDirection, matchTextDirection) ||
                other.matchTextDirection == matchTextDirection) &&
            (identical(other.colorFilter, colorFilter) ||
                other.colorFilter == colorFilter) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, semanticsLabel,
      matchTextDirection, colorFilter, width, height);

  @override
  String toString() {
    return 'StacSvgImage(semanticsLabel: $semanticsLabel, matchTextDirection: $matchTextDirection, colorFilter: $colorFilter, width: $width, height: $height)';
  }
}

/// @nodoc
abstract mixin class $StacSvgImageCopyWith<$Res> {
  factory $StacSvgImageCopyWith(
          StacSvgImage value, $Res Function(StacSvgImage) _then) =
      _$StacSvgImageCopyWithImpl;
  @useResult
  $Res call(
      {String? semanticsLabel,
      bool? matchTextDirection,
      StacColorFilter? colorFilter,
      StacDouble? width,
      StacDouble? height});

  $StacColorFilterCopyWith<$Res>? get colorFilter;
}

/// @nodoc
class _$StacSvgImageCopyWithImpl<$Res> implements $StacSvgImageCopyWith<$Res> {
  _$StacSvgImageCopyWithImpl(this._self, this._then);

  final StacSvgImage _self;
  final $Res Function(StacSvgImage) _then;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? semanticsLabel = freezed,
    Object? matchTextDirection = freezed,
    Object? colorFilter = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_self.copyWith(
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      matchTextDirection: freezed == matchTextDirection
          ? _self.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool?,
      colorFilter: freezed == colorFilter
          ? _self.colorFilter
          : colorFilter // ignore: cast_nullable_to_non_nullable
              as StacColorFilter?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
    ));
  }

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacColorFilterCopyWith<$Res>? get colorFilter {
    if (_self.colorFilter == null) {
      return null;
    }

    return $StacColorFilterCopyWith<$Res>(_self.colorFilter!, (value) {
      return _then(_self.copyWith(colorFilter: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class StacSvgAsset implements StacSvgImage {
  const StacSvgAsset(
      {required this.asset,
      this.semanticsLabel,
      this.matchTextDirection,
      this.colorFilter,
      this.width,
      this.height,
      final String? $type})
      : $type = $type ?? 'asset';
  factory StacSvgAsset.fromJson(Map<String, dynamic> json) =>
      _$StacSvgAssetFromJson(json);

  final String asset;
  @override
  final String? semanticsLabel;
  @override
  final bool? matchTextDirection;
  @override
  final StacColorFilter? colorFilter;
  @override
  final StacDouble? width;
  @override
  final StacDouble? height;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSvgAssetCopyWith<StacSvgAsset> get copyWith =>
      _$StacSvgAssetCopyWithImpl<StacSvgAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSvgAssetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSvgAsset &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.matchTextDirection, matchTextDirection) ||
                other.matchTextDirection == matchTextDirection) &&
            (identical(other.colorFilter, colorFilter) ||
                other.colorFilter == colorFilter) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, asset, semanticsLabel,
      matchTextDirection, colorFilter, width, height);

  @override
  String toString() {
    return 'StacSvgImage.asset(asset: $asset, semanticsLabel: $semanticsLabel, matchTextDirection: $matchTextDirection, colorFilter: $colorFilter, width: $width, height: $height)';
  }
}

/// @nodoc
abstract mixin class $StacSvgAssetCopyWith<$Res>
    implements $StacSvgImageCopyWith<$Res> {
  factory $StacSvgAssetCopyWith(
          StacSvgAsset value, $Res Function(StacSvgAsset) _then) =
      _$StacSvgAssetCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String asset,
      String? semanticsLabel,
      bool? matchTextDirection,
      StacColorFilter? colorFilter,
      StacDouble? width,
      StacDouble? height});

  @override
  $StacColorFilterCopyWith<$Res>? get colorFilter;
}

/// @nodoc
class _$StacSvgAssetCopyWithImpl<$Res> implements $StacSvgAssetCopyWith<$Res> {
  _$StacSvgAssetCopyWithImpl(this._self, this._then);

  final StacSvgAsset _self;
  final $Res Function(StacSvgAsset) _then;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? asset = null,
    Object? semanticsLabel = freezed,
    Object? matchTextDirection = freezed,
    Object? colorFilter = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(StacSvgAsset(
      asset: null == asset
          ? _self.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      matchTextDirection: freezed == matchTextDirection
          ? _self.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool?,
      colorFilter: freezed == colorFilter
          ? _self.colorFilter
          : colorFilter // ignore: cast_nullable_to_non_nullable
              as StacColorFilter?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
    ));
  }

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacColorFilterCopyWith<$Res>? get colorFilter {
    if (_self.colorFilter == null) {
      return null;
    }

    return $StacColorFilterCopyWith<$Res>(_self.colorFilter!, (value) {
      return _then(_self.copyWith(colorFilter: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class StacSvgNetwork implements StacSvgImage {
  const StacSvgNetwork(
      {required this.url,
      this.semanticsLabel,
      this.matchTextDirection,
      this.colorFilter,
      this.width,
      this.height,
      final String? $type})
      : $type = $type ?? 'network';
  factory StacSvgNetwork.fromJson(Map<String, dynamic> json) =>
      _$StacSvgNetworkFromJson(json);

  final String url;
  @override
  final String? semanticsLabel;
  @override
  final bool? matchTextDirection;
  @override
  final StacColorFilter? colorFilter;
  @override
  final StacDouble? width;
  @override
  final StacDouble? height;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSvgNetworkCopyWith<StacSvgNetwork> get copyWith =>
      _$StacSvgNetworkCopyWithImpl<StacSvgNetwork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSvgNetworkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSvgNetwork &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.matchTextDirection, matchTextDirection) ||
                other.matchTextDirection == matchTextDirection) &&
            (identical(other.colorFilter, colorFilter) ||
                other.colorFilter == colorFilter) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, semanticsLabel,
      matchTextDirection, colorFilter, width, height);

  @override
  String toString() {
    return 'StacSvgImage.network(url: $url, semanticsLabel: $semanticsLabel, matchTextDirection: $matchTextDirection, colorFilter: $colorFilter, width: $width, height: $height)';
  }
}

/// @nodoc
abstract mixin class $StacSvgNetworkCopyWith<$Res>
    implements $StacSvgImageCopyWith<$Res> {
  factory $StacSvgNetworkCopyWith(
          StacSvgNetwork value, $Res Function(StacSvgNetwork) _then) =
      _$StacSvgNetworkCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String url,
      String? semanticsLabel,
      bool? matchTextDirection,
      StacColorFilter? colorFilter,
      StacDouble? width,
      StacDouble? height});

  @override
  $StacColorFilterCopyWith<$Res>? get colorFilter;
}

/// @nodoc
class _$StacSvgNetworkCopyWithImpl<$Res>
    implements $StacSvgNetworkCopyWith<$Res> {
  _$StacSvgNetworkCopyWithImpl(this._self, this._then);

  final StacSvgNetwork _self;
  final $Res Function(StacSvgNetwork) _then;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? semanticsLabel = freezed,
    Object? matchTextDirection = freezed,
    Object? colorFilter = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(StacSvgNetwork(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      matchTextDirection: freezed == matchTextDirection
          ? _self.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool?,
      colorFilter: freezed == colorFilter
          ? _self.colorFilter
          : colorFilter // ignore: cast_nullable_to_non_nullable
              as StacColorFilter?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
    ));
  }

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacColorFilterCopyWith<$Res>? get colorFilter {
    if (_self.colorFilter == null) {
      return null;
    }

    return $StacColorFilterCopyWith<$Res>(_self.colorFilter!, (value) {
      return _then(_self.copyWith(colorFilter: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class StacSvgFile implements StacSvgImage {
  const StacSvgFile(
      {required this.path,
      this.semanticsLabel,
      this.matchTextDirection,
      this.colorFilter,
      this.width,
      this.height,
      final String? $type})
      : $type = $type ?? 'file';
  factory StacSvgFile.fromJson(Map<String, dynamic> json) =>
      _$StacSvgFileFromJson(json);

  final String path;
  @override
  final String? semanticsLabel;
  @override
  final bool? matchTextDirection;
  @override
  final StacColorFilter? colorFilter;
  @override
  final StacDouble? width;
  @override
  final StacDouble? height;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSvgFileCopyWith<StacSvgFile> get copyWith =>
      _$StacSvgFileCopyWithImpl<StacSvgFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSvgFileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSvgFile &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.matchTextDirection, matchTextDirection) ||
                other.matchTextDirection == matchTextDirection) &&
            (identical(other.colorFilter, colorFilter) ||
                other.colorFilter == colorFilter) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, path, semanticsLabel,
      matchTextDirection, colorFilter, width, height);

  @override
  String toString() {
    return 'StacSvgImage.file(path: $path, semanticsLabel: $semanticsLabel, matchTextDirection: $matchTextDirection, colorFilter: $colorFilter, width: $width, height: $height)';
  }
}

/// @nodoc
abstract mixin class $StacSvgFileCopyWith<$Res>
    implements $StacSvgImageCopyWith<$Res> {
  factory $StacSvgFileCopyWith(
          StacSvgFile value, $Res Function(StacSvgFile) _then) =
      _$StacSvgFileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String path,
      String? semanticsLabel,
      bool? matchTextDirection,
      StacColorFilter? colorFilter,
      StacDouble? width,
      StacDouble? height});

  @override
  $StacColorFilterCopyWith<$Res>? get colorFilter;
}

/// @nodoc
class _$StacSvgFileCopyWithImpl<$Res> implements $StacSvgFileCopyWith<$Res> {
  _$StacSvgFileCopyWithImpl(this._self, this._then);

  final StacSvgFile _self;
  final $Res Function(StacSvgFile) _then;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? path = null,
    Object? semanticsLabel = freezed,
    Object? matchTextDirection = freezed,
    Object? colorFilter = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(StacSvgFile(
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      matchTextDirection: freezed == matchTextDirection
          ? _self.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool?,
      colorFilter: freezed == colorFilter
          ? _self.colorFilter
          : colorFilter // ignore: cast_nullable_to_non_nullable
              as StacColorFilter?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
    ));
  }

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacColorFilterCopyWith<$Res>? get colorFilter {
    if (_self.colorFilter == null) {
      return null;
    }

    return $StacColorFilterCopyWith<$Res>(_self.colorFilter!, (value) {
      return _then(_self.copyWith(colorFilter: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class StacSvgMemory implements StacSvgImage {
  const StacSvgMemory(
      {required this.bytes,
      this.semanticsLabel,
      this.matchTextDirection,
      this.colorFilter,
      this.width,
      this.height,
      final String? $type})
      : $type = $type ?? 'memory';
  factory StacSvgMemory.fromJson(Map<String, dynamic> json) =>
      _$StacSvgMemoryFromJson(json);

  final StacBytes bytes;
  @override
  final String? semanticsLabel;
  @override
  final bool? matchTextDirection;
  @override
  final StacColorFilter? colorFilter;
  @override
  final StacDouble? width;
  @override
  final StacDouble? height;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSvgMemoryCopyWith<StacSvgMemory> get copyWith =>
      _$StacSvgMemoryCopyWithImpl<StacSvgMemory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSvgMemoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSvgMemory &&
            (identical(other.bytes, bytes) || other.bytes == bytes) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.matchTextDirection, matchTextDirection) ||
                other.matchTextDirection == matchTextDirection) &&
            (identical(other.colorFilter, colorFilter) ||
                other.colorFilter == colorFilter) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bytes, semanticsLabel,
      matchTextDirection, colorFilter, width, height);

  @override
  String toString() {
    return 'StacSvgImage.memory(bytes: $bytes, semanticsLabel: $semanticsLabel, matchTextDirection: $matchTextDirection, colorFilter: $colorFilter, width: $width, height: $height)';
  }
}

/// @nodoc
abstract mixin class $StacSvgMemoryCopyWith<$Res>
    implements $StacSvgImageCopyWith<$Res> {
  factory $StacSvgMemoryCopyWith(
          StacSvgMemory value, $Res Function(StacSvgMemory) _then) =
      _$StacSvgMemoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacBytes bytes,
      String? semanticsLabel,
      bool? matchTextDirection,
      StacColorFilter? colorFilter,
      StacDouble? width,
      StacDouble? height});

  @override
  $StacColorFilterCopyWith<$Res>? get colorFilter;
}

/// @nodoc
class _$StacSvgMemoryCopyWithImpl<$Res>
    implements $StacSvgMemoryCopyWith<$Res> {
  _$StacSvgMemoryCopyWithImpl(this._self, this._then);

  final StacSvgMemory _self;
  final $Res Function(StacSvgMemory) _then;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bytes = null,
    Object? semanticsLabel = freezed,
    Object? matchTextDirection = freezed,
    Object? colorFilter = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(StacSvgMemory(
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as StacBytes,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      matchTextDirection: freezed == matchTextDirection
          ? _self.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool?,
      colorFilter: freezed == colorFilter
          ? _self.colorFilter
          : colorFilter // ignore: cast_nullable_to_non_nullable
              as StacColorFilter?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
    ));
  }

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacColorFilterCopyWith<$Res>? get colorFilter {
    if (_self.colorFilter == null) {
      return null;
    }

    return $StacColorFilterCopyWith<$Res>(_self.colorFilter!, (value) {
      return _then(_self.copyWith(colorFilter: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class StacSvgString implements StacSvgImage {
  const StacSvgString(
      {required this.svgString,
      this.semanticsLabel,
      this.matchTextDirection,
      this.colorFilter,
      this.width,
      this.height,
      final String? $type})
      : $type = $type ?? 'string';
  factory StacSvgString.fromJson(Map<String, dynamic> json) =>
      _$StacSvgStringFromJson(json);

  final String svgString;
  @override
  final String? semanticsLabel;
  @override
  final bool? matchTextDirection;
  @override
  final StacColorFilter? colorFilter;
  @override
  final StacDouble? width;
  @override
  final StacDouble? height;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSvgStringCopyWith<StacSvgString> get copyWith =>
      _$StacSvgStringCopyWithImpl<StacSvgString>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSvgStringToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSvgString &&
            (identical(other.svgString, svgString) ||
                other.svgString == svgString) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.matchTextDirection, matchTextDirection) ||
                other.matchTextDirection == matchTextDirection) &&
            (identical(other.colorFilter, colorFilter) ||
                other.colorFilter == colorFilter) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, svgString, semanticsLabel,
      matchTextDirection, colorFilter, width, height);

  @override
  String toString() {
    return 'StacSvgImage.string(svgString: $svgString, semanticsLabel: $semanticsLabel, matchTextDirection: $matchTextDirection, colorFilter: $colorFilter, width: $width, height: $height)';
  }
}

/// @nodoc
abstract mixin class $StacSvgStringCopyWith<$Res>
    implements $StacSvgImageCopyWith<$Res> {
  factory $StacSvgStringCopyWith(
          StacSvgString value, $Res Function(StacSvgString) _then) =
      _$StacSvgStringCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String svgString,
      String? semanticsLabel,
      bool? matchTextDirection,
      StacColorFilter? colorFilter,
      StacDouble? width,
      StacDouble? height});

  @override
  $StacColorFilterCopyWith<$Res>? get colorFilter;
}

/// @nodoc
class _$StacSvgStringCopyWithImpl<$Res>
    implements $StacSvgStringCopyWith<$Res> {
  _$StacSvgStringCopyWithImpl(this._self, this._then);

  final StacSvgString _self;
  final $Res Function(StacSvgString) _then;

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? svgString = null,
    Object? semanticsLabel = freezed,
    Object? matchTextDirection = freezed,
    Object? colorFilter = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(StacSvgString(
      svgString: null == svgString
          ? _self.svgString
          : svgString // ignore: cast_nullable_to_non_nullable
              as String,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      matchTextDirection: freezed == matchTextDirection
          ? _self.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool?,
      colorFilter: freezed == colorFilter
          ? _self.colorFilter
          : colorFilter // ignore: cast_nullable_to_non_nullable
              as StacColorFilter?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
    ));
  }

  /// Create a copy of StacSvgImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacColorFilterCopyWith<$Res>? get colorFilter {
    if (_self.colorFilter == null) {
      return null;
    }

    return $StacColorFilterCopyWith<$Res>(_self.colorFilter!, (value) {
      return _then(_self.copyWith(colorFilter: value));
    });
  }
}

StacColorFilter _$StacColorFilterFromJson(Map<String, dynamic> json) {
  switch (json['filterType']) {
    case 'mode':
      return StacColorFilterMode.fromJson(json);
    case 'matrix':
      return StacColorFilterMatrix.fromJson(json);
    case 'linearToSrgbGamma':
      return StacColorFilterLinearToSrgbGamma.fromJson(json);
    case 'srgbToLinearGamma':
      return StacColorFilterSrgbToLinearGamma.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'filterType', 'StacColorFilter',
          'Invalid union type "${json['filterType']}"!');
  }
}

/// @nodoc
mixin _$StacColorFilter {
  /// Serializes this StacColorFilter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StacColorFilter);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StacColorFilter()';
  }
}

/// @nodoc
class $StacColorFilterCopyWith<$Res> {
  $StacColorFilterCopyWith(
      StacColorFilter _, $Res Function(StacColorFilter) __);
}

/// @nodoc
@JsonSerializable()
class StacColorFilterMode implements StacColorFilter {
  const StacColorFilterMode(
      {required this.color, required this.blendMode, final String? $type})
      : $type = $type ?? 'mode';
  factory StacColorFilterMode.fromJson(Map<String, dynamic> json) =>
      _$StacColorFilterModeFromJson(json);

  final String color;
  final String blendMode;

  @JsonKey(name: 'filterType')
  final String $type;

  /// Create a copy of StacColorFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacColorFilterModeCopyWith<StacColorFilterMode> get copyWith =>
      _$StacColorFilterModeCopyWithImpl<StacColorFilterMode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacColorFilterModeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacColorFilterMode &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.blendMode, blendMode) ||
                other.blendMode == blendMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, color, blendMode);

  @override
  String toString() {
    return 'StacColorFilter.mode(color: $color, blendMode: $blendMode)';
  }
}

/// @nodoc
abstract mixin class $StacColorFilterModeCopyWith<$Res>
    implements $StacColorFilterCopyWith<$Res> {
  factory $StacColorFilterModeCopyWith(
          StacColorFilterMode value, $Res Function(StacColorFilterMode) _then) =
      _$StacColorFilterModeCopyWithImpl;
  @useResult
  $Res call({String color, String blendMode});
}

/// @nodoc
class _$StacColorFilterModeCopyWithImpl<$Res>
    implements $StacColorFilterModeCopyWith<$Res> {
  _$StacColorFilterModeCopyWithImpl(this._self, this._then);

  final StacColorFilterMode _self;
  final $Res Function(StacColorFilterMode) _then;

  /// Create a copy of StacColorFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? color = null,
    Object? blendMode = null,
  }) {
    return _then(StacColorFilterMode(
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      blendMode: null == blendMode
          ? _self.blendMode
          : blendMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StacColorFilterMatrix implements StacColorFilter {
  const StacColorFilterMatrix(
      {required final List<double> matrix, final String? $type})
      : _matrix = matrix,
        $type = $type ?? 'matrix';
  factory StacColorFilterMatrix.fromJson(Map<String, dynamic> json) =>
      _$StacColorFilterMatrixFromJson(json);

  final List<double> _matrix;
  List<double> get matrix {
    if (_matrix is EqualUnmodifiableListView) return _matrix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matrix);
  }

  @JsonKey(name: 'filterType')
  final String $type;

  /// Create a copy of StacColorFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacColorFilterMatrixCopyWith<StacColorFilterMatrix> get copyWith =>
      _$StacColorFilterMatrixCopyWithImpl<StacColorFilterMatrix>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacColorFilterMatrixToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacColorFilterMatrix &&
            const DeepCollectionEquality().equals(other._matrix, _matrix));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_matrix));

  @override
  String toString() {
    return 'StacColorFilter.matrix(matrix: $matrix)';
  }
}

/// @nodoc
abstract mixin class $StacColorFilterMatrixCopyWith<$Res>
    implements $StacColorFilterCopyWith<$Res> {
  factory $StacColorFilterMatrixCopyWith(StacColorFilterMatrix value,
          $Res Function(StacColorFilterMatrix) _then) =
      _$StacColorFilterMatrixCopyWithImpl;
  @useResult
  $Res call({List<double> matrix});
}

/// @nodoc
class _$StacColorFilterMatrixCopyWithImpl<$Res>
    implements $StacColorFilterMatrixCopyWith<$Res> {
  _$StacColorFilterMatrixCopyWithImpl(this._self, this._then);

  final StacColorFilterMatrix _self;
  final $Res Function(StacColorFilterMatrix) _then;

  /// Create a copy of StacColorFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? matrix = null,
  }) {
    return _then(StacColorFilterMatrix(
      matrix: null == matrix
          ? _self._matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StacColorFilterLinearToSrgbGamma implements StacColorFilter {
  const StacColorFilterLinearToSrgbGamma({final String? $type})
      : $type = $type ?? 'linearToSrgbGamma';
  factory StacColorFilterLinearToSrgbGamma.fromJson(
          Map<String, dynamic> json) =>
      _$StacColorFilterLinearToSrgbGammaFromJson(json);

  @JsonKey(name: 'filterType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$StacColorFilterLinearToSrgbGammaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacColorFilterLinearToSrgbGamma);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StacColorFilter.linearToSrgbGamma()';
  }
}

/// @nodoc
@JsonSerializable()
class StacColorFilterSrgbToLinearGamma implements StacColorFilter {
  const StacColorFilterSrgbToLinearGamma({final String? $type})
      : $type = $type ?? 'srgbToLinearGamma';
  factory StacColorFilterSrgbToLinearGamma.fromJson(
          Map<String, dynamic> json) =>
      _$StacColorFilterSrgbToLinearGammaFromJson(json);

  @JsonKey(name: 'filterType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$StacColorFilterSrgbToLinearGammaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacColorFilterSrgbToLinearGamma);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StacColorFilter.srgbToLinearGamma()';
  }
}

// dart format on
