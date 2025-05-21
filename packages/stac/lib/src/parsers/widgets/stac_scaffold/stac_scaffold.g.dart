// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_scaffold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacScaffold _$StacScaffoldFromJson(Map<String, dynamic> json) =>
    _StacScaffold(
      appBar: json['appBar'] as Map<String, dynamic>?,
      body: json['body'] as Map<String, dynamic>?,
      floatingActionButton:
          json['floatingActionButton'] as Map<String, dynamic>?,
      floatingActionButtonLocation: $enumDecodeNullable(
          _$StacFloatingActionButtonLocationEnumMap,
          json['floatingActionButtonLocation']),
      persistentFooterButtons:
          (json['persistentFooterButtons'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList(),
      drawer: json['drawer'] as Map<String, dynamic>?,
      endDrawer: json['endDrawer'] as Map<String, dynamic>?,
      bottomNavigationBar: json['bottomNavigationBar'] as Map<String, dynamic>?,
      bottomSheet: json['bottomSheet'] as Map<String, dynamic>?,
      backgroundColor: json['backgroundColor'] as String?,
      resizeToAvoidBottomInset: json['resizeToAvoidBottomInset'] as bool?,
      primary: json['primary'] as bool? ?? true,
      drawerDragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['drawerDragStartBehavior']) ??
          DragStartBehavior.start,
      extendBody: json['extendBody'] as bool? ?? false,
      extendBodyBehindAppBar: json['extendBodyBehindAppBar'] as bool? ?? false,
      drawerScrimColor: json['drawerScrimColor'] as String?,
      drawerEdgeDragWidth: json['drawerEdgeDragWidth'] == null
          ? null
          : StacDouble.fromJson(json['drawerEdgeDragWidth']),
      drawerEnableOpenDragGesture:
          json['drawerEnableOpenDragGesture'] as bool? ?? true,
      endDrawerEnableOpenDragGesture:
          json['endDrawerEnableOpenDragGesture'] as bool? ?? true,
      restorationId: json['restorationId'] as String?,
    );

Map<String, dynamic> _$StacScaffoldToJson(_StacScaffold instance) =>
    <String, dynamic>{
      'appBar': instance.appBar,
      'body': instance.body,
      'floatingActionButton': instance.floatingActionButton,
      'floatingActionButtonLocation': _$StacFloatingActionButtonLocationEnumMap[
          instance.floatingActionButtonLocation],
      'persistentFooterButtons': instance.persistentFooterButtons,
      'drawer': instance.drawer,
      'endDrawer': instance.endDrawer,
      'bottomNavigationBar': instance.bottomNavigationBar,
      'bottomSheet': instance.bottomSheet,
      'backgroundColor': instance.backgroundColor,
      'resizeToAvoidBottomInset': instance.resizeToAvoidBottomInset,
      'primary': instance.primary,
      'drawerDragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.drawerDragStartBehavior]!,
      'extendBody': instance.extendBody,
      'extendBodyBehindAppBar': instance.extendBodyBehindAppBar,
      'drawerScrimColor': instance.drawerScrimColor,
      'drawerEdgeDragWidth': instance.drawerEdgeDragWidth,
      'drawerEnableOpenDragGesture': instance.drawerEnableOpenDragGesture,
      'endDrawerEnableOpenDragGesture': instance.endDrawerEnableOpenDragGesture,
      'restorationId': instance.restorationId,
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

const _$DragStartBehaviorEnumMap = {
  DragStartBehavior.down: 'down',
  DragStartBehavior.start: 'start',
};
