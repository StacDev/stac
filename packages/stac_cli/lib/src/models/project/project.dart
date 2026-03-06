import 'package:json_annotation/json_annotation.dart';
import 'package:stac_cli/src/models/project/subscription.dart';
import 'package:stac_cli/src/models/project/ui_loads.dart';
import 'package:stac_cli/src/utils/date_time_utils.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  const Project({
    this.id,
    required this.name,
    this.slug,
    this.description,
    required this.ownerId,
    required this.createdAt,
    required this.updatedAt,
    this.defaultScreenId,
    required this.isPublic,
    this.tags = const <String>[],
    this.status,
    this.deletedAt,
    this.subscription,
    this.uiLoads,
  });

  final String? id;
  final String name;
  final String? slug;
  final String? description;
  final String ownerId;
  @FirestoreDateTime()
  final DateTime createdAt;
  @FirestoreDateTime()
  final DateTime updatedAt;
  final String? defaultScreenId;
  final bool isPublic;
  final List<String> tags;
  final String? status;
  @FirestoreDateTimeNullable()
  final DateTime? deletedAt;
  final Subscription? subscription;
  final UiLoads? uiLoads;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Project copyWith({
    String? id,
    String? name,
    String? slug,
    String? description,
    String? ownerId,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? defaultScreenId,
    bool? isPublic,
    List<String>? tags,
    String? status,
    DateTime? deletedAt,
    Subscription? subscription,
    UiLoads? uiLoads,
  }) {
    return Project(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      description: description ?? this.description,
      ownerId: ownerId ?? this.ownerId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      defaultScreenId: defaultScreenId ?? this.defaultScreenId,
      isPublic: isPublic ?? this.isPublic,
      tags: tags ?? this.tags,
      status: status ?? this.status,
      deletedAt: deletedAt ?? this.deletedAt,
      subscription: subscription ?? this.subscription,
      uiLoads: uiLoads ?? this.uiLoads,
    );
  }

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
