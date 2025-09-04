// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_tab_bar_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacTabBarThemeData {
  StacBoxDecoration? get indicator;
  String? get indicatorColor;
  TabBarIndicatorSize? get indicatorSize;
  String? get dividerColor;
  String? get labelColor;
  StacEdgeInsets? get labelPadding;
  StacTextStyle? get labelStyle;
  String? get unselectedLabelColor;
  StacTextStyle? get unselectedLabelStyle;
  String? get overlayColor;

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTabBarThemeDataCopyWith<StacTabBarThemeData> get copyWith =>
      _$StacTabBarThemeDataCopyWithImpl<StacTabBarThemeData>(
          this as StacTabBarThemeData, _$identity);

  /// Serializes this StacTabBarThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTabBarThemeData &&
            (identical(other.indicator, indicator) ||
                other.indicator == indicator) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.indicatorSize, indicatorSize) ||
                other.indicatorSize == indicatorSize) &&
            (identical(other.dividerColor, dividerColor) ||
                other.dividerColor == dividerColor) &&
            (identical(other.labelColor, labelColor) ||
                other.labelColor == labelColor) &&
            (identical(other.labelPadding, labelPadding) ||
                other.labelPadding == labelPadding) &&
            (identical(other.labelStyle, labelStyle) ||
                other.labelStyle == labelStyle) &&
            (identical(other.unselectedLabelColor, unselectedLabelColor) ||
                other.unselectedLabelColor == unselectedLabelColor) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      indicator,
      indicatorColor,
      indicatorSize,
      dividerColor,
      labelColor,
      labelPadding,
      labelStyle,
      unselectedLabelColor,
      unselectedLabelStyle,
      overlayColor);

  @override
  String toString() {
    return 'StacTabBarThemeData(indicator: $indicator, indicatorColor: $indicatorColor, indicatorSize: $indicatorSize, dividerColor: $dividerColor, labelColor: $labelColor, labelPadding: $labelPadding, labelStyle: $labelStyle, unselectedLabelColor: $unselectedLabelColor, unselectedLabelStyle: $unselectedLabelStyle, overlayColor: $overlayColor)';
  }
}

/// @nodoc
abstract mixin class $StacTabBarThemeDataCopyWith<$Res> {
  factory $StacTabBarThemeDataCopyWith(
          StacTabBarThemeData value, $Res Function(StacTabBarThemeData) _then) =
      _$StacTabBarThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {StacBoxDecoration? indicator,
      String? indicatorColor,
      TabBarIndicatorSize? indicatorSize,
      String? dividerColor,
      String? labelColor,
      StacEdgeInsets? labelPadding,
      StacTextStyle? labelStyle,
      String? unselectedLabelColor,
      StacTextStyle? unselectedLabelStyle,
      String? overlayColor});
}

