import 'package:json_annotation/json_annotation.dart';
import 'package:stac_cli/src/utils/date_time_utils.dart';

part 'subscription.g.dart';

/// Subscription status enumeration
enum SubscriptionStatus {
  @JsonValue('active')
  active,
  @JsonValue('on_hold')
  onHold,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('failed')
  failed,
  @JsonValue('expired')
  expired,
}

/// Subscription environment enumeration
enum SubscriptionEnvironment {
  @JsonValue('test_mode')
  testMode,
  @JsonValue('live_mode')
  liveMode,
}

/// A model class representing a project subscription.
///
/// This class encapsulates subscription data stored in Firestore at
/// `projects/{projectId}.subscription`.
@JsonSerializable()
class Subscription {
  const Subscription({
    this.subscriptionId,
    this.productId,
    this.customerId,
    this.status,
    this.environment,
    this.currentPeriodStart,
    this.currentPeriodEnd,
    this.lastRenewedAt,
    this.updatedAt,
    this.cancelOnPeriodEnd,
    this.additionalUsageBillingEnabled,
    this.spendLimitEnabled,
    this.alertThreshold,
  });

  /// The Dodo Payments subscription ID
  final String? subscriptionId;

  /// The Dodo Payments product ID (plan identifier)
  final String? productId;

  /// The Dodo Payments customer ID
  final String? customerId;

  /// Current subscription status
  final SubscriptionStatus? status;

  /// Environment where the subscription is active
  final SubscriptionEnvironment? environment;

  /// Start of the current billing period
  @FirestoreDateTimeNullable()
  final DateTime? currentPeriodStart;

  /// End of the current billing period
  @FirestoreDateTimeNullable()
  final DateTime? currentPeriodEnd;

  /// Last time the subscription was renewed
  @FirestoreDateTimeNullable()
  final DateTime? lastRenewedAt;

  /// Last update timestamp
  @FirestoreDateTimeNullable()
  final DateTime? updatedAt;

  /// Indicates whether the subscription is set to cancel at period end.
  final bool? cancelOnPeriodEnd;

  /// Whether usage-based overage billing is enabled for the project.
  final bool? additionalUsageBillingEnabled;

  /// Whether spend limit enforcement is enabled.
  final bool? spendLimitEnabled;

  /// Threshold (0-1) for usage alerts.
  final double? alertThreshold;

  /// Checks if the subscription is within its current billing period.
  /// Returns false if period dates are missing or if current date is outside the period.
  /// The check is inclusive: current date must be >= periodStart and <= periodEnd.
  bool get isWithinCurrentPeriod {
    if (currentPeriodStart == null || currentPeriodEnd == null) {
      return false;
    }
    final now = DateTime.now();
    return (now.isAfter(currentPeriodStart!) ||
            now.isAtSameMomentAs(currentPeriodStart!)) &&
        (now.isBefore(currentPeriodEnd!) ||
            now.isAtSameMomentAs(currentPeriodEnd!));
  }

  /// Creates a Subscription from Firestore document data
  factory Subscription.fromFirestore(
    String projectId,
    Map<String, dynamic>? data,
  ) {
    if (data == null) {
      return Subscription();
    }

    SubscriptionStatus? parseStatus(String? statusStr) {
      if (statusStr == null) return null;
      switch (statusStr.toLowerCase()) {
        case 'active':
          return SubscriptionStatus.active;
        case 'on_hold':
          return SubscriptionStatus.onHold;
        case 'cancelled':
          return SubscriptionStatus.cancelled;
        case 'failed':
          return SubscriptionStatus.failed;
        case 'expired':
          return SubscriptionStatus.expired;
        default:
          return null;
      }
    }

    SubscriptionEnvironment? parseEnvironment(String? envStr) {
      if (envStr == null) return null;
      switch (envStr.toLowerCase()) {
        case 'test_mode':
          return SubscriptionEnvironment.testMode;
        case 'live_mode':
          return SubscriptionEnvironment.liveMode;
        default:
          return null;
      }
    }

    return Subscription(
      subscriptionId: data['subscriptionId'] as String?,
      productId: data['productId'] as String?,
      customerId: data['customerId'] as String?,
      status: parseStatus(data['status'] as String?),
      environment: parseEnvironment(data['environment'] as String?),
      currentPeriodStart: DateTimeUtils.parseDateTime(
        data['currentPeriodStart'],
      ),
      currentPeriodEnd: DateTimeUtils.parseDateTime(data['currentPeriodEnd']),
      lastRenewedAt: DateTimeUtils.parseDateTime(data['lastRenewedAt']),
      updatedAt: DateTimeUtils.parseDateTime(data['updatedAt']),
      cancelOnPeriodEnd: data['cancelOnPeriodEnd'] as bool?,
      additionalUsageBillingEnabled:
          data['additionalUsageBillingEnabled'] as bool?,
      spendLimitEnabled: data['spendLimitEnabled'] as bool?,
      alertThreshold: (data['alertThreshold'] as num?)?.toDouble(),
    );
  }

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);

  Subscription copyWith({
    String? subscriptionId,
    String? productId,
    String? customerId,
    SubscriptionStatus? status,
    SubscriptionEnvironment? environment,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    DateTime? lastRenewedAt,
    DateTime? updatedAt,
    bool? cancelOnPeriodEnd,
    bool? additionalUsageBillingEnabled,
    bool? spendLimitEnabled,
    double? alertThreshold,
  }) {
    return Subscription(
      subscriptionId: subscriptionId ?? this.subscriptionId,
      productId: productId ?? this.productId,
      customerId: customerId ?? this.customerId,
      status: status ?? this.status,
      environment: environment ?? this.environment,
      currentPeriodStart: currentPeriodStart ?? this.currentPeriodStart,
      currentPeriodEnd: currentPeriodEnd ?? this.currentPeriodEnd,
      lastRenewedAt: lastRenewedAt ?? this.lastRenewedAt,
      updatedAt: updatedAt ?? this.updatedAt,
      cancelOnPeriodEnd: cancelOnPeriodEnd ?? this.cancelOnPeriodEnd,
      additionalUsageBillingEnabled:
          additionalUsageBillingEnabled ?? this.additionalUsageBillingEnabled,
      spendLimitEnabled: spendLimitEnabled ?? this.spendLimitEnabled,
      alertThreshold: alertThreshold ?? this.alertThreshold,
    );
  }
}
