// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
  subscriptionId: json['subscriptionId'] as String?,
  productId: json['productId'] as String?,
  customerId: json['customerId'] as String?,
  status: $enumDecodeNullable(_$SubscriptionStatusEnumMap, json['status']),
  environment: $enumDecodeNullable(
    _$SubscriptionEnvironmentEnumMap,
    json['environment'],
  ),
  currentPeriodStart: const FirestoreDateTimeNullable().fromJson(
    json['currentPeriodStart'],
  ),
  currentPeriodEnd: const FirestoreDateTimeNullable().fromJson(
    json['currentPeriodEnd'],
  ),
  lastRenewedAt: const FirestoreDateTimeNullable().fromJson(
    json['lastRenewedAt'],
  ),
  updatedAt: const FirestoreDateTimeNullable().fromJson(json['updatedAt']),
  cancelOnPeriodEnd: json['cancelOnPeriodEnd'] as bool?,
  additionalUsageBillingEnabled: json['additionalUsageBillingEnabled'] as bool?,
  spendLimitEnabled: json['spendLimitEnabled'] as bool?,
  alertThreshold: (json['alertThreshold'] as num?)?.toDouble(),
);

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'subscriptionId': instance.subscriptionId,
      'productId': instance.productId,
      'customerId': instance.customerId,
      'status': _$SubscriptionStatusEnumMap[instance.status],
      'environment': _$SubscriptionEnvironmentEnumMap[instance.environment],
      'currentPeriodStart': const FirestoreDateTimeNullable().toJson(
        instance.currentPeriodStart,
      ),
      'currentPeriodEnd': const FirestoreDateTimeNullable().toJson(
        instance.currentPeriodEnd,
      ),
      'lastRenewedAt': const FirestoreDateTimeNullable().toJson(
        instance.lastRenewedAt,
      ),
      'updatedAt': const FirestoreDateTimeNullable().toJson(instance.updatedAt),
      'cancelOnPeriodEnd': instance.cancelOnPeriodEnd,
      'additionalUsageBillingEnabled': instance.additionalUsageBillingEnabled,
      'spendLimitEnabled': instance.spendLimitEnabled,
      'alertThreshold': instance.alertThreshold,
    };

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.onHold: 'on_hold',
  SubscriptionStatus.cancelled: 'cancelled',
  SubscriptionStatus.failed: 'failed',
  SubscriptionStatus.expired: 'expired',
};

const _$SubscriptionEnvironmentEnumMap = {
  SubscriptionEnvironment.testMode: 'test_mode',
  SubscriptionEnvironment.liveMode: 'live_mode',
};
