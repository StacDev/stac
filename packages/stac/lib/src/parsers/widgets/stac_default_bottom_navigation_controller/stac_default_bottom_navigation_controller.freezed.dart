// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_default_bottom_navigation_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDefaultBottomNavigationController {
  int get length;
  int? get initialIndex;
  Map<String, dynamic> get child;

  /// Create a copy of StacDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDefaultBottomNavigationControllerCopyWith<
          StacDefaultBottomNavigationController>
      get copyWith => _$StacDefaultBottomNavigationControllerCopyWithImpl<
              StacDefaultBottomNavigationController>(
          this as StacDefaultBottomNavigationController, _$identity);

  /// Serializes this StacDefaultBottomNavigationController to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDefaultBottomNavigationController &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, length, initialIndex,
      const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacDefaultBottomNavigationController(length: $length, initialIndex: $initialIndex, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacDefaultBottomNavigationControllerCopyWith<$Res> {
  factory $StacDefaultBottomNavigationControllerCopyWith(
          StacDefaultBottomNavigationController value,
          $Res Function(StacDefaultBottomNavigationController) _then) =
      _$StacDefaultBottomNavigationControllerCopyWithImpl;
  @useResult
  $Res call({int length, int? initialIndex, Map<String, dynamic> child});
}

/// @nodoc
class _$StacDefaultBottomNavigationControllerCopyWithImpl<$Res>
    implements $StacDefaultBottomNavigationControllerCopyWith<$Res> {
  _$StacDefaultBottomNavigationControllerCopyWithImpl(this._self, this._then);

  final StacDefaultBottomNavigationController _self;
  final $Res Function(StacDefaultBottomNavigationController) _then;

  /// Create a copy of StacDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? initialIndex = freezed,
    Object? child = null,
  }) {
    return _then(_self.copyWith(
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      initialIndex: freezed == initialIndex
          ? _self.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      child: null == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// Adds pattern-matching-related methods to [StacDefaultBottomNavigationController].
extension StacDefaultBottomNavigationControllerPatterns
    on StacDefaultBottomNavigationController {
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
    TResult Function(_StacDefaultBottomNavigationController value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacDefaultBottomNavigationController() when $default != null:
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
    TResult Function(_StacDefaultBottomNavigationController value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacDefaultBottomNavigationController():
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
    TResult? Function(_StacDefaultBottomNavigationController value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacDefaultBottomNavigationController() when $default != null:
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
    TResult Function(int length, int? initialIndex, Map<String, dynamic> child)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacDefaultBottomNavigationController() when $default != null:
        return $default(_that.length, _that.initialIndex, _that.child);
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
    TResult Function(int length, int? initialIndex, Map<String, dynamic> child)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacDefaultBottomNavigationController():
        return $default(_that.length, _that.initialIndex, _that.child);
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
            int length, int? initialIndex, Map<String, dynamic> child)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacDefaultBottomNavigationController() when $default != null:
        return $default(_that.length, _that.initialIndex, _that.child);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacDefaultBottomNavigationController
    implements StacDefaultBottomNavigationController {
  const _StacDefaultBottomNavigationController(
      {required this.length,
      this.initialIndex,
      required final Map<String, dynamic> child})
      : _child = child;
  factory _StacDefaultBottomNavigationController.fromJson(
          Map<String, dynamic> json) =>
      _$StacDefaultBottomNavigationControllerFromJson(json);

  @override
  final int length;
  @override
  final int? initialIndex;
  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  /// Create a copy of StacDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDefaultBottomNavigationControllerCopyWith<
          _StacDefaultBottomNavigationController>
      get copyWith => __$StacDefaultBottomNavigationControllerCopyWithImpl<
          _StacDefaultBottomNavigationController>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDefaultBottomNavigationControllerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDefaultBottomNavigationController &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, length, initialIndex,
      const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacDefaultBottomNavigationController(length: $length, initialIndex: $initialIndex, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacDefaultBottomNavigationControllerCopyWith<$Res>
    implements $StacDefaultBottomNavigationControllerCopyWith<$Res> {
  factory _$StacDefaultBottomNavigationControllerCopyWith(
          _StacDefaultBottomNavigationController value,
          $Res Function(_StacDefaultBottomNavigationController) _then) =
      __$StacDefaultBottomNavigationControllerCopyWithImpl;
  @override
  @useResult
  $Res call({int length, int? initialIndex, Map<String, dynamic> child});
}

/// @nodoc
class __$StacDefaultBottomNavigationControllerCopyWithImpl<$Res>
    implements _$StacDefaultBottomNavigationControllerCopyWith<$Res> {
  __$StacDefaultBottomNavigationControllerCopyWithImpl(this._self, this._then);

  final _StacDefaultBottomNavigationController _self;
  final $Res Function(_StacDefaultBottomNavigationController) _then;

  /// Create a copy of StacDefaultBottomNavigationController
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? length = null,
    Object? initialIndex = freezed,
    Object? child = null,
  }) {
    return _then(_StacDefaultBottomNavigationController(
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      initialIndex: freezed == initialIndex
          ? _self.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      child: null == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
