// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_app_bar_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacAppBarTheme {
  String? get backgroundColor;
  String? get foregroundColor;
  double? get elevation;
  double? get scrolledUnderElevation;
  String? get shadowColor;
  String? get surfaceTintColor;
  StacShapeBorder? get shape;
  StacIconThemeData? get iconTheme;
  StacIconThemeData? get actionsIconTheme;
  bool? get centerTitle;
  double? get titleSpacing;
  double? get toolbarHeight;
  StacTextStyle? get toolbarTextStyle;
  StacTextStyle? get titleTextStyle;
  StacSystemUIOverlayStyle? get systemOverlayStyle;
  StacEdgeInsets? get actionsPadding;

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacAppBarThemeCopyWith<StacAppBarTheme> get copyWith =>
      _$StacAppBarThemeCopyWithImpl<StacAppBarTheme>(
          this as StacAppBarTheme, _$identity);

  /// Serializes this StacAppBarTheme to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacAppBarTheme &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.scrolledUnderElevation, scrolledUnderElevation) ||
                other.scrolledUnderElevation == scrolledUnderElevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.iconTheme, iconTheme) ||
                other.iconTheme == iconTheme) &&
            (identical(other.actionsIconTheme, actionsIconTheme) ||
                other.actionsIconTheme == actionsIconTheme) &&
            (identical(other.centerTitle, centerTitle) ||
                other.centerTitle == centerTitle) &&
            (identical(other.titleSpacing, titleSpacing) ||
                other.titleSpacing == titleSpacing) &&
            (identical(other.toolbarHeight, toolbarHeight) ||
                other.toolbarHeight == toolbarHeight) &&
            (identical(other.toolbarTextStyle, toolbarTextStyle) ||
                other.toolbarTextStyle == toolbarTextStyle) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            (identical(other.systemOverlayStyle, systemOverlayStyle) ||
                other.systemOverlayStyle == systemOverlayStyle) &&
            (identical(other.actionsPadding, actionsPadding) ||
                other.actionsPadding == actionsPadding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      foregroundColor,
      elevation,
      scrolledUnderElevation,
      shadowColor,
      surfaceTintColor,
      shape,
      iconTheme,
      actionsIconTheme,
      centerTitle,
      titleSpacing,
      toolbarHeight,
      toolbarTextStyle,
      titleTextStyle,
      systemOverlayStyle,
      actionsPadding);

  @override
  String toString() {
    return 'StacAppBarTheme(backgroundColor: $backgroundColor, foregroundColor: $foregroundColor, elevation: $elevation, scrolledUnderElevation: $scrolledUnderElevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, shape: $shape, iconTheme: $iconTheme, actionsIconTheme: $actionsIconTheme, centerTitle: $centerTitle, titleSpacing: $titleSpacing, toolbarHeight: $toolbarHeight, toolbarTextStyle: $toolbarTextStyle, titleTextStyle: $titleTextStyle, systemOverlayStyle: $systemOverlayStyle, actionsPadding: $actionsPadding)';
  }
}

/// @nodoc
abstract mixin class $StacAppBarThemeCopyWith<$Res> {
  factory $StacAppBarThemeCopyWith(
          StacAppBarTheme value, $Res Function(StacAppBarTheme) _then) =
      _$StacAppBarThemeCopyWithImpl;
  @useResult
  $Res call(
      {String? backgroundColor,
      String? foregroundColor,
      double? elevation,
      double? scrolledUnderElevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacShapeBorder? shape,
      StacIconThemeData? iconTheme,
      StacIconThemeData? actionsIconTheme,
      bool? centerTitle,
      double? titleSpacing,
      double? toolbarHeight,
      StacTextStyle? toolbarTextStyle,
      StacTextStyle? titleTextStyle,
      StacSystemUIOverlayStyle? systemOverlayStyle,
      StacEdgeInsets? actionsPadding});

  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
  $StacIconThemeDataCopyWith<$Res>? get actionsIconTheme;
}

