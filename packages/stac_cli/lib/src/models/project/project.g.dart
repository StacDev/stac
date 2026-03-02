// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
  id: json['id'] as String?,
  name: json['name'] as String,
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  ownerId: json['ownerId'] as String,
  createdAt: const FirestoreDateTime().fromJson(json['createdAt']),
  updatedAt: const FirestoreDateTime().fromJson(json['updatedAt']),
  defaultScreenId: json['defaultScreenId'] as String?,
  isPublic: json['isPublic'] as bool,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  status: json['status'] as String?,
  deletedAt: const FirestoreDateTimeNullable().fromJson(json['deletedAt']),
  subscription: json['subscription'] == null
      ? null
      : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
  uiLoads: json['uiLoads'] == null
      ? null
      : UiLoads.fromJson(json['uiLoads'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'description': instance.description,
  'ownerId': instance.ownerId,
  'createdAt': const FirestoreDateTime().toJson(instance.createdAt),
  'updatedAt': const FirestoreDateTime().toJson(instance.updatedAt),
  'defaultScreenId': instance.defaultScreenId,
  'isPublic': instance.isPublic,
  'tags': instance.tags,
  'status': instance.status,
  'deletedAt': const FirestoreDateTimeNullable().toJson(instance.deletedAt),
  'subscription': instance.subscription,
  'uiLoads': instance.uiLoads,
};