/// @nodoc
class _$StacTabBarThemeDataCopyWithImpl<$Res>
    implements $StacTabBarThemeDataCopyWith<$Res> {
  _$StacTabBarThemeDataCopyWithImpl(this._self, this._then);

  final StacTabBarThemeData _self;
  final $Res Function(StacTabBarThemeData) _then;

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicator = freezed,
    Object? indicatorColor = freezed,
    Object? indicatorSize = freezed,
    Object? dividerColor = freezed,
    Object? labelColor = freezed,
    Object? labelPadding = freezed,
    Object? labelStyle = freezed,
    Object? unselectedLabelColor = freezed,
    Object? unselectedLabelStyle = freezed,
    Object? overlayColor = freezed,
  }) {
    return _then(_self.copyWith(
      indicator: freezed == indicator
          ? _self.indicator
          : indicator // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorSize: freezed == indicatorSize
          ? _self.indicatorSize
          : indicatorSize // ignore: cast_nullable_to_non_nullable
              as TabBarIndicatorSize?,
      dividerColor: freezed == dividerColor
          ? _self.dividerColor
          : dividerColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelColor: freezed == labelColor
          ? _self.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelPadding: freezed == labelPadding
          ? _self.labelPadding
          : labelPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      labelStyle: freezed == labelStyle
          ? _self.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      unselectedLabelColor: freezed == unselectedLabelColor
          ? _self.unselectedLabelColor
          : unselectedLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _self.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StacTabBarThemeData].
extension StacTabBarThemeDataPatterns on StacTabBarThemeData {
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
    TResult Function(_StacTabBarThemeData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacTabBarThemeData() when $default != null:
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
    TResult Function(_StacTabBarThemeData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacTabBarThemeData():
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
    TResult? Function(_StacTabBarThemeData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacTabBarThemeData() when $default != null:
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
            StacBoxDecoration? indicator,
            String? indicatorColor,
            TabBarIndicatorSize? indicatorSize,
            String? dividerColor,
            String? labelColor,
            StacEdgeInsets? labelPadding,
            StacTextStyle? labelStyle,
            String? unselectedLabelColor,
            StacTextStyle? unselectedLabelStyle,
            String? overlayColor)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacTabBarThemeData() when $default != null:
        return $default(
            _that.indicator,
            _that.indicatorColor,
            _that.indicatorSize,
            _that.dividerColor,
            _that.labelColor,
            _that.labelPadding,
            _that.labelStyle,
            _that.unselectedLabelColor,
            _that.unselectedLabelStyle,
            _that.overlayColor);
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
            StacBoxDecoration? indicator,
            String? indicatorColor,
            TabBarIndicatorSize? indicatorSize,
            String? dividerColor,
            String? labelColor,
            StacEdgeInsets? labelPadding,
            StacTextStyle? labelStyle,
            String? unselectedLabelColor,
            StacTextStyle? unselectedLabelStyle,
            String? overlayColor)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacTabBarThemeData():
        return $default(
            _that.indicator,
            _that.indicatorColor,
            _that.indicatorSize,
            _that.dividerColor,
            _that.labelColor,
            _that.labelPadding,
            _that.labelStyle,
            _that.unselectedLabelColor,
            _that.unselectedLabelStyle,
            _that.overlayColor);
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
            StacBoxDecoration? indicator,
            String? indicatorColor,
            TabBarIndicatorSize? indicatorSize,
            String? dividerColor,
            String? labelColor,
            StacEdgeInsets? labelPadding,
            StacTextStyle? labelStyle,
            String? unselectedLabelColor,
            StacTextStyle? unselectedLabelStyle,
            String? overlayColor)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacTabBarThemeData() when $default != null:
        return $default(
            _that.indicator,
            _that.indicatorColor,
            _that.indicatorSize,
            _that.dividerColor,
            _that.labelColor,
            _that.labelPadding,
            _that.labelStyle,
            _that.unselectedLabelColor,
            _that.unselectedLabelStyle,
            _that.overlayColor);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacTabBarThemeData implements StacTabBarThemeData {
  const _StacTabBarThemeData(
      {this.indicator,
      this.indicatorColor,
      this.indicatorSize,
      this.dividerColor,
      this.labelColor,
      this.labelPadding,
      this.labelStyle,
      this.unselectedLabelColor,
      this.unselectedLabelStyle,
      this.overlayColor});
  factory _StacTabBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacTabBarThemeDataFromJson(json);

  @override
  final StacBoxDecoration? indicator;
  @override
  final String? indicatorColor;
  @override
  final TabBarIndicatorSize? indicatorSize;
  @override
  final String? dividerColor;
  @override
  final String? labelColor;
  @override
  final StacEdgeInsets? labelPadding;
  @override
  final StacTextStyle? labelStyle;
  @override
  final String? unselectedLabelColor;
  @override
  final StacTextStyle? unselectedLabelStyle;
  @override
  final String? overlayColor;

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTabBarThemeDataCopyWith<_StacTabBarThemeData> get copyWith =>
      __$StacTabBarThemeDataCopyWithImpl<_StacTabBarThemeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTabBarThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTabBarThemeData &&
            (identical(other.indicator, indicator) ||
                other.indicator == indicator) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.indicatorSize, indicatorSize) ||
                other.indicatorSize == indicatorSize) &&
            (identical(other.dividerColor, dividerColor) ||
                other.dividerColor == dividerColor) &&
            (identical(other.labelColor, labelColor) ||
                other.labelColor == labelColor) &&
            (identical(other.labelPadding, labelPadding) ||
                other.labelPadding == labelPadding) &&
            (identical(other.labelStyle, labelStyle) ||
                other.labelStyle == labelStyle) &&
            (identical(other.unselectedLabelColor, unselectedLabelColor) ||
                other.unselectedLabelColor == unselectedLabelColor) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      indicator,
      indicatorColor,
      indicatorSize,
      dividerColor,
      labelColor,
      labelPadding,
      labelStyle,
      unselectedLabelColor,
      unselectedLabelStyle,
      overlayColor);

  @override
  String toString() {
    return 'StacTabBarThemeData(indicator: $indicator, indicatorColor: $indicatorColor, indicatorSize: $indicatorSize, dividerColor: $dividerColor, labelColor: $labelColor, labelPadding: $labelPadding, labelStyle: $labelStyle, unselectedLabelColor: $unselectedLabelColor, unselectedLabelStyle: $unselectedLabelStyle, overlayColor: $overlayColor)';
  }
}

/// @nodoc
abstract mixin class _$StacTabBarThemeDataCopyWith<$Res>
    implements $StacTabBarThemeDataCopyWith<$Res> {
  factory _$StacTabBarThemeDataCopyWith(_StacTabBarThemeData value,
          $Res Function(_StacTabBarThemeData) _then) =
      __$StacTabBarThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacBoxDecoration? indicator,
      String? indicatorColor,
      TabBarIndicatorSize? indicatorSize,
      String? dividerColor,
      String? labelColor,
      StacEdgeInsets? labelPadding,
      StacTextStyle? labelStyle,
      String? unselectedLabelColor,
      StacTextStyle? unselectedLabelStyle,
      String? overlayColor});
}

/// @nodoc
class __$StacTabBarThemeDataCopyWithImpl<$Res>
    implements _$StacTabBarThemeDataCopyWith<$Res> {
  __$StacTabBarThemeDataCopyWithImpl(this._self, this._then);

  final _StacTabBarThemeData _self;
  final $Res Function(_StacTabBarThemeData) _then;

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? indicator = freezed,
    Object? indicatorColor = freezed,
    Object? indicatorSize = freezed,
    Object? dividerColor = freezed,
    Object? labelColor = freezed,
    Object? labelPadding = freezed,
    Object? labelStyle = freezed,
    Object? unselectedLabelColor = freezed,
    Object? unselectedLabelStyle = freezed,
    Object? overlayColor = freezed,
  }) {
    return _then(_StacTabBarThemeData(
      indicator: freezed == indicator
          ? _self.indicator
          : indicator // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorSize: freezed == indicatorSize
          ? _self.indicatorSize
          : indicatorSize // ignore: cast_nullable_to_non_nullable
              as TabBarIndicatorSize?,
      dividerColor: freezed == dividerColor
          ? _self.dividerColor
          : dividerColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelColor: freezed == labelColor
          ? _self.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelPadding: freezed == labelPadding
          ? _self.labelPadding
          : labelPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      labelStyle: freezed == labelStyle
          ? _self.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      unselectedLabelColor: freezed == unselectedLabelColor
          ? _self.unselectedLabelColor
          : unselectedLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _self.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