/// @nodoc
class _$StacAppBarThemeCopyWithImpl<$Res>
    implements $StacAppBarThemeCopyWith<$Res> {
  _$StacAppBarThemeCopyWithImpl(this._self, this._then);

  final StacAppBarTheme _self;
  final $Res Function(StacAppBarTheme) _then;

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? foregroundColor = freezed,
    Object? elevation = freezed,
    Object? scrolledUnderElevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? iconTheme = freezed,
    Object? actionsIconTheme = freezed,
    Object? centerTitle = freezed,
    Object? titleSpacing = freezed,
    Object? toolbarHeight = freezed,
    Object? toolbarTextStyle = freezed,
    Object? titleTextStyle = freezed,
    Object? systemOverlayStyle = freezed,
    Object? actionsPadding = freezed,
  }) {
    return _then(_self.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      foregroundColor: freezed == foregroundColor
          ? _self.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      scrolledUnderElevation: freezed == scrolledUnderElevation
          ? _self.scrolledUnderElevation
          : scrolledUnderElevation // ignore: cast_nullable_to_non_nullable
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
      iconTheme: freezed == iconTheme
          ? _self.iconTheme
          : iconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      actionsIconTheme: freezed == actionsIconTheme
          ? _self.actionsIconTheme
          : actionsIconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      centerTitle: freezed == centerTitle
          ? _self.centerTitle
          : centerTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      titleSpacing: freezed == titleSpacing
          ? _self.titleSpacing
          : titleSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      toolbarHeight: freezed == toolbarHeight
          ? _self.toolbarHeight
          : toolbarHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      toolbarTextStyle: freezed == toolbarTextStyle
          ? _self.toolbarTextStyle
          : toolbarTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      titleTextStyle: freezed == titleTextStyle
          ? _self.titleTextStyle
          : titleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      systemOverlayStyle: freezed == systemOverlayStyle
          ? _self.systemOverlayStyle
          : systemOverlayStyle // ignore: cast_nullable_to_non_nullable
              as StacSystemUIOverlayStyle?,
      actionsPadding: freezed == actionsPadding
          ? _self.actionsPadding
          : actionsPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
    ));
  }

  /// Create a copy of StacAppBarTheme
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

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get actionsIconTheme {
    if (_self.actionsIconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.actionsIconTheme!, (value) {
      return _then(_self.copyWith(actionsIconTheme: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StacAppBarTheme].
extension StacAppBarThemePatterns on StacAppBarTheme {
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
    TResult Function(_StacAppBarTheme value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacAppBarTheme() when $default != null:
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
    TResult Function(_StacAppBarTheme value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacAppBarTheme():
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
    TResult? Function(_StacAppBarTheme value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacAppBarTheme() when $default != null:
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
            String? foregroundColor,
            double? elevation,
            double? scrolledUnderElevation,
            String? shadowColor,
            String? surfaceTintColor,
            StacShapeBorder? shape,
            StacIconThemeData? iconTheme,
            StacIconThemeData? actionsIconTheme,
            bool? centerTitle,
            double? titleSpacing,
            double? toolbarHeight,
            StacTextStyle? toolbarTextStyle,
            StacTextStyle? titleTextStyle,
            StacSystemUIOverlayStyle? systemOverlayStyle,
            StacEdgeInsets? actionsPadding)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacAppBarTheme() when $default != null:
        return $default(
            _that.backgroundColor,
            _that.foregroundColor,
            _that.elevation,
            _that.scrolledUnderElevation,
            _that.shadowColor,
            _that.surfaceTintColor,
            _that.shape,
            _that.iconTheme,
            _that.actionsIconTheme,
            _that.centerTitle,
            _that.titleSpacing,
            _that.toolbarHeight,
            _that.toolbarTextStyle,
            _that.titleTextStyle,
            _that.systemOverlayStyle,
            _that.actionsPadding);
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
            String? foregroundColor,
            double? elevation,
            double? scrolledUnderElevation,
            String? shadowColor,
            String? surfaceTintColor,
            StacShapeBorder? shape,
            StacIconThemeData? iconTheme,
            StacIconThemeData? actionsIconTheme,
            bool? centerTitle,
            double? titleSpacing,
            double? toolbarHeight,
            StacTextStyle? toolbarTextStyle,
            StacTextStyle? titleTextStyle,
            StacSystemUIOverlayStyle? systemOverlayStyle,
            StacEdgeInsets? actionsPadding)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacAppBarTheme():
        return $default(
            _that.backgroundColor,
            _that.foregroundColor,
            _that.elevation,
            _that.scrolledUnderElevation,
            _that.shadowColor,
            _that.surfaceTintColor,
            _that.shape,
            _that.iconTheme,
            _that.actionsIconTheme,
            _that.centerTitle,
            _that.titleSpacing,
            _that.toolbarHeight,
            _that.toolbarTextStyle,
            _that.titleTextStyle,
            _that.systemOverlayStyle,
            _that.actionsPadding);
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
            String? foregroundColor,
            double? elevation,
            double? scrolledUnderElevation,
            String? shadowColor,
            String? surfaceTintColor,
            StacShapeBorder? shape,
            StacIconThemeData? iconTheme,
            StacIconThemeData? actionsIconTheme,
            bool? centerTitle,
            double? titleSpacing,
            double? toolbarHeight,
            StacTextStyle? toolbarTextStyle,
            StacTextStyle? titleTextStyle,
            StacSystemUIOverlayStyle? systemOverlayStyle,
            StacEdgeInsets? actionsPadding)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacAppBarTheme() when $default != null:
        return $default(
            _that.backgroundColor,
            _that.foregroundColor,
            _that.elevation,
            _that.scrolledUnderElevation,
            _that.shadowColor,
            _that.surfaceTintColor,
            _that.shape,
            _that.iconTheme,
            _that.actionsIconTheme,
            _that.centerTitle,
            _that.titleSpacing,
            _that.toolbarHeight,
            _that.toolbarTextStyle,
            _that.titleTextStyle,
            _that.systemOverlayStyle,
            _that.actionsPadding);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacAppBarTheme implements StacAppBarTheme {
  const _StacAppBarTheme(
      {this.backgroundColor,
      this.foregroundColor,
      this.elevation,
      this.scrolledUnderElevation,
      this.shadowColor,
      this.surfaceTintColor,
      this.shape,
      this.iconTheme,
      this.actionsIconTheme,
      this.centerTitle,
      this.titleSpacing,
      this.toolbarHeight,
      this.toolbarTextStyle,
      this.titleTextStyle,
      this.systemOverlayStyle,
      this.actionsPadding});
  factory _StacAppBarTheme.fromJson(Map<String, dynamic> json) =>
      _$StacAppBarThemeFromJson(json);

  @override
  final String? backgroundColor;
  @override
  final String? foregroundColor;
  @override
  final double? elevation;
  @override
  final double? scrolledUnderElevation;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final StacShapeBorder? shape;
  @override
  final StacIconThemeData? iconTheme;
  @override
  final StacIconThemeData? actionsIconTheme;
  @override
  final bool? centerTitle;
  @override
  final double? titleSpacing;
  @override
  final double? toolbarHeight;
  @override
  final StacTextStyle? toolbarTextStyle;
  @override
  final StacTextStyle? titleTextStyle;
  @override
  final StacSystemUIOverlayStyle? systemOverlayStyle;
  @override
  final StacEdgeInsets? actionsPadding;

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacAppBarThemeCopyWith<_StacAppBarTheme> get copyWith =>
      __$StacAppBarThemeCopyWithImpl<_StacAppBarTheme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacAppBarThemeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacAppBarTheme &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.scrolledUnderElevation, scrolledUnderElevation) ||
                other.scrolledUnderElevation == scrolledUnderElevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.iconTheme, iconTheme) ||
                other.iconTheme == iconTheme) &&
            (identical(other.actionsIconTheme, actionsIconTheme) ||
                other.actionsIconTheme == actionsIconTheme) &&
            (identical(other.centerTitle, centerTitle) ||
                other.centerTitle == centerTitle) &&
            (identical(other.titleSpacing, titleSpacing) ||
                other.titleSpacing == titleSpacing) &&
            (identical(other.toolbarHeight, toolbarHeight) ||
                other.toolbarHeight == toolbarHeight) &&
            (identical(other.toolbarTextStyle, toolbarTextStyle) ||
                other.toolbarTextStyle == toolbarTextStyle) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            (identical(other.systemOverlayStyle, systemOverlayStyle) ||
                other.systemOverlayStyle == systemOverlayStyle) &&
            (identical(other.actionsPadding, actionsPadding) ||
                other.actionsPadding == actionsPadding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      foregroundColor,
      elevation,
      scrolledUnderElevation,
      shadowColor,
      surfaceTintColor,
      shape,
      iconTheme,
      actionsIconTheme,
      centerTitle,
      titleSpacing,
      toolbarHeight,
      toolbarTextStyle,
      titleTextStyle,
      systemOverlayStyle,
      actionsPadding);

  @override
  String toString() {
    return 'StacAppBarTheme(backgroundColor: $backgroundColor, foregroundColor: $foregroundColor, elevation: $elevation, scrolledUnderElevation: $scrolledUnderElevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, shape: $shape, iconTheme: $iconTheme, actionsIconTheme: $actionsIconTheme, centerTitle: $centerTitle, titleSpacing: $titleSpacing, toolbarHeight: $toolbarHeight, toolbarTextStyle: $toolbarTextStyle, titleTextStyle: $titleTextStyle, systemOverlayStyle: $systemOverlayStyle, actionsPadding: $actionsPadding)';
  }
}

/// @nodoc
abstract mixin class _$StacAppBarThemeCopyWith<$Res>
    implements $StacAppBarThemeCopyWith<$Res> {
  factory _$StacAppBarThemeCopyWith(
          _StacAppBarTheme value, $Res Function(_StacAppBarTheme) _then) =
      __$StacAppBarThemeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? backgroundColor,
      String? foregroundColor,
      double? elevation,
      double? scrolledUnderElevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacShapeBorder? shape,
      StacIconThemeData? iconTheme,
      StacIconThemeData? actionsIconTheme,
      bool? centerTitle,
      double? titleSpacing,
      double? toolbarHeight,
      StacTextStyle? toolbarTextStyle,
      StacTextStyle? titleTextStyle,
      StacSystemUIOverlayStyle? systemOverlayStyle,
      StacEdgeInsets? actionsPadding});

  @override
  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
  @override
  $StacIconThemeDataCopyWith<$Res>? get actionsIconTheme;
}

