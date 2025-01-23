// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_scaffold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiScaffoldImpl _$$MiraiScaffoldImplFromJson(Map<String, dynamic> json) =>
    _$MiraiScaffoldImpl(
      appBar: json['appBar'] as Map<String, dynamic>?,
      body: json['body'] as Map<String, dynamic>?,
      floatingActionButton:
          json['floatingActionButton'] as Map<String, dynamic>?,
      floatingActionButtonLocation: $enumDecodeNullable(
          _$MiraiFloatingActionButtonLocationEnumMap,
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
      drawerEdgeDragWidth: (json['drawerEdgeDragWidth'] as num?)?.toDouble(),
      drawerEnableOpenDragGesture:
          json['drawerEnableOpenDragGesture'] as bool? ?? true,
      endDrawerEnableOpenDragGesture:
          json['endDrawerEnableOpenDragGesture'] as bool? ?? true,
      restorationId: json['restorationId'] as String?,
    );

Map<String, dynamic> _$$MiraiScaffoldImplToJson(_$MiraiScaffoldImpl instance) =>
    <String, dynamic>{
      'appBar': instance.appBar,
      'body': instance.body,
      'floatingActionButton': instance.floatingActionButton,
      'floatingActionButtonLocation':
          _$MiraiFloatingActionButtonLocationEnumMap[
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

const _$MiraiFloatingActionButtonLocationEnumMap = {
  MiraiFloatingActionButtonLocation.startTop: 'startTop',
  MiraiFloatingActionButtonLocation.miniStartTop: 'miniStartTop',
  MiraiFloatingActionButtonLocation.centerTop: 'centerTop',
  MiraiFloatingActionButtonLocation.miniCenterTop: 'miniCenterTop',
  MiraiFloatingActionButtonLocation.endTop: 'endTop',
  MiraiFloatingActionButtonLocation.miniEndTop: 'miniEndTop',
  MiraiFloatingActionButtonLocation.startFloat: 'startFloat',
  MiraiFloatingActionButtonLocation.miniStartFloat: 'miniStartFloat',
  MiraiFloatingActionButtonLocation.centerFloat: 'centerFloat',
  MiraiFloatingActionButtonLocation.miniCenterFloat: 'miniCenterFloat',
  MiraiFloatingActionButtonLocation.endFloat: 'endFloat',
  MiraiFloatingActionButtonLocation.miniEndFloat: 'miniEndFloat',
  MiraiFloatingActionButtonLocation.startDocked: 'startDocked',
  MiraiFloatingActionButtonLocation.miniStartDocked: 'miniStartDocked',
  MiraiFloatingActionButtonLocation.centerDocked: 'centerDocked',
  MiraiFloatingActionButtonLocation.miniCenterDocked: 'miniCenterDocked',
  MiraiFloatingActionButtonLocation.endDocked: 'endDocked',
  MiraiFloatingActionButtonLocation.miniEndDocked: 'miniEndDocked',
};

const _$DragStartBehaviorEnumMap = {
  DragStartBehavior.down: 'down',
  DragStartBehavior.start: 'start',
};
