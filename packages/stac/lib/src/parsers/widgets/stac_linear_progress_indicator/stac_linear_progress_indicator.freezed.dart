// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_linear_progress_indicator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacLinearProgressIndicator {
  StacDouble? get value;
  String? get backgroundColor;
  String? get color;
  StacDouble? get minHeight;
  String? get semanticsLabel;
  String? get semanticsValue;
  StacBorderRadius get borderRadius;

  /// Create a copy of StacLinearProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacLinearProgressIndicatorCopyWith<StacLinearProgressIndicator>
      get copyWith => _$StacLinearProgressIndicatorCopyWithImpl<
              StacLinearProgressIndicator>(
          this as StacLinearProgressIndicator, _$identity);

  /// Serializes this StacLinearProgressIndicator to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacLinearProgressIndicator &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.semanticsValue, semanticsValue) ||
                other.semanticsValue == semanticsValue) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, backgroundColor, color,
      minHeight, semanticsLabel, semanticsValue, borderRadius);

  @override
  String toString() {
    return 'StacLinearProgressIndicator(value: $value, backgroundColor: $backgroundColor, color: $color, minHeight: $minHeight, semanticsLabel: $semanticsLabel, semanticsValue: $semanticsValue, borderRadius: $borderRadius)';
  }
}

/// @nodoc
abstract mixin class $StacLinearProgressIndicatorCopyWith<$Res> {
  factory $StacLinearProgressIndicatorCopyWith(
          StacLinearProgressIndicator value,
          $Res Function(StacLinearProgressIndicator) _then) =
      _$StacLinearProgressIndicatorCopyWithImpl;
  @useResult
  $Res call(
      {StacDouble? value,
      String? backgroundColor,
      String? color,
      StacDouble? minHeight,
      String? semanticsLabel,
      String? semanticsValue,
      StacBorderRadius borderRadius});
}

/// @nodoc
class _$StacLinearProgressIndicatorCopyWithImpl<$Res>
    implements $StacLinearProgressIndicatorCopyWith<$Res> {
  _$StacLinearProgressIndicatorCopyWithImpl(this._self, this._then);

  final StacLinearProgressIndicator _self;
  final $Res Function(StacLinearProgressIndicator) _then;

  /// Create a copy of StacLinearProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? backgroundColor = freezed,
    Object? color = freezed,
    Object? minHeight = freezed,
    Object? semanticsLabel = freezed,
    Object? semanticsValue = freezed,
    Object? borderRadius = null,
  }) {
    return _then(_self.copyWith(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      minHeight: freezed == minHeight
          ? _self.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticsValue: freezed == semanticsValue
          ? _self.semanticsValue
          : semanticsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      borderRadius: null == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius,
    ));
  }
}

/// Adds pattern-matching-related methods to [StacLinearProgressIndicator].
extension StacLinearProgressIndicatorPatterns on StacLinearProgressIndicator {
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
    TResult Function(_StacLinearProgressIndicator value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacLinearProgressIndicator() when $default != null:
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
    TResult Function(_StacLinearProgressIndicator value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacLinearProgressIndicator():
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
    TResult? Function(_StacLinearProgressIndicator value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacLinearProgressIndicator() when $default != null:
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
            StacDouble? value,
            String? backgroundColor,
            String? color,
            StacDouble? minHeight,
            String? semanticsLabel,
            String? semanticsValue,
            StacBorderRadius borderRadius)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacLinearProgressIndicator() when $default != null:
        return $default(
            _that.value,
            _that.backgroundColor,
            _that.color,
            _that.minHeight,
            _that.semanticsLabel,
            _that.semanticsValue,
            _that.borderRadius);
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
            StacDouble? value,
            String? backgroundColor,
            String? color,
            StacDouble? minHeight,
            String? semanticsLabel,
            String? semanticsValue,
            StacBorderRadius borderRadius)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacLinearProgressIndicator():
        return $default(
            _that.value,
            _that.backgroundColor,
            _that.color,
            _that.minHeight,
            _that.semanticsLabel,
            _that.semanticsValue,
            _that.borderRadius);
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
            StacDouble? value,
            String? backgroundColor,
            String? color,
            StacDouble? minHeight,
            String? semanticsLabel,
            String? semanticsValue,
            StacBorderRadius borderRadius)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacLinearProgressIndicator() when $default != null:
        return $default(
            _that.value,
            _that.backgroundColor,
            _that.color,
            _that.minHeight,
            _that.semanticsLabel,
            _that.semanticsValue,
            _that.borderRadius);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacLinearProgressIndicator implements StacLinearProgressIndicator {
  const _StacLinearProgressIndicator(
      {this.value,
      this.backgroundColor,
      this.color,
      this.minHeight,
      this.semanticsLabel,
      this.semanticsValue,
      this.borderRadius = const StacBorderRadius()});
  factory _StacLinearProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$StacLinearProgressIndicatorFromJson(json);

  @override
  final StacDouble? value;
  @override
  final String? backgroundColor;
  @override
  final String? color;
  @override
  final StacDouble? minHeight;
  @override
  final String? semanticsLabel;
  @override
  final String? semanticsValue;
  @override
  @JsonKey()
  final StacBorderRadius borderRadius;

  /// Create a copy of StacLinearProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacLinearProgressIndicatorCopyWith<_StacLinearProgressIndicator>
      get copyWith => __$StacLinearProgressIndicatorCopyWithImpl<
          _StacLinearProgressIndicator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacLinearProgressIndicatorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacLinearProgressIndicator &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.semanticsValue, semanticsValue) ||
                other.semanticsValue == semanticsValue) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, backgroundColor, color,
      minHeight, semanticsLabel, semanticsValue, borderRadius);

  @override
  String toString() {
    return 'StacLinearProgressIndicator(value: $value, backgroundColor: $backgroundColor, color: $color, minHeight: $minHeight, semanticsLabel: $semanticsLabel, semanticsValue: $semanticsValue, borderRadius: $borderRadius)';
  }
}

/// @nodoc
abstract mixin class _$StacLinearProgressIndicatorCopyWith<$Res>
    implements $StacLinearProgressIndicatorCopyWith<$Res> {
  factory _$StacLinearProgressIndicatorCopyWith(
          _StacLinearProgressIndicator value,
          $Res Function(_StacLinearProgressIndicator) _then) =
      __$StacLinearProgressIndicatorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacDouble? value,
      String? backgroundColor,
      String? color,
      StacDouble? minHeight,
      String? semanticsLabel,
      String? semanticsValue,
      StacBorderRadius borderRadius});
}

/// @nodoc
class __$StacLinearProgressIndicatorCopyWithImpl<$Res>
    implements _$StacLinearProgressIndicatorCopyWith<$Res> {
  __$StacLinearProgressIndicatorCopyWithImpl(this._self, this._then);

  final _StacLinearProgressIndicator _self;
  final $Res Function(_StacLinearProgressIndicator) _then;

  /// Create a copy of StacLinearProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
    Object? backgroundColor = freezed,
    Object? color = freezed,
    Object? minHeight = freezed,
    Object? semanticsLabel = freezed,
    Object? semanticsValue = freezed,
    Object? borderRadius = null,
  }) {
    return _then(_StacLinearProgressIndicator(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      minHeight: freezed == minHeight
          ? _self.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticsValue: freezed == semanticsValue
          ? _self.semanticsValue
          : semanticsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      borderRadius: null == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius,
    ));
  }
}

// dart format on