/// @nodoc
class __$StacAppBarThemeCopyWithImpl<$Res>
    implements _$StacAppBarThemeCopyWith<$Res> {
  __$StacAppBarThemeCopyWithImpl(this._self, this._then);

  final _StacAppBarTheme _self;
  final $Res Function(_StacAppBarTheme) _then;

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backgroundColor = freezed,
    Object? foregroundColor = freezed,
    Object? elevation = freezed,
    Object? scrolledUnderElevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? iconTheme = freezed,
    Object? actionsIconTheme = freezed,
    Object? centerTitle = freezed,
    Object? titleSpacing = freezed,
    Object? toolbarHeight = freezed,
    Object? toolbarTextStyle = freezed,
    Object? titleTextStyle = freezed,
    Object? systemOverlayStyle = freezed,
    Object? actionsPadding = freezed,
  }) {
    return _then(_StacAppBarTheme(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      foregroundColor: freezed == foregroundColor
          ? _self.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      scrolledUnderElevation: freezed == scrolledUnderElevation
          ? _self.scrolledUnderElevation
          : scrolledUnderElevation // ignore: cast_nullable_to_non_nullable
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
      iconTheme: freezed == iconTheme
          ? _self.iconTheme
          : iconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      actionsIconTheme: freezed == actionsIconTheme
          ? _self.actionsIconTheme
          : actionsIconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      centerTitle: freezed == centerTitle
          ? _self.centerTitle
          : centerTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      titleSpacing: freezed == titleSpacing
          ? _self.titleSpacing
          : titleSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      toolbarHeight: freezed == toolbarHeight
          ? _self.toolbarHeight
          : toolbarHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      toolbarTextStyle: freezed == toolbarTextStyle
          ? _self.toolbarTextStyle
          : toolbarTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      titleTextStyle: freezed == titleTextStyle
          ? _self.titleTextStyle
          : titleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      systemOverlayStyle: freezed == systemOverlayStyle
          ? _self.systemOverlayStyle
          : systemOverlayStyle // ignore: cast_nullable_to_non_nullable
              as StacSystemUIOverlayStyle?,
      actionsPadding: freezed == actionsPadding
          ? _self.actionsPadding
          : actionsPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
    ));
  }

  /// Create a copy of StacAppBarTheme
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

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get actionsIconTheme {
    if (_self.actionsIconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.actionsIconTheme!, (value) {
      return _then(_self.copyWith(actionsIconTheme: value));
    });
  }
}

// dart format on
