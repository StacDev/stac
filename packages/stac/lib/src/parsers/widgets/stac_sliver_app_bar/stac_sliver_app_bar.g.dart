// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sliver_app_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacSliverAppBar _$StacSliverAppBarFromJson(Map<String, dynamic> json) =>
    _StacSliverAppBar(
      leading: json['leading'] as Map<String, dynamic>?,
      automaticallyImplyLeading:
          json['automaticallyImplyLeading'] as bool? ?? true,
      title: json['title'] as Map<String, dynamic>?,
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      flexibleSpace: json['flexibleSpace'] as Map<String, dynamic>?,
      bottom: json['bottom'] as Map<String, dynamic>?,
      elevation: json['elevation'] == null
          ? null
          : StacDouble.fromJson(json['elevation']),
      scrolledUnderElevation: json['scrolledUnderElevation'] == null
          ? null
          : StacDouble.fromJson(json['scrolledUnderElevation']),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      forceElevated: json['forceElevated'] as bool? ?? false,
      backgroundColor: json['backgroundColor'] as String?,
      foregroundColor: json['foregroundColor'] as String?,
      iconTheme: json['iconTheme'] == null
          ? null
          : StacIconThemeData.fromJson(
              json['iconTheme'] as Map<String, dynamic>),
      actionsIconTheme: json['actionsIconTheme'] == null
          ? null
          : StacIconThemeData.fromJson(
              json['actionsIconTheme'] as Map<String, dynamic>),
      primary: json['primary'] as bool? ?? true,
      centerTitle: json['centerTitle'] as bool?,
      excludeHeaderSemantics: json['excludeHeaderSemantics'] as bool? ?? false,
      titleSpacing: json['titleSpacing'] == null
          ? null
          : StacDouble.fromJson(json['titleSpacing']),
      collapsedHeight: json['collapsedHeight'] == null
          ? null
          : StacDouble.fromJson(json['collapsedHeight']),
      expandedHeight: json['expandedHeight'] == null
          ? null
          : StacDouble.fromJson(json['expandedHeight']),
      floating: json['floating'] as bool? ?? false,
      pinned: json['pinned'] as bool? ?? true,
      snap: json['snap'] as bool? ?? false,
      stretch: json['stretch'] as bool? ?? false,
      stretchTriggerOffset: json['stretchTriggerOffset'] == null
          ? const StacDouble(100.0)
          : StacDouble.fromJson(json['stretchTriggerOffset']),
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      toolbarHeight: json['toolbarHeight'] == null
          ? const StacDouble(64.0)
          : StacDouble.fromJson(json['toolbarHeight']),
      leadingWidth: json['leadingWidth'] == null
          ? null
          : StacDouble.fromJson(json['leadingWidth']),
      toolbarTextStyle: json['toolbarTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['toolbarTextStyle']),
      titleTextStyle: json['titleTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['titleTextStyle']),
      systemOverlayStyle: json['systemOverlayStyle'] == null
          ? null
          : StacSystemUIOverlayStyle.fromJson(
              json['systemOverlayStyle'] as Map<String, dynamic>),
      forceMaterialTransparency:
          json['forceMaterialTransparency'] as bool? ?? false,
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']),
      actionsPadding: json['actionsPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['actionsPadding']),
    );

Map<String, dynamic> _$StacSliverAppBarToJson(_StacSliverAppBar instance) =>
    <String, dynamic>{
      'leading': instance.leading,
      'automaticallyImplyLeading': instance.automaticallyImplyLeading,
      'title': instance.title,
      'actions': instance.actions,
      'flexibleSpace': instance.flexibleSpace,
      'bottom': instance.bottom,
      'elevation': instance.elevation,
      'scrolledUnderElevation': instance.scrolledUnderElevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'forceElevated': instance.forceElevated,
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'iconTheme': instance.iconTheme,
      'actionsIconTheme': instance.actionsIconTheme,
      'primary': instance.primary,
      'centerTitle': instance.centerTitle,
      'excludeHeaderSemantics': instance.excludeHeaderSemantics,
      'titleSpacing': instance.titleSpacing,
      'collapsedHeight': instance.collapsedHeight,
      'expandedHeight': instance.expandedHeight,
      'floating': instance.floating,
      'pinned': instance.pinned,
      'snap': instance.snap,
      'stretch': instance.stretch,
      'stretchTriggerOffset': instance.stretchTriggerOffset,
      'shape': instance.shape,
      'toolbarHeight': instance.toolbarHeight,
      'leadingWidth': instance.leadingWidth,
      'toolbarTextStyle': instance.toolbarTextStyle,
      'titleTextStyle': instance.titleTextStyle,
      'systemOverlayStyle': instance.systemOverlayStyle,
      'forceMaterialTransparency': instance.forceMaterialTransparency,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior],
      'actionsPadding': instance.actionsPadding,
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
