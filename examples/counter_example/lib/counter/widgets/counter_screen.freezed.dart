// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CounterScreen {
  String get title;
  String get description;
  int get initialCount;
  Map<String, dynamic>? get onIncrement;
  Map<String, dynamic>? get onDecrement;

  /// Create a copy of CounterScreen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CounterScreenCopyWith<CounterScreen> get copyWith =>
      _$CounterScreenCopyWithImpl<CounterScreen>(
          this as CounterScreen, _$identity);

  /// Serializes this CounterScreen to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CounterScreen &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.initialCount, initialCount) ||
                other.initialCount == initialCount) &&
            const DeepCollectionEquality()
                .equals(other.onIncrement, onIncrement) &&
            const DeepCollectionEquality()
                .equals(other.onDecrement, onDecrement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      initialCount,
      const DeepCollectionEquality().hash(onIncrement),
      const DeepCollectionEquality().hash(onDecrement));

  @override
  String toString() {
    return 'CounterScreen(title: $title, description: $description, initialCount: $initialCount, onIncrement: $onIncrement, onDecrement: $onDecrement)';
  }
}

/// @nodoc
abstract mixin class $CounterScreenCopyWith<$Res> {
  factory $CounterScreenCopyWith(
          CounterScreen value, $Res Function(CounterScreen) _then) =
      _$CounterScreenCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String description,
      int initialCount,
      Map<String, dynamic>? onIncrement,
      Map<String, dynamic>? onDecrement});
}

/// @nodoc
class _$CounterScreenCopyWithImpl<$Res>
    implements $CounterScreenCopyWith<$Res> {
  _$CounterScreenCopyWithImpl(this._self, this._then);

  final CounterScreen _self;
  final $Res Function(CounterScreen) _then;

  /// Create a copy of CounterScreen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? initialCount = null,
    Object? onIncrement = freezed,
    Object? onDecrement = freezed,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      initialCount: null == initialCount
          ? _self.initialCount
          : initialCount // ignore: cast_nullable_to_non_nullable
              as int,
      onIncrement: freezed == onIncrement
          ? _self.onIncrement
          : onIncrement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onDecrement: freezed == onDecrement
          ? _self.onDecrement
          : onDecrement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CounterScreen].
extension CounterScreenPatterns on CounterScreen {
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
    TResult Function(_CounterScreen value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CounterScreen() when $default != null:
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
    TResult Function(_CounterScreen value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CounterScreen():
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
    TResult? Function(_CounterScreen value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CounterScreen() when $default != null:
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
    TResult Function(
            String title,
            String description,
            int initialCount,
            Map<String, dynamic>? onIncrement,
            Map<String, dynamic>? onDecrement)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CounterScreen() when $default != null:
        return $default(_that.title, _that.description, _that.initialCount,
            _that.onIncrement, _that.onDecrement);
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
    TResult Function(
            String title,
            String description,
            int initialCount,
            Map<String, dynamic>? onIncrement,
            Map<String, dynamic>? onDecrement)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CounterScreen():
        return $default(_that.title, _that.description, _that.initialCount,
            _that.onIncrement, _that.onDecrement);
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
    TResult? Function(
            String title,
            String description,
            int initialCount,
            Map<String, dynamic>? onIncrement,
            Map<String, dynamic>? onDecrement)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CounterScreen() when $default != null:
        return $default(_that.title, _that.description, _that.initialCount,
            _that.onIncrement, _that.onDecrement);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CounterScreen implements CounterScreen {
  const _CounterScreen(
      {required this.title,
      required this.description,
      this.initialCount = 0,
      final Map<String, dynamic>? onIncrement,
      final Map<String, dynamic>? onDecrement})
      : _onIncrement = onIncrement,
        _onDecrement = onDecrement;
  factory _CounterScreen.fromJson(Map<String, dynamic> json) =>
      _$CounterScreenFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final int initialCount;
  final Map<String, dynamic>? _onIncrement;
  @override
  Map<String, dynamic>? get onIncrement {
    final value = _onIncrement;
    if (value == null) return null;
    if (_onIncrement is EqualUnmodifiableMapView) return _onIncrement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onDecrement;
  @override
  Map<String, dynamic>? get onDecrement {
    final value = _onDecrement;
    if (value == null) return null;
    if (_onDecrement is EqualUnmodifiableMapView) return _onDecrement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CounterScreen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CounterScreenCopyWith<_CounterScreen> get copyWith =>
      __$CounterScreenCopyWithImpl<_CounterScreen>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CounterScreenToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CounterScreen &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.initialCount, initialCount) ||
                other.initialCount == initialCount) &&
            const DeepCollectionEquality()
                .equals(other._onIncrement, _onIncrement) &&
            const DeepCollectionEquality()
                .equals(other._onDecrement, _onDecrement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      initialCount,
      const DeepCollectionEquality().hash(_onIncrement),
      const DeepCollectionEquality().hash(_onDecrement));

  @override
  String toString() {
    return 'CounterScreen(title: $title, description: $description, initialCount: $initialCount, onIncrement: $onIncrement, onDecrement: $onDecrement)';
  }
}

/// @nodoc
abstract mixin class _$CounterScreenCopyWith<$Res>
    implements $CounterScreenCopyWith<$Res> {
  factory _$CounterScreenCopyWith(
          _CounterScreen value, $Res Function(_CounterScreen) _then) =
      __$CounterScreenCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      int initialCount,
      Map<String, dynamic>? onIncrement,
      Map<String, dynamic>? onDecrement});
}

/// @nodoc
class __$CounterScreenCopyWithImpl<$Res>
    implements _$CounterScreenCopyWith<$Res> {
  __$CounterScreenCopyWithImpl(this._self, this._then);

  final _CounterScreen _self;
  final $Res Function(_CounterScreen) _then;

  /// Create a copy of CounterScreen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? initialCount = null,
    Object? onIncrement = freezed,
    Object? onDecrement = freezed,
  }) {
    return _then(_CounterScreen(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      initialCount: null == initialCount
          ? _self.initialCount
          : initialCount // ignore: cast_nullable_to_non_nullable
              as int,
      onIncrement: freezed == onIncrement
          ? _self._onIncrement
          : onIncrement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onDecrement: freezed == onDecrement
          ? _self._onDecrement
          : onDecrement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
