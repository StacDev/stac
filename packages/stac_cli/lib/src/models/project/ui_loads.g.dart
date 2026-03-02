// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_loads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UiLoads _$UiLoadsFromJson(Map<String, dynamic> json) => UiLoads(
  currentPeriodUiLoadCount: (json['currentPeriodUiLoadCount'] as num?)?.toInt(),
  lastUiLoadCountFlushed: (json['lastUiLoadCountFlushed'] as num?)?.toInt(),
  lastUiLoadsFlushedDelta: (json['lastUiLoadsFlushedDelta'] as num?)?.toInt(),
  lastUiLoadsCountFlushedAt: const FirestoreDateTimeNullable().fromJson(
    json['lastUiLoadsCountFlushedAt'],
  ),
  lastUiLoadsUploadError: json['lastUiLoadsUploadError'] as String?,
  lifetimeUiLoadCount: (json['lifetimeUiLoadCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$UiLoadsToJson(UiLoads instance) => <String, dynamic>{
  'currentPeriodUiLoadCount': instance.currentPeriodUiLoadCount,
  'lastUiLoadCountFlushed': instance.lastUiLoadCountFlushed,
  'lastUiLoadsFlushedDelta': instance.lastUiLoadsFlushedDelta,
  'lastUiLoadsCountFlushedAt': const FirestoreDateTimeNullable().toJson(
    instance.lastUiLoadsCountFlushedAt,
  ),
  'lastUiLoadsUploadError': instance.lastUiLoadsUploadError,
  'lifetimeUiLoadCount': instance.lifetimeUiLoadCount,
};
