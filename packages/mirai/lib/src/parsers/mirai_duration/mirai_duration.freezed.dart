// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_duration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiDuration _$MiraiDurationFromJson(Map<String, dynamic> json) {
  return _MiraiDuration.fromJson(json);
}

/// @nodoc
mixin _$MiraiDuration {
  int get days => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  int get seconds => throw _privateConstructorUsedError;
  int get milliseconds => throw _privateConstructorUsedError;
  int get microseconds => throw _privateConstructorUsedError;

  /// Serializes this MiraiDuration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiDuration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiDurationCopyWith<MiraiDuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiDurationCopyWith<$Res> {
  factory $MiraiDurationCopyWith(
          MiraiDuration value, $Res Function(MiraiDuration) then) =
      _$MiraiDurationCopyWithImpl<$Res, MiraiDuration>;
  @useResult
  $Res call(
      {int days,
      int hours,
      int minutes,
      int seconds,
      int milliseconds,
      int microseconds});
}

/// @nodoc
class _$MiraiDurationCopyWithImpl<$Res, $Val extends MiraiDuration>
    implements $MiraiDurationCopyWith<$Res> {
  _$MiraiDurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiDuration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? hours = null,
    Object? minutes = null,
    Object? seconds = null,
    Object? milliseconds = null,
    Object? microseconds = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      milliseconds: null == milliseconds
          ? _value.milliseconds
          : milliseconds // ignore: cast_nullable_to_non_nullable
              as int,
      microseconds: null == microseconds
          ? _value.microseconds
          : microseconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiDurationImplCopyWith<$Res>
    implements $MiraiDurationCopyWith<$Res> {
  factory _$$MiraiDurationImplCopyWith(
          _$MiraiDurationImpl value, $Res Function(_$MiraiDurationImpl) then) =
      __$$MiraiDurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int days,
      int hours,
      int minutes,
      int seconds,
      int milliseconds,
      int microseconds});
}

/// @nodoc
class __$$MiraiDurationImplCopyWithImpl<$Res>
    extends _$MiraiDurationCopyWithImpl<$Res, _$MiraiDurationImpl>
    implements _$$MiraiDurationImplCopyWith<$Res> {
  __$$MiraiDurationImplCopyWithImpl(
      _$MiraiDurationImpl _value, $Res Function(_$MiraiDurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiDuration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? hours = null,
    Object? minutes = null,
    Object? seconds = null,
    Object? milliseconds = null,
    Object? microseconds = null,
  }) {
    return _then(_$MiraiDurationImpl(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      milliseconds: null == milliseconds
          ? _value.milliseconds
          : milliseconds // ignore: cast_nullable_to_non_nullable
              as int,
      microseconds: null == microseconds
          ? _value.microseconds
          : microseconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiDurationImpl implements _MiraiDuration {
  const _$MiraiDurationImpl(
      {this.days = 0,
      this.hours = 0,
      this.minutes = 0,
      this.seconds = 0,
      this.milliseconds = 0,
      this.microseconds = 0});

  factory _$MiraiDurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiDurationImplFromJson(json);

  @override
  @JsonKey()
  final int days;
  @override
  @JsonKey()
  final int hours;
  @override
  @JsonKey()
  final int minutes;
  @override
  @JsonKey()
  final int seconds;
  @override
  @JsonKey()
  final int milliseconds;
  @override
  @JsonKey()
  final int microseconds;

  @override
  String toString() {
    return 'MiraiDuration(days: $days, hours: $hours, minutes: $minutes, seconds: $seconds, milliseconds: $milliseconds, microseconds: $microseconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiDurationImpl &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.milliseconds, milliseconds) ||
                other.milliseconds == milliseconds) &&
            (identical(other.microseconds, microseconds) ||
                other.microseconds == microseconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, days, hours, minutes, seconds, milliseconds, microseconds);

  /// Create a copy of MiraiDuration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiDurationImplCopyWith<_$MiraiDurationImpl> get copyWith =>
      __$$MiraiDurationImplCopyWithImpl<_$MiraiDurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiDurationImplToJson(
      this,
    );
  }
}

abstract class _MiraiDuration implements MiraiDuration {
  const factory _MiraiDuration(
      {final int days,
      final int hours,
      final int minutes,
      final int seconds,
      final int milliseconds,
      final int microseconds}) = _$MiraiDurationImpl;

  factory _MiraiDuration.fromJson(Map<String, dynamic> json) =
      _$MiraiDurationImpl.fromJson;

  @override
  int get days;
  @override
  int get hours;
  @override
  int get minutes;
  @override
  int get seconds;
  @override
  int get milliseconds;
  @override
  int get microseconds;

  /// Create a copy of MiraiDuration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiDurationImplCopyWith<_$MiraiDurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
