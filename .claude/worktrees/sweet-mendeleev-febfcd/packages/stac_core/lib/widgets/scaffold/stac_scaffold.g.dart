// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_scaffold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacScaffold _$StacScaffoldFromJson(Map<String, dynamic> json) => StacScaffold(
  appBar: json['appBar'] == null
      ? null
      : StacWidget.fromJson(json['appBar'] as Map<String, dynamic>),
  backgroundColor: json['backgroundColor'] as String?,
  body: json['body'] == null
      ? null
      : StacWidget.fromJson(json['body'] as Map<String, dynamic>),
  bottomNavigationBar: json['bottomNavigationBar'] == null
      ? null
      : StacWidget.fromJson(
          json['bottomNavigationBar'] as Map<String, dynamic>,
        ),
  bottomSheet: json['bottomSheet'] == null
      ? null
      : StacWidget.fromJson(json['bottomSheet'] as Map<String, dynamic>),
  drawer: json['drawer'] == null
      ? null
      : StacWidget.fromJson(json['drawer'] as Map<String, dynamic>),
  drawerDragStartBehavior: $enumDecodeNullable(
    _$StacDragStartBehaviorEnumMap,
    json['drawerDragStartBehavior'],
  ),
  drawerEdgeDragWidth: (json['drawerEdgeDragWidth'] as num?)?.toDouble(),
  drawerEnableOpenDragGesture: json['drawerEnableOpenDragGesture'] as bool?,
  drawerScrimColor: json['drawerScrimColor'] as String?,
  endDrawer: json['endDrawer'] == null
      ? null
      : StacWidget.fromJson(json['endDrawer'] as Map<String, dynamic>),
  endDrawerEnableOpenDragGesture:
      json['endDrawerEnableOpenDragGesture'] as bool?,
  extendBody: json['extendBody'] as bool?,
  extendBodyBehindAppBar: json['extendBodyBehindAppBar'] as bool?,
  floatingActionButton: json['floatingActionButton'] == null
      ? null
      : StacWidget.fromJson(
          json['floatingActionButton'] as Map<String, dynamic>,
        ),
  floatingActionButtonLocation: $enumDecodeNullable(
    _$StacFloatingActionButtonLocationEnumMap,
    json['floatingActionButtonLocation'],
  ),
  onDrawerChanged: json['onDrawerChanged'] == null
      ? null
      : StacAction.fromJson(json['onDrawerChanged'] as Map<String, dynamic>),
  onEndDrawerChanged: json['onEndDrawerChanged'] == null
      ? null
      : StacAction.fromJson(json['onEndDrawerChanged'] as Map<String, dynamic>),
  persistentFooterAlignment: $enumDecodeNullable(
    _$StacAlignmentDirectionalEnumMap,
    json['persistentFooterAlignment'],
  ),
  persistentFooterButtons: (json['persistentFooterButtons'] as List<dynamic>?)
      ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
  primary: json['primary'] as bool?,
  resizeToAvoidBottomInset: json['resizeToAvoidBottomInset'] as bool?,
  restorationId: json['restorationId'] as String?,
);

Map<String, dynamic> _$StacScaffoldToJson(StacScaffold instance) =>
    <String, dynamic>{
      'appBar': instance.appBar?.toJson(),
      'backgroundColor': instance.backgroundColor,
      'body': instance.body?.toJson(),
      'bottomNavigationBar': instance.bottomNavigationBar?.toJson(),
      'bottomSheet': instance.bottomSheet?.toJson(),
      'drawer': instance.drawer?.toJson(),
      'drawerDragStartBehavior':
          _$StacDragStartBehaviorEnumMap[instance.drawerDragStartBehavior],
      'drawerEdgeDragWidth': instance.drawerEdgeDragWidth,
      'drawerEnableOpenDragGesture': instance.drawerEnableOpenDragGesture,
      'drawerScrimColor': instance.drawerScrimColor,
      'endDrawer': instance.endDrawer?.toJson(),
      'endDrawerEnableOpenDragGesture': instance.endDrawerEnableOpenDragGesture,
      'extendBody': instance.extendBody,
      'extendBodyBehindAppBar': instance.extendBodyBehindAppBar,
      'floatingActionButton': instance.floatingActionButton?.toJson(),
      'floatingActionButtonLocation':
          _$StacFloatingActionButtonLocationEnumMap[instance
              .floatingActionButtonLocation],
      'onDrawerChanged': instance.onDrawerChanged?.toJson(),
      'onEndDrawerChanged': instance.onEndDrawerChanged?.toJson(),
      'persistentFooterAlignment':
          _$StacAlignmentDirectionalEnumMap[instance.persistentFooterAlignment],
      'persistentFooterButtons': instance.persistentFooterButtons
          ?.map((e) => e.toJson())
          .toList(),
      'primary': instance.primary,
      'resizeToAvoidBottomInset': instance.resizeToAvoidBottomInset,
      'restorationId': instance.restorationId,
      'type': instance.type,
    };

const _$StacDragStartBehaviorEnumMap = {
  StacDragStartBehavior.down: 'down',
  StacDragStartBehavior.start: 'start',
};

const _$StacFloatingActionButtonLocationEnumMap = {
  StacFloatingActionButtonLocation.startTop: 'startTop',
  StacFloatingActionButtonLocation.miniStartTop: 'miniStartTop',
  StacFloatingActionButtonLocation.centerTop: 'centerTop',
  StacFloatingActionButtonLocation.miniCenterTop: 'miniCenterTop',
  StacFloatingActionButtonLocation.endTop: 'endTop',
  StacFloatingActionButtonLocation.miniEndTop: 'miniEndTop',
  StacFloatingActionButtonLocation.startFloat: 'startFloat',
  StacFloatingActionButtonLocation.miniStartFloat: 'miniStartFloat',
  StacFloatingActionButtonLocation.centerFloat: 'centerFloat',
  StacFloatingActionButtonLocation.miniCenterFloat: 'miniCenterFloat',
  StacFloatingActionButtonLocation.endFloat: 'endFloat',
  StacFloatingActionButtonLocation.miniEndFloat: 'miniEndFloat',
  StacFloatingActionButtonLocation.startDocked: 'startDocked',
  StacFloatingActionButtonLocation.miniStartDocked: 'miniStartDocked',
  StacFloatingActionButtonLocation.centerDocked: 'centerDocked',
  StacFloatingActionButtonLocation.miniCenterDocked: 'miniCenterDocked',
  StacFloatingActionButtonLocation.endDocked: 'endDocked',
  StacFloatingActionButtonLocation.miniEndDocked: 'miniEndDocked',
};

const _$StacAlignmentDirectionalEnumMap = {
  StacAlignmentDirectional.topStart: 'topStart',
  StacAlignmentDirectional.topCenter: 'topCenter',
  StacAlignmentDirectional.topEnd: 'topEnd',
  StacAlignmentDirectional.centerStart: 'centerStart',
  StacAlignmentDirectional.center: 'center',
  StacAlignmentDirectional.centerEnd: 'centerEnd',
  StacAlignmentDirectional.bottomStart: 'bottomStart',
  StacAlignmentDirectional.bottomCenter: 'bottomCenter',
  StacAlignmentDirectional.bottomEnd: 'bottomEnd',
};
