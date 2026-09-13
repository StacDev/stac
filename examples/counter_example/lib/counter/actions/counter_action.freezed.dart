// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [CounterAction].
extension CounterActionPatterns on CounterAction {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CounterAction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CounterAction() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CounterAction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CounterAction():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CounterAction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CounterAction() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CounterActionType counterActionType, int delta)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CounterAction() when $default != null:
        return $default(_that.counterActionType, _that.delta);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CounterActionType counterActionType, int delta) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CounterAction():
        return $default(_that.counterActionType, _that.delta);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CounterActionType counterActionType, int delta)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CounterAction() when $default != null:
        return $default(_that.counterActionType, _that.delta);
      case _:
        return null;
    }
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
