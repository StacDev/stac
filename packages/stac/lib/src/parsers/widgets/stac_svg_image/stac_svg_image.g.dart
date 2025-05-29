// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_svg_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSvgAsset _$StacSvgAssetFromJson(Map<String, dynamic> json) => StacSvgAsset(
      asset: json['asset'] as String,
      semanticsLabel: json['semanticsLabel'] as String?,
      matchTextDirection: json['matchTextDirection'] as bool?,
      colorFilter: json['colorFilter'] == null
          ? null
          : StacColorFilter.fromJson(
              json['colorFilter'] as Map<String, dynamic>),
      width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
      height:
          json['height'] == null ? null : StacDouble.fromJson(json['height']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StacSvgAssetToJson(StacSvgAsset instance) =>
    <String, dynamic>{
      'asset': instance.asset,
      'semanticsLabel': instance.semanticsLabel,
      'matchTextDirection': instance.matchTextDirection,
      'colorFilter': instance.colorFilter,
      'width': instance.width,
      'height': instance.height,
      'type': instance.$type,
    };

StacSvgNetwork _$StacSvgNetworkFromJson(Map<String, dynamic> json) =>
    StacSvgNetwork(
      url: json['url'] as String,
      semanticsLabel: json['semanticsLabel'] as String?,
      matchTextDirection: json['matchTextDirection'] as bool?,
      colorFilter: json['colorFilter'] == null
          ? null
          : StacColorFilter.fromJson(
              json['colorFilter'] as Map<String, dynamic>),
      width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
      height:
          json['height'] == null ? null : StacDouble.fromJson(json['height']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StacSvgNetworkToJson(StacSvgNetwork instance) =>
    <String, dynamic>{
      'url': instance.url,
      'semanticsLabel': instance.semanticsLabel,
      'matchTextDirection': instance.matchTextDirection,
      'colorFilter': instance.colorFilter,
      'width': instance.width,
      'height': instance.height,
      'type': instance.$type,
    };

StacSvgFile _$StacSvgFileFromJson(Map<String, dynamic> json) => StacSvgFile(
      path: json['path'] as String,
      semanticsLabel: json['semanticsLabel'] as String?,
      matchTextDirection: json['matchTextDirection'] as bool?,
      colorFilter: json['colorFilter'] == null
          ? null
          : StacColorFilter.fromJson(
              json['colorFilter'] as Map<String, dynamic>),
      width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
      height:
          json['height'] == null ? null : StacDouble.fromJson(json['height']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StacSvgFileToJson(StacSvgFile instance) =>
    <String, dynamic>{
      'path': instance.path,
      'semanticsLabel': instance.semanticsLabel,
      'matchTextDirection': instance.matchTextDirection,
      'colorFilter': instance.colorFilter,
      'width': instance.width,
      'height': instance.height,
      'type': instance.$type,
    };

StacSvgMemory _$StacSvgMemoryFromJson(Map<String, dynamic> json) =>
    StacSvgMemory(
      bytes: StacBytes.fromJson(json['bytes']),
      semanticsLabel: json['semanticsLabel'] as String?,
      matchTextDirection: json['matchTextDirection'] as bool?,
      colorFilter: json['colorFilter'] == null
          ? null
          : StacColorFilter.fromJson(
              json['colorFilter'] as Map<String, dynamic>),
      width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
      height:
          json['height'] == null ? null : StacDouble.fromJson(json['height']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StacSvgMemoryToJson(StacSvgMemory instance) =>
    <String, dynamic>{
      'bytes': instance.bytes,
      'semanticsLabel': instance.semanticsLabel,
      'matchTextDirection': instance.matchTextDirection,
      'colorFilter': instance.colorFilter,
      'width': instance.width,
      'height': instance.height,
      'type': instance.$type,
    };

StacSvgString _$StacSvgStringFromJson(Map<String, dynamic> json) =>
    StacSvgString(
      svgString: json['svgString'] as String,
      semanticsLabel: json['semanticsLabel'] as String?,
      matchTextDirection: json['matchTextDirection'] as bool?,
      colorFilter: json['colorFilter'] == null
          ? null
          : StacColorFilter.fromJson(
              json['colorFilter'] as Map<String, dynamic>),
      width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
      height:
          json['height'] == null ? null : StacDouble.fromJson(json['height']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StacSvgStringToJson(StacSvgString instance) =>
    <String, dynamic>{
      'svgString': instance.svgString,
      'semanticsLabel': instance.semanticsLabel,
      'matchTextDirection': instance.matchTextDirection,
      'colorFilter': instance.colorFilter,
      'width': instance.width,
      'height': instance.height,
      'type': instance.$type,
    };

StacColorFilterMode _$StacColorFilterModeFromJson(Map<String, dynamic> json) =>
    StacColorFilterMode(
      color: json['color'] as String,
      blendMode: json['blendMode'] as String,
      $type: json['filterType'] as String?,
    );

Map<String, dynamic> _$StacColorFilterModeToJson(
        StacColorFilterMode instance) =>
    <String, dynamic>{
      'color': instance.color,
      'blendMode': instance.blendMode,
      'filterType': instance.$type,
    };

StacColorFilterMatrix _$StacColorFilterMatrixFromJson(
        Map<String, dynamic> json) =>
    StacColorFilterMatrix(
      matrix: (json['matrix'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      $type: json['filterType'] as String?,
    );

Map<String, dynamic> _$StacColorFilterMatrixToJson(
        StacColorFilterMatrix instance) =>
    <String, dynamic>{
      'matrix': instance.matrix,
      'filterType': instance.$type,
    };

StacColorFilterLinearToSrgbGamma _$StacColorFilterLinearToSrgbGammaFromJson(
        Map<String, dynamic> json) =>
    StacColorFilterLinearToSrgbGamma(
      $type: json['filterType'] as String?,
    );

Map<String, dynamic> _$StacColorFilterLinearToSrgbGammaToJson(
        StacColorFilterLinearToSrgbGamma instance) =>
    <String, dynamic>{
      'filterType': instance.$type,
    };

StacColorFilterSrgbToLinearGamma _$StacColorFilterSrgbToLinearGammaFromJson(
        Map<String, dynamic> json) =>
    StacColorFilterSrgbToLinearGamma(
      $type: json['filterType'] as String?,
    );

Map<String, dynamic> _$StacColorFilterSrgbToLinearGammaToJson(
        StacColorFilterSrgbToLinearGamma instance) =>
    <String, dynamic>{
      'filterType': instance.$type,
    };
