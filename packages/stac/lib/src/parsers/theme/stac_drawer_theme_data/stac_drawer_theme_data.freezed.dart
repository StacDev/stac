// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_drawer_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDrawerThemeData {
  String? get backgroundColor;
  String? get scrimColor;
  double? get elevation;
  String? get shadowColor;
  String? get surfaceTintColor;
  StacShapeBorder? get shape;
  StacShapeBorder? get endShape;
  double? get width;
  Clip? get clipBehavior;

  /// Create a copy of StacDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDrawerThemeDataCopyWith<StacDrawerThemeData> get copyWith =>
      _$StacDrawerThemeDataCopyWithImpl<StacDrawerThemeData>(
          this as StacDrawerThemeData, _$identity);

  /// Serializes this StacDrawerThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDrawerThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.scrimColor, scrimColor) ||
                other.scrimColor == scrimColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.endShape, endShape) ||
                other.endShape == endShape) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      scrimColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      shape,
      endShape,
      width,
      clipBehavior);

  @override
  String toString() {
    return 'StacDrawerThemeData(backgroundColor: $backgroundColor, scrimColor: $scrimColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, shape: $shape, endShape: $endShape, width: $width, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacDrawerThemeDataCopyWith<$Res> {
  factory $StacDrawerThemeDataCopyWith(
          StacDrawerThemeData value, $Res Function(StacDrawerThemeData) _then) =
      _$StacDrawerThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {String? backgroundColor,
      String? scrimColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacShapeBorder? shape,
      StacShapeBorder? endShape,
      double? width,
      Clip? clipBehavior});
}

/// @nodoc
class _$StacDrawerThemeDataCopyWithImpl<$Res>
    implements $StacDrawerThemeDataCopyWith<$Res> {
  _$StacDrawerThemeDataCopyWithImpl(this._self, this._then);

  final StacDrawerThemeData _self;
  final $Res Function(StacDrawerThemeData) _then;

  /// Create a copy of StacDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? scrimColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? endShape = freezed,
    Object? width = freezed,
    Object? clipBehavior = freezed,
  }) {
    return _then(_self.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      scrimColor: freezed == scrimColor
          ? _self.scrimColor
          : scrimColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      endShape: freezed == endShape
          ? _self.endShape
          : endShape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StacDrawerThemeData].
extension StacDrawerThemeDataPatterns on StacDrawerThemeData {
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
    TResult Function(_StacDrawerThemeData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacDrawerThemeData() when $default != null:
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
    TResult Function(_StacDrawerThemeData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacDrawerThemeData():
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
    TResult? Function(_StacDrawerThemeData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacDrawerThemeData() when $default != null:
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
            String? backgroundColor,
            String? scrimColor,
            double? elevation,
            String? shadowColor,
            String? surfaceTintColor,
            StacShapeBorder? shape,
            StacShapeBorder? endShape,
            double? width,
            Clip? clipBehavior)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacDrawerThemeData() when $default != null:
        return $default(
            _that.backgroundColor,
            _that.scrimColor,
            _that.elevation,
            _that.shadowColor,
            _that.surfaceTintColor,
            _that.shape,
            _that.endShape,
            _that.width,
            _that.clipBehavior);
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
            String? backgroundColor,
            String? scrimColor,
            double? elevation,
            String? shadowColor,
            String? surfaceTintColor,
            StacShapeBorder? shape,
            StacShapeBorder? endShape,
            double? width,
            Clip? clipBehavior)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacDrawerThemeData():
        return $default(
            _that.backgroundColor,
            _that.scrimColor,
            _that.elevation,
            _that.shadowColor,
            _that.surfaceTintColor,
            _that.shape,
            _that.endShape,
            _that.width,
            _that.clipBehavior);
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
            String? backgroundColor,
            String? scrimColor,
            double? elevation,
            String? shadowColor,
            String? surfaceTintColor,
            StacShapeBorder? shape,
            StacShapeBorder? endShape,
            double? width,
            Clip? clipBehavior)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacDrawerThemeData() when $default != null:
        return $default(
            _that.backgroundColor,
            _that.scrimColor,
            _that.elevation,
            _that.shadowColor,
            _that.surfaceTintColor,
            _that.shape,
            _that.endShape,
            _that.width,
            _that.clipBehavior);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacDrawerThemeData implements StacDrawerThemeData {
  const _StacDrawerThemeData(
      {this.backgroundColor,
      this.scrimColor,
      this.elevation,
      this.shadowColor,
      this.surfaceTintColor,
      this.shape,
      this.endShape,
      this.width,
      this.clipBehavior});
  factory _StacDrawerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDrawerThemeDataFromJson(json);

  @override
  final String? backgroundColor;
  @override
  final String? scrimColor;
  @override
  final double? elevation;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final StacShapeBorder? shape;
  @override
  final StacShapeBorder? endShape;
  @override
  final double? width;
  @override
  final Clip? clipBehavior;

  /// Create a copy of StacDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDrawerThemeDataCopyWith<_StacDrawerThemeData> get copyWith =>
      __$StacDrawerThemeDataCopyWithImpl<_StacDrawerThemeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDrawerThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDrawerThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.scrimColor, scrimColor) ||
                other.scrimColor == scrimColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.endShape, endShape) ||
                other.endShape == endShape) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      scrimColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      shape,
      endShape,
      width,
      clipBehavior);

  @override
  String toString() {
    return 'StacDrawerThemeData(backgroundColor: $backgroundColor, scrimColor: $scrimColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, shape: $shape, endShape: $endShape, width: $width, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacDrawerThemeDataCopyWith<$Res>
    implements $StacDrawerThemeDataCopyWith<$Res> {
  factory _$StacDrawerThemeDataCopyWith(_StacDrawerThemeData value,
          $Res Function(_StacDrawerThemeData) _then) =
      __$StacDrawerThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? backgroundColor,
      String? scrimColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacShapeBorder? shape,
      StacShapeBorder? endShape,
      double? width,
      Clip? clipBehavior});
}

/// @nodoc
class __$StacDrawerThemeDataCopyWithImpl<$Res>
    implements _$StacDrawerThemeDataCopyWith<$Res> {
  __$StacDrawerThemeDataCopyWithImpl(this._self, this._then);

  final _StacDrawerThemeData _self;
  final $Res Function(_StacDrawerThemeData) _then;

  /// Create a copy of StacDrawerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backgroundColor = freezed,
    Object? scrimColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? endShape = freezed,
    Object? width = freezed,
    Object? clipBehavior = freezed,
  }) {
    return _then(_StacDrawerThemeData(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      scrimColor: freezed == scrimColor
          ? _self.scrimColor
          : scrimColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      endShape: freezed == endShape
          ? _self.endShape
          : endShape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
    ));
  }
}

// dart format on
