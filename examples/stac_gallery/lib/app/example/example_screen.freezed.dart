// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExampleScreen {
  String get assetPath;

  /// Create a copy of ExampleScreen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExampleScreenCopyWith<ExampleScreen> get copyWith =>
      _$ExampleScreenCopyWithImpl<ExampleScreen>(
          this as ExampleScreen, _$identity);

  /// Serializes this ExampleScreen to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExampleScreen &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, assetPath);

  @override
  String toString() {
    return 'ExampleScreen(assetPath: $assetPath)';
  }
}

/// @nodoc
abstract mixin class $ExampleScreenCopyWith<$Res> {
  factory $ExampleScreenCopyWith(
          ExampleScreen value, $Res Function(ExampleScreen) _then) =
      _$ExampleScreenCopyWithImpl;
  @useResult
  $Res call({String assetPath});
}

/// @nodoc
class _$ExampleScreenCopyWithImpl<$Res>
    implements $ExampleScreenCopyWith<$Res> {
  _$ExampleScreenCopyWithImpl(this._self, this._then);

  final ExampleScreen _self;
  final $Res Function(ExampleScreen) _then;

  /// Create a copy of ExampleScreen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetPath = null,
  }) {
    return _then(_self.copyWith(
      assetPath: null == assetPath
          ? _self.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExampleScreen].
extension ExampleScreenPatterns on ExampleScreen {
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
    TResult Function(_ExampleScreen value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExampleScreen() when $default != null:
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
    TResult Function(_ExampleScreen value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExampleScreen():
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
    TResult? Function(_ExampleScreen value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExampleScreen() when $default != null:
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
    TResult Function(String assetPath)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExampleScreen() when $default != null:
        return $default(_that.assetPath);
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
    TResult Function(String assetPath) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExampleScreen():
        return $default(_that.assetPath);
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
    TResult? Function(String assetPath)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExampleScreen() when $default != null:
        return $default(_that.assetPath);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExampleScreen implements ExampleScreen {
  const _ExampleScreen({required this.assetPath});
  factory _ExampleScreen.fromJson(Map<String, dynamic> json) =>
      _$ExampleScreenFromJson(json);

  @override
  final String assetPath;

  /// Create a copy of ExampleScreen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExampleScreenCopyWith<_ExampleScreen> get copyWith =>
      __$ExampleScreenCopyWithImpl<_ExampleScreen>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExampleScreenToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExampleScreen &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, assetPath);

  @override
  String toString() {
    return 'ExampleScreen(assetPath: $assetPath)';
  }
}

/// @nodoc
abstract mixin class _$ExampleScreenCopyWith<$Res>
    implements $ExampleScreenCopyWith<$Res> {
  factory _$ExampleScreenCopyWith(
          _ExampleScreen value, $Res Function(_ExampleScreen) _then) =
      __$ExampleScreenCopyWithImpl;
  @override
  @useResult
  $Res call({String assetPath});
}

/// @nodoc
class __$ExampleScreenCopyWithImpl<$Res>
    implements _$ExampleScreenCopyWith<$Res> {
  __$ExampleScreenCopyWithImpl(this._self, this._then);

  final _ExampleScreen _self;
  final $Res Function(_ExampleScreen) _then;

  /// Create a copy of ExampleScreen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? assetPath = null,
  }) {
    return _then(_ExampleScreen(
      assetPath: null == assetPath
          ? _self.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
