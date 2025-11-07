// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_app_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacAppBar _$StacAppBarFromJson(Map<String, dynamic> json) => StacAppBar(
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
  elevation: (json['elevation'] as num?)?.toDouble(),
  scrolledUnderElevation: (json['scrolledUnderElevation'] as num?)?.toDouble(),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  foregroundColor: json['foregroundColor'] as String?,
  primary: json['primary'] as bool?,
  centerTitle: json['centerTitle'] as bool?,
  excludeHeaderSemantics: json['excludeHeaderSemantics'] as bool?,
  titleSpacing: (json['titleSpacing'] as num?)?.toDouble(),
  toolbarOpacity: (json['toolbarOpacity'] as num?)?.toDouble(),
  bottomOpacity: (json['bottomOpacity'] as num?)?.toDouble(),
  toolbarHeight: (json['toolbarHeight'] as num?)?.toDouble(),
  leadingWidth: (json['leadingWidth'] as num?)?.toDouble(),
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
  useDefaultSemanticsOrder: json['useDefaultSemanticsOrder'] as bool?,
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
  actionsPadding: json['actionsPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['actionsPadding']),
);

Map<String, dynamic> _$StacAppBarToJson(StacAppBar instance) =>
    <String, dynamic>{
      'leading': instance.leading?.toJson(),
      'automaticallyImplyLeading': instance.automaticallyImplyLeading,
      'title': instance.title?.toJson(),
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
      'flexibleSpace': instance.flexibleSpace?.toJson(),
      'bottom': instance.bottom?.toJson(),
      'elevation': instance.elevation,
      'scrolledUnderElevation': instance.scrolledUnderElevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'primary': instance.primary,
      'centerTitle': instance.centerTitle,
      'excludeHeaderSemantics': instance.excludeHeaderSemantics,
      'titleSpacing': instance.titleSpacing,
      'toolbarOpacity': instance.toolbarOpacity,
      'bottomOpacity': instance.bottomOpacity,
      'toolbarHeight': instance.toolbarHeight,
      'leadingWidth': instance.leadingWidth,
      'toolbarTextStyle': instance.toolbarTextStyle?.toJson(),
      'titleTextStyle': instance.titleTextStyle?.toJson(),
      'systemOverlayStyle': instance.systemOverlayStyle?.toJson(),
      'forceMaterialTransparency': instance.forceMaterialTransparency,
      'useDefaultSemanticsOrder': instance.useDefaultSemanticsOrder,
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
