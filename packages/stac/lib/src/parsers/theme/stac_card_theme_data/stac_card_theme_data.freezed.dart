// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_card_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacCardThemeData {
  Clip? get clipBehavior;
  String? get color;
  String? get shadowColor;
  String? get surfaceTintColor;
  double? get elevation;
  StacEdgeInsets? get margin;
  StacBorder? get shape;

  /// Create a copy of StacCardThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacCardThemeDataCopyWith<StacCardThemeData> get copyWith =>
      _$StacCardThemeDataCopyWithImpl<StacCardThemeData>(
          this as StacCardThemeData, _$identity);

  /// Serializes this StacCardThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacCardThemeData &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.shape, shape) || other.shape == shape));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clipBehavior, color, shadowColor,
      surfaceTintColor, elevation, margin, shape);

  @override
  String toString() {
    return 'StacCardThemeData(clipBehavior: $clipBehavior, color: $color, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, elevation: $elevation, margin: $margin, shape: $shape)';
  }
}

/// @nodoc
abstract mixin class $StacCardThemeDataCopyWith<$Res> {
  factory $StacCardThemeDataCopyWith(
          StacCardThemeData value, $Res Function(StacCardThemeData) _then) =
      _$StacCardThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {Clip? clipBehavior,
      String? color,
      String? shadowColor,
      String? surfaceTintColor,
      double? elevation,
      StacEdgeInsets? margin,
      StacBorder? shape});
}

/// @nodoc
class _$StacCardThemeDataCopyWithImpl<$Res>
    implements $StacCardThemeDataCopyWith<$Res> {
  _$StacCardThemeDataCopyWithImpl(this._self, this._then);

  final StacCardThemeData _self;
  final $Res Function(StacCardThemeData) _then;

  /// Create a copy of StacCardThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clipBehavior = freezed,
    Object? color = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? elevation = freezed,
    Object? margin = freezed,
    Object? shape = freezed,
  }) {
    return _then(_self.copyWith(
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      margin: freezed == margin
          ? _self.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StacCardThemeData].
extension StacCardThemeDataPatterns on StacCardThemeData {
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
    TResult Function(_StacCardThemeData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacCardThemeData() when $default != null:
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
    TResult Function(_StacCardThemeData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacCardThemeData():
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
    TResult? Function(_StacCardThemeData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacCardThemeData() when $default != null:
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
            Clip? clipBehavior,
            String? color,
            String? shadowColor,
            String? surfaceTintColor,
            double? elevation,
            StacEdgeInsets? margin,
            StacBorder? shape)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacCardThemeData() when $default != null:
        return $default(_that.clipBehavior, _that.color, _that.shadowColor,
            _that.surfaceTintColor, _that.elevation, _that.margin, _that.shape);
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
            Clip? clipBehavior,
            String? color,
            String? shadowColor,
            String? surfaceTintColor,
            double? elevation,
            StacEdgeInsets? margin,
            StacBorder? shape)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacCardThemeData():
        return $default(_that.clipBehavior, _that.color, _that.shadowColor,
            _that.surfaceTintColor, _that.elevation, _that.margin, _that.shape);
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
            Clip? clipBehavior,
            String? color,
            String? shadowColor,
            String? surfaceTintColor,
            double? elevation,
            StacEdgeInsets? margin,
            StacBorder? shape)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacCardThemeData() when $default != null:
        return $default(_that.clipBehavior, _that.color, _that.shadowColor,
            _that.surfaceTintColor, _that.elevation, _that.margin, _that.shape);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacCardThemeData implements StacCardThemeData {
  const _StacCardThemeData(
      {this.clipBehavior,
      this.color,
      this.shadowColor,
      this.surfaceTintColor,
      this.elevation,
      this.margin,
      this.shape});
  factory _StacCardThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacCardThemeDataFromJson(json);

  @override
  final Clip? clipBehavior;
  @override
  final String? color;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final double? elevation;
  @override
  final StacEdgeInsets? margin;
  @override
  final StacBorder? shape;

  /// Create a copy of StacCardThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacCardThemeDataCopyWith<_StacCardThemeData> get copyWith =>
      __$StacCardThemeDataCopyWithImpl<_StacCardThemeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacCardThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacCardThemeData &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.shape, shape) || other.shape == shape));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clipBehavior, color, shadowColor,
      surfaceTintColor, elevation, margin, shape);

  @override
  String toString() {
    return 'StacCardThemeData(clipBehavior: $clipBehavior, color: $color, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, elevation: $elevation, margin: $margin, shape: $shape)';
  }
}

/// @nodoc
abstract mixin class _$StacCardThemeDataCopyWith<$Res>
    implements $StacCardThemeDataCopyWith<$Res> {
  factory _$StacCardThemeDataCopyWith(
          _StacCardThemeData value, $Res Function(_StacCardThemeData) _then) =
      __$StacCardThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Clip? clipBehavior,
      String? color,
      String? shadowColor,
      String? surfaceTintColor,
      double? elevation,
      StacEdgeInsets? margin,
      StacBorder? shape});
}

/// @nodoc
class __$StacCardThemeDataCopyWithImpl<$Res>
    implements _$StacCardThemeDataCopyWith<$Res> {
  __$StacCardThemeDataCopyWithImpl(this._self, this._then);

  final _StacCardThemeData _self;
  final $Res Function(_StacCardThemeData) _then;

  /// Create a copy of StacCardThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clipBehavior = freezed,
    Object? color = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? elevation = freezed,
    Object? margin = freezed,
    Object? shape = freezed,
  }) {
    return _then(_StacCardThemeData(
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      margin: freezed == margin
          ? _self.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
    ));
  }
}

// dart format on
