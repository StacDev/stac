// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sliver_app_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSliverAppBar _$StacSliverAppBarFromJson(
  Map<String, dynamic> json,
) => StacSliverAppBar(
  leading: json['leading'] == null
      ? null
      : StacWidget.fromJson(json['leading'] as Map<String, dynamic>),
  automaticallyImplyLeading: json['automaticallyImplyLeading'] as bool?,
  title: json['title'] == null
      ? null
      : StacWidget.fromJson(json['title'] as Map<String, dynamic>),
  actions: (json['actions'] as List<dynamic>?)
      ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
  flexibleSpace: json['flexibleSpace'] == null
      ? null
      : StacWidget.fromJson(json['flexibleSpace'] as Map<String, dynamic>),
  bottom: json['bottom'] == null
      ? null
      : StacWidget.fromJson(json['bottom'] as Map<String, dynamic>),
  elevation: const DoubleConverter().fromJson(json['elevation']),
  scrolledUnderElevation: const DoubleConverter().fromJson(
    json['scrolledUnderElevation'],
  ),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  forceElevated: json['forceElevated'] as bool?,
  backgroundColor: json['backgroundColor'] as String?,
  foregroundColor: json['foregroundColor'] as String?,
  primary: json['primary'] as bool?,
  centerTitle: json['centerTitle'] as bool?,
  excludeHeaderSemantics: json['excludeHeaderSemantics'] as bool?,
  titleSpacing: const DoubleConverter().fromJson(json['titleSpacing']),
  collapsedHeight: const DoubleConverter().fromJson(json['collapsedHeight']),
  expandedHeight: const DoubleConverter().fromJson(json['expandedHeight']),
  floating: json['floating'] as bool?,
  pinned: json['pinned'] as bool?,
  snap: json['snap'] as bool?,
  stretch: json['stretch'] as bool?,
  stretchTriggerOffset: const DoubleConverter().fromJson(
    json['stretchTriggerOffset'],
  ),
  shape: json['shape'] == null
      ? null
      : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  toolbarHeight: const DoubleConverter().fromJson(json['toolbarHeight']),
  leadingWidth: const DoubleConverter().fromJson(json['leadingWidth']),
  toolbarTextStyle: json['toolbarTextStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['toolbarTextStyle']),
  titleTextStyle: json['titleTextStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['titleTextStyle']),
  systemOverlayStyle: json['systemOverlayStyle'] == null
      ? null
      : StacSystemUIOverlayStyle.fromJson(
          json['systemOverlayStyle'] as Map<String, dynamic>,
        ),
  forceMaterialTransparency: json['forceMaterialTransparency'] as bool?,
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
  actionsPadding: json['actionsPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['actionsPadding']),
);

Map<String, dynamic> _$StacSliverAppBarToJson(
  StacSliverAppBar instance,
) => <String, dynamic>{
  'leading': instance.leading?.toJson(),
  'automaticallyImplyLeading': instance.automaticallyImplyLeading,
  'title': instance.title?.toJson(),
  'actions': instance.actions?.map((e) => e.toJson()).toList(),
  'flexibleSpace': instance.flexibleSpace?.toJson(),
  'bottom': instance.bottom?.toJson(),
  'elevation': const DoubleConverter().toJson(instance.elevation),
  'scrolledUnderElevation': const DoubleConverter().toJson(
    instance.scrolledUnderElevation,
  ),
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'forceElevated': instance.forceElevated,
  'backgroundColor': instance.backgroundColor,
  'foregroundColor': instance.foregroundColor,
  'primary': instance.primary,
  'centerTitle': instance.centerTitle,
  'excludeHeaderSemantics': instance.excludeHeaderSemantics,
  'titleSpacing': const DoubleConverter().toJson(instance.titleSpacing),
  'collapsedHeight': const DoubleConverter().toJson(instance.collapsedHeight),
  'expandedHeight': const DoubleConverter().toJson(instance.expandedHeight),
  'floating': instance.floating,
  'pinned': instance.pinned,
  'snap': instance.snap,
  'stretch': instance.stretch,
  'stretchTriggerOffset': const DoubleConverter().toJson(
    instance.stretchTriggerOffset,
  ),
  'shape': instance.shape?.toJson(),
  'toolbarHeight': const DoubleConverter().toJson(instance.toolbarHeight),
  'leadingWidth': const DoubleConverter().toJson(instance.leadingWidth),
  'toolbarTextStyle': instance.toolbarTextStyle?.toJson(),
  'titleTextStyle': instance.titleTextStyle?.toJson(),
  'systemOverlayStyle': instance.systemOverlayStyle?.toJson(),
  'forceMaterialTransparency': instance.forceMaterialTransparency,
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'actionsPadding': instance.actionsPadding?.toJson(),
  'type': instance.type,
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
