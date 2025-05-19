// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_app_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacAppBar _$StacAppBarFromJson(Map<String, dynamic> json) => _StacAppBar(
      leading: json['leading'] as Map<String, dynamic>?,
      title: json['title'] as Map<String, dynamic>?,
      titleTextStyle: json['titleTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['titleTextStyle']),
      toolbarTextStyle: json['toolbarTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['toolbarTextStyle']),
      shadowColor: json['shadowColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      foregroundColor: json['foregroundColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      actions: (json['actions'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      bottom: json['bottom'] as Map<String, dynamic>?,
      titleSpacing: json['titleSpacing'] == null
          ? null
          : StacDouble.fromJson(json['titleSpacing']),
      toolbarOpacity: json['toolbarOpacity'] == null
          ? const StacDouble(1.0)
          : StacDouble.fromJson(json['toolbarOpacity']),
      bottomOpacity: json['bottomOpacity'] == null
          ? const StacDouble(1.0)
          : StacDouble.fromJson(json['bottomOpacity']),
      toolbarHeight: json['toolbarHeight'] == null
          ? null
          : StacDouble.fromJson(json['toolbarHeight']),
      leadingWidth: json['leadingWidth'] == null
          ? null
          : StacDouble.fromJson(json['leadingWidth']),
      primary: json['primary'] as bool? ?? true,
      centerTitle: json['centerTitle'] as bool?,
      elevation: json['elevation'] == null
          ? null
          : StacDouble.fromJson(json['elevation']),
      scrolledUnderElevation: json['scrolledUnderElevation'] == null
          ? null
          : StacDouble.fromJson(json['scrolledUnderElevation']),
    );

Map<String, dynamic> _$StacAppBarToJson(_StacAppBar instance) =>
    <String, dynamic>{
      'leading': instance.leading,
      'title': instance.title,
      'titleTextStyle': instance.titleTextStyle,
      'toolbarTextStyle': instance.toolbarTextStyle,
      'shadowColor': instance.shadowColor,
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'actions': instance.actions,
      'bottom': instance.bottom,
      'titleSpacing': instance.titleSpacing,
      'toolbarOpacity': instance.toolbarOpacity,
      'bottomOpacity': instance.bottomOpacity,
      'toolbarHeight': instance.toolbarHeight,
      'leadingWidth': instance.leadingWidth,
      'primary': instance.primary,
      'centerTitle': instance.centerTitle,
      'elevation': instance.elevation,
      'scrolledUnderElevation': instance.scrolledUnderElevation,
    };
