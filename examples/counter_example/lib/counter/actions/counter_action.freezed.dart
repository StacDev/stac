// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CounterAction {
  CounterActionType get counterActionType;
  int get delta;

  /// Create a copy of CounterAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CounterActionCopyWith<CounterAction> get copyWith =>
      _$CounterActionCopyWithImpl<CounterAction>(
          this as CounterAction, _$identity);

  /// Serializes this CounterAction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CounterAction &&
            (identical(other.counterActionType, counterActionType) ||
                other.counterActionType == counterActionType) &&
            (identical(other.delta, delta) || other.delta == delta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, counterActionType, delta);

  @override
  String toString() {
    return 'CounterAction(counterActionType: $counterActionType, delta: $delta)';
  }
}

/// @nodoc
abstract mixin class $CounterActionCopyWith<$Res> {
  factory $CounterActionCopyWith(
          CounterAction value, $Res Function(CounterAction) _then) =
      _$CounterActionCopyWithImpl;
  @useResult
  $Res call({CounterActionType counterActionType, int delta});
}

/// @nodoc
class _$CounterActionCopyWithImpl<$Res>
    implements $CounterActionCopyWith<$Res> {
  _$CounterActionCopyWithImpl(this._self, this._then);

  final CounterAction _self;
  final $Res Function(CounterAction) _then;

  /// Create a copy of CounterAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterActionType = null,
    Object? delta = null,
  }) {
    return _then(_self.copyWith(
      counterActionType: null == counterActionType
          ? _self.counterActionType
          : counterActionType // ignore: cast_nullable_to_non_nullable
              as CounterActionType,
      delta: null == delta
          ? _self.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CounterAction implements CounterAction {
  const _CounterAction({required this.counterActionType, this.delta = 1});
  factory _CounterAction.fromJson(Map<String, dynamic> json) =>
      _$CounterActionFromJson(json);

  @override
  final CounterActionType counterActionType;
  @override
  @JsonKey()
  final int delta;

  /// Create a copy of CounterAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CounterActionCopyWith<_CounterAction> get copyWith =>
      __$CounterActionCopyWithImpl<_CounterAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CounterActionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CounterAction &&
            (identical(other.counterActionType, counterActionType) ||
                other.counterActionType == counterActionType) &&
            (identical(other.delta, delta) || other.delta == delta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, counterActionType, delta);

  @override
  String toString() {
    return 'CounterAction(counterActionType: $counterActionType, delta: $delta)';
  }
}

/// @nodoc
abstract mixin class _$CounterActionCopyWith<$Res>
    implements $CounterActionCopyWith<$Res> {
  factory _$CounterActionCopyWith(
          _CounterAction value, $Res Function(_CounterAction) _then) =
      __$CounterActionCopyWithImpl;
  @override
  @useResult
  $Res call({CounterActionType counterActionType, int delta});
}

/// @nodoc
class __$CounterActionCopyWithImpl<$Res>
    implements _$CounterActionCopyWith<$Res> {
  __$CounterActionCopyWithImpl(this._self, this._then);

  final _CounterAction _self;
  final $Res Function(_CounterAction) _then;

  /// Create a copy of CounterAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? counterActionType = null,
    Object? delta = null,
  }) {
    return _then(_CounterAction(
      counterActionType: null == counterActionType
          ? _self.counterActionType
          : counterActionType // ignore: cast_nullable_to_non_nullable
              as CounterActionType,
      delta: null == delta
          ? _self.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
