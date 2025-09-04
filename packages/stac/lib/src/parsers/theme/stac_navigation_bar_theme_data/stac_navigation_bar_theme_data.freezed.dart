// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_navigation_bar_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacNavigationBarThemeData {
  double? get height;
  String? get backgroundColor;
  double? get elevation;
  String? get shadowColor;
  String? get surfaceTintColor;
  String? get indicatorColor;
  StacBorder? get indicatorShape;
  StacTextStyle? get labelTextStyle;
  StacIconThemeData? get iconTheme;
  NavigationDestinationLabelBehavior? get labelBehavior;

  /// Create a copy of StacNavigationBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacNavigationBarThemeDataCopyWith<StacNavigationBarThemeData>
      get copyWith =>
          _$StacNavigationBarThemeDataCopyWithImpl<StacNavigationBarThemeData>(
              this as StacNavigationBarThemeData, _$identity);

  /// Serializes this StacNavigationBarThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacNavigationBarThemeData &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.indicatorShape, indicatorShape) ||
                other.indicatorShape == indicatorShape) &&
            (identical(other.labelTextStyle, labelTextStyle) ||
                other.labelTextStyle == labelTextStyle) &&
            (identical(other.iconTheme, iconTheme) ||
                other.iconTheme == iconTheme) &&
            (identical(other.labelBehavior, labelBehavior) ||
                other.labelBehavior == labelBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      height,
      backgroundColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      indicatorColor,
      indicatorShape,
      labelTextStyle,
      iconTheme,
      labelBehavior);

  @override
  String toString() {
    return 'StacNavigationBarThemeData(height: $height, backgroundColor: $backgroundColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, indicatorColor: $indicatorColor, indicatorShape: $indicatorShape, labelTextStyle: $labelTextStyle, iconTheme: $iconTheme, labelBehavior: $labelBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacNavigationBarThemeDataCopyWith<$Res> {
  factory $StacNavigationBarThemeDataCopyWith(StacNavigationBarThemeData value,
          $Res Function(StacNavigationBarThemeData) _then) =
      _$StacNavigationBarThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {double? height,
      String? backgroundColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      String? indicatorColor,
      StacBorder? indicatorShape,
      StacTextStyle? labelTextStyle,
      StacIconThemeData? iconTheme,
      NavigationDestinationLabelBehavior? labelBehavior});

  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
}

