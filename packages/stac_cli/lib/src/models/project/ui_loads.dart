import 'package:json_annotation/json_annotation.dart';
import 'package:stac_cli/src/utils/date_time_utils.dart';

part 'ui_loads.g.dart';

/// A model class representing UI load usage data for a project.
///
/// This class encapsulates UI load usage data stored in Firestore at
/// `projects/{projectId}.uiLoads`.
@JsonSerializable()
class UiLoads {
  const UiLoads({
    this.currentPeriodUiLoadCount,
    this.lastUiLoadCountFlushed,
    this.lastUiLoadsFlushedDelta,
    this.lastUiLoadsCountFlushedAt,
    this.lastUiLoadsUploadError,
    this.lifetimeUiLoadCount,
  });

  /// Current period UI load count (resets at period start)
  final int? currentPeriodUiLoadCount;

  /// Last UI load count that was flushed to billing provider
  final int? lastUiLoadCountFlushed;

  /// Delta of UI loads that were flushed last time
  final int? lastUiLoadsFlushedDelta;

  /// Timestamp when UI loads were last flushed
  @FirestoreDateTimeNullable()
  final DateTime? lastUiLoadsCountFlushedAt;

  /// Error message from last upload attempt (if any)
  final String? lastUiLoadsUploadError;

  /// Lifetime UI load count (never reset)
  final int? lifetimeUiLoadCount;

  /// Creates a UiLoads from Firestore document data
  factory UiLoads.fromFirestore(String projectId, Map<String, dynamic>? data) {
    if (data == null) {
      return UiLoads();
    }

    return UiLoads(
      currentPeriodUiLoadCount: (data['currentPeriodUiLoadCount'] as num?)
          ?.toInt(),
      lastUiLoadCountFlushed: (data['lastUiLoadCountFlushed'] as num?)?.toInt(),
      lastUiLoadsFlushedDelta: (data['lastUiLoadsFlushedDelta'] as num?)
          ?.toInt(),
      lastUiLoadsCountFlushedAt: DateTimeUtils.parseDateTime(
        data['lastUiLoadsCountFlushedAt'],
      ),
      lastUiLoadsUploadError: data['lastUiLoadsUploadError'] as String?,
      lifetimeUiLoadCount: (data['lifetimeUiLoadCount'] as num?)?.toInt(),
    );
  }

  factory UiLoads.fromJson(Map<String, dynamic> json) =>
      _$UiLoadsFromJson(json);

  Map<String, dynamic> toJson() => _$UiLoadsToJson(this);

  UiLoads copyWith({
    int? currentPeriodUiLoadCount,
    int? lastUiLoadCountFlushed,
    int? lastUiLoadsFlushedDelta,
    DateTime? lastUiLoadsCountFlushedAt,
    String? lastUiLoadsUploadError,
    int? lifetimeUiLoadCount,
  }) {
    return UiLoads(
      currentPeriodUiLoadCount:
          currentPeriodUiLoadCount ?? this.currentPeriodUiLoadCount,
      lastUiLoadCountFlushed:
          lastUiLoadCountFlushed ?? this.lastUiLoadCountFlushed,
      lastUiLoadsFlushedDelta:
          lastUiLoadsFlushedDelta ?? this.lastUiLoadsFlushedDelta,
      lastUiLoadsCountFlushedAt:
          lastUiLoadsCountFlushedAt ?? this.lastUiLoadsCountFlushedAt,
      lastUiLoadsUploadError:
          lastUiLoadsUploadError ?? this.lastUiLoadsUploadError,
      lifetimeUiLoadCount: lifetimeUiLoadCount ?? this.lifetimeUiLoadCount,
    );
  }
}
