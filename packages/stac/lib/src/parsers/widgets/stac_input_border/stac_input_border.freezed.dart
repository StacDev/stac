// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_input_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacInputBorder {
  StacInputBorderType get type;
  StacBorderRadius? get borderRadius;
  double get gapPadding;
  StacDouble get width;
  String? get color;
  StacGradient? get gradient;

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<StacInputBorder> get copyWith =>
      _$StacInputBorderCopyWithImpl<StacInputBorder>(
          this as StacInputBorder, _$identity);

  /// Serializes this StacInputBorder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacInputBorder &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.gapPadding, gapPadding) ||
                other.gapPadding == gapPadding) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.gradient, gradient) ||
                other.gradient == gradient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, borderRadius, gapPadding, width, color, gradient);

  @override
  String toString() {
    return 'StacInputBorder(type: $type, borderRadius: $borderRadius, gapPadding: $gapPadding, width: $width, color: $color, gradient: $gradient)';
  }
}

/// @nodoc
abstract mixin class $StacInputBorderCopyWith<$Res> {
  factory $StacInputBorderCopyWith(
          StacInputBorder value, $Res Function(StacInputBorder) _then) =
      _$StacInputBorderCopyWithImpl;
  @useResult
  $Res call(
      {StacInputBorderType type,
      StacBorderRadius? borderRadius,
      double gapPadding,
      StacDouble width,
      String? color,
      StacGradient? gradient});
}

/// @nodoc
class _$StacInputBorderCopyWithImpl<$Res>
    implements $StacInputBorderCopyWith<$Res> {
  _$StacInputBorderCopyWithImpl(this._self, this._then);

  final StacInputBorder _self;
  final $Res Function(StacInputBorder) _then;

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? borderRadius = freezed,
    Object? gapPadding = null,
    Object? width = null,
    Object? color = freezed,
    Object? gradient = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacInputBorderType,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
      gapPadding: null == gapPadding
          ? _self.gapPadding
          : gapPadding // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      gradient: freezed == gradient
          ? _self.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as StacGradient?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StacInputBorder].
extension StacInputBorderPatterns on StacInputBorder {
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
    TResult Function(_StacInputBorder value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacInputBorder() when $default != null:
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
    TResult Function(_StacInputBorder value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacInputBorder():
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
    TResult? Function(_StacInputBorder value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacInputBorder() when $default != null:
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
            StacInputBorderType type,
            StacBorderRadius? borderRadius,
            double gapPadding,
            StacDouble width,
            String? color,
            StacGradient? gradient)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacInputBorder() when $default != null:
        return $default(_that.type, _that.borderRadius, _that.gapPadding,
            _that.width, _that.color, _that.gradient);
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
            StacInputBorderType type,
            StacBorderRadius? borderRadius,
            double gapPadding,
            StacDouble width,
            String? color,
            StacGradient? gradient)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacInputBorder():
        return $default(_that.type, _that.borderRadius, _that.gapPadding,
            _that.width, _that.color, _that.gradient);
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
            StacInputBorderType type,
            StacBorderRadius? borderRadius,
            double gapPadding,
            StacDouble width,
            String? color,
            StacGradient? gradient)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacInputBorder() when $default != null:
        return $default(_that.type, _that.borderRadius, _that.gapPadding,
            _that.width, _that.color, _that.gradient);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacInputBorder implements StacInputBorder {
  const _StacInputBorder(
      {this.type = StacInputBorderType.underlineInputBorder,
      this.borderRadius,
      this.gapPadding = 4.0,
      this.width = StacDouble.zero,
      this.color,
      this.gradient});
  factory _StacInputBorder.fromJson(Map<String, dynamic> json) =>
      _$StacInputBorderFromJson(json);

  @override
  @JsonKey()
  final StacInputBorderType type;
  @override
  final StacBorderRadius? borderRadius;
  @override
  @JsonKey()
  final double gapPadding;
  @override
  @JsonKey()
  final StacDouble width;
  @override
  final String? color;
  @override
  final StacGradient? gradient;

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacInputBorderCopyWith<_StacInputBorder> get copyWith =>
      __$StacInputBorderCopyWithImpl<_StacInputBorder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacInputBorderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacInputBorder &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.gapPadding, gapPadding) ||
                other.gapPadding == gapPadding) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.gradient, gradient) ||
                other.gradient == gradient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, borderRadius, gapPadding, width, color, gradient);

  @override
  String toString() {
    return 'StacInputBorder(type: $type, borderRadius: $borderRadius, gapPadding: $gapPadding, width: $width, color: $color, gradient: $gradient)';
  }
}

/// @nodoc
abstract mixin class _$StacInputBorderCopyWith<$Res>
    implements $StacInputBorderCopyWith<$Res> {
  factory _$StacInputBorderCopyWith(
          _StacInputBorder value, $Res Function(_StacInputBorder) _then) =
      __$StacInputBorderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacInputBorderType type,
      StacBorderRadius? borderRadius,
      double gapPadding,
      StacDouble width,
      String? color,
      StacGradient? gradient});
}

/// @nodoc
class __$StacInputBorderCopyWithImpl<$Res>
    implements _$StacInputBorderCopyWith<$Res> {
  __$StacInputBorderCopyWithImpl(this._self, this._then);

  final _StacInputBorder _self;
  final $Res Function(_StacInputBorder) _then;

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? borderRadius = freezed,
    Object? gapPadding = null,
    Object? width = null,
    Object? color = freezed,
    Object? gradient = freezed,
  }) {
    return _then(_StacInputBorder(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacInputBorderType,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
      gapPadding: null == gapPadding
          ? _self.gapPadding
          : gapPadding // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      gradient: freezed == gradient
          ? _self.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as StacGradient?,
    ));
  }
}

// dart format on