/// @nodoc
class _$StacNavigationBarThemeDataCopyWithImpl<$Res>
    implements $StacNavigationBarThemeDataCopyWith<$Res> {
  _$StacNavigationBarThemeDataCopyWithImpl(this._self, this._then);

  final StacNavigationBarThemeData _self;
  final $Res Function(StacNavigationBarThemeData) _then;

  /// Create a copy of StacNavigationBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? indicatorColor = freezed,
    Object? indicatorShape = freezed,
    Object? labelTextStyle = freezed,
    Object? iconTheme = freezed,
    Object? labelBehavior = freezed,
  }) {
    return _then(_self.copyWith(
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
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
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorShape: freezed == indicatorShape
          ? _self.indicatorShape
          : indicatorShape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      labelTextStyle: freezed == labelTextStyle
          ? _self.labelTextStyle
          : labelTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      iconTheme: freezed == iconTheme
          ? _self.iconTheme
          : iconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      labelBehavior: freezed == labelBehavior
          ? _self.labelBehavior
          : labelBehavior // ignore: cast_nullable_to_non_nullable
              as NavigationDestinationLabelBehavior?,
    ));
  }

  /// Create a copy of StacNavigationBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get iconTheme {
    if (_self.iconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.iconTheme!, (value) {
      return _then(_self.copyWith(iconTheme: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StacNavigationBarThemeData].
extension StacNavigationBarThemeDataPatterns on StacNavigationBarThemeData {
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
    TResult Function(_StacNavigationBarThemeData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacNavigationBarThemeData() when $default != null:
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
    TResult Function(_StacNavigationBarThemeData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacNavigationBarThemeData():
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
    TResult? Function(_StacNavigationBarThemeData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacNavigationBarThemeData() when $default != null:
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
            double? height,
            String? backgroundColor,
            double? elevation,
            String? shadowColor,
            String? surfaceTintColor,
            String? indicatorColor,
            StacBorder? indicatorShape,
            StacTextStyle? labelTextStyle,
            StacIconThemeData? iconTheme,
            NavigationDestinationLabelBehavior? labelBehavior)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacNavigationBarThemeData() when $default != null:
        return $default(
            _that.height,
            _that.backgroundColor,
            _that.elevation,
            _that.shadowColor,
            _that.surfaceTintColor,
            _that.indicatorColor,
            _that.indicatorShape,
            _that.labelTextStyle,
            _that.iconTheme,
            _that.labelBehavior);
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
            double? height,
            String? backgroundColor,
            double? elevation,
            String? shadowColor,
            String? surfaceTintColor,
            String? indicatorColor,
            StacBorder? indicatorShape,
            StacTextStyle? labelTextStyle,
            StacIconThemeData? iconTheme,
            NavigationDestinationLabelBehavior? labelBehavior)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacNavigationBarThemeData():
        return $default(
            _that.height,
            _that.backgroundColor,
            _that.elevation,
            _that.shadowColor,
            _that.surfaceTintColor,
            _that.indicatorColor,
            _that.indicatorShape,
            _that.labelTextStyle,
            _that.iconTheme,
            _that.labelBehavior);
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
            double? height,
            String? backgroundColor,
            double? elevation,
            String? shadowColor,
            String? surfaceTintColor,
            String? indicatorColor,
            StacBorder? indicatorShape,
            StacTextStyle? labelTextStyle,
            StacIconThemeData? iconTheme,
            NavigationDestinationLabelBehavior? labelBehavior)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacNavigationBarThemeData() when $default != null:
        return $default(
            _that.height,
            _that.backgroundColor,
            _that.elevation,
            _that.shadowColor,
            _that.surfaceTintColor,
            _that.indicatorColor,
            _that.indicatorShape,
            _that.labelTextStyle,
            _that.iconTheme,
            _that.labelBehavior);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacNavigationBarThemeData implements StacNavigationBarThemeData {
  const _StacNavigationBarThemeData(
      {this.height,
      this.backgroundColor,
      this.elevation,
      this.shadowColor,
      this.surfaceTintColor,
      this.indicatorColor,
      this.indicatorShape,
      this.labelTextStyle,
      this.iconTheme,
      this.labelBehavior});
  factory _StacNavigationBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationBarThemeDataFromJson(json);

  @override
  final double? height;
  @override
  final String? backgroundColor;
  @override
  final double? elevation;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final String? indicatorColor;
  @override
  final StacBorder? indicatorShape;
  @override
  final StacTextStyle? labelTextStyle;
  @override
  final StacIconThemeData? iconTheme;
  @override
  final NavigationDestinationLabelBehavior? labelBehavior;

  /// Create a copy of StacNavigationBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacNavigationBarThemeDataCopyWith<_StacNavigationBarThemeData>
      get copyWith => __$StacNavigationBarThemeDataCopyWithImpl<
          _StacNavigationBarThemeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacNavigationBarThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacNavigationBarThemeData &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.indicatorShape, indicatorShape) ||
                other.indicatorShape == indicatorShape) &&
            (identical(other.labelTextStyle, labelTextStyle) ||
                other.labelTextStyle == labelTextStyle) &&
            (identical(other.iconTheme, iconTheme) ||
                other.iconTheme == iconTheme) &&
            (identical(other.labelBehavior, labelBehavior) ||
                other.labelBehavior == labelBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      height,
      backgroundColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      indicatorColor,
      indicatorShape,
      labelTextStyle,
      iconTheme,
      labelBehavior);

  @override
  String toString() {
    return 'StacNavigationBarThemeData(height: $height, backgroundColor: $backgroundColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, indicatorColor: $indicatorColor, indicatorShape: $indicatorShape, labelTextStyle: $labelTextStyle, iconTheme: $iconTheme, labelBehavior: $labelBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacNavigationBarThemeDataCopyWith<$Res>
    implements $StacNavigationBarThemeDataCopyWith<$Res> {
  factory _$StacNavigationBarThemeDataCopyWith(
          _StacNavigationBarThemeData value,
          $Res Function(_StacNavigationBarThemeData) _then) =
      __$StacNavigationBarThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? height,
      String? backgroundColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      String? indicatorColor,
      StacBorder? indicatorShape,
      StacTextStyle? labelTextStyle,
      StacIconThemeData? iconTheme,
      NavigationDestinationLabelBehavior? labelBehavior});

  @override
  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
}

/// @nodoc
class __$StacNavigationBarThemeDataCopyWithImpl<$Res>
    implements _$StacNavigationBarThemeDataCopyWith<$Res> {
  __$StacNavigationBarThemeDataCopyWithImpl(this._self, this._then);

  final _StacNavigationBarThemeData _self;
  final $Res Function(_StacNavigationBarThemeData) _then;

  /// Create a copy of StacNavigationBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? height = freezed,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? indicatorColor = freezed,
    Object? indicatorShape = freezed,
    Object? labelTextStyle = freezed,
    Object? iconTheme = freezed,
    Object? labelBehavior = freezed,
  }) {
    return _then(_StacNavigationBarThemeData(
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
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
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorShape: freezed == indicatorShape
          ? _self.indicatorShape
          : indicatorShape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      labelTextStyle: freezed == labelTextStyle
          ? _self.labelTextStyle
          : labelTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      iconTheme: freezed == iconTheme
          ? _self.iconTheme
          : iconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      labelBehavior: freezed == labelBehavior
          ? _self.labelBehavior
          : labelBehavior // ignore: cast_nullable_to_non_nullable
              as NavigationDestinationLabelBehavior?,
    ));
  }

  /// Create a copy of StacNavigationBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get iconTheme {
    if (_self.iconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.iconTheme!, (value) {
      return _then(_self.copyWith(iconTheme: value));
    });
  }
}

// dart format on
