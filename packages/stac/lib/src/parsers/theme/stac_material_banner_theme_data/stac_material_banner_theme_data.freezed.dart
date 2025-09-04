// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_material_banner_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacMaterialBannerThemeData {
  String? get backgroundColor;
  String? get surfaceTintColor;
  String? get shadowColor;
  String? get dividerColor;
  StacTextStyle? get contentTextStyle;
  double? get elevation;
  StacEdgeInsets? get padding;
  StacEdgeInsets? get leadingPadding;

  /// Create a copy of StacMaterialBannerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacMaterialBannerThemeDataCopyWith<StacMaterialBannerThemeData>
      get copyWith => _$StacMaterialBannerThemeDataCopyWithImpl<
              StacMaterialBannerThemeData>(
          this as StacMaterialBannerThemeData, _$identity);

  /// Serializes this StacMaterialBannerThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacMaterialBannerThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.dividerColor, dividerColor) ||
                other.dividerColor == dividerColor) &&
            (identical(other.contentTextStyle, contentTextStyle) ||
                other.contentTextStyle == contentTextStyle) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.leadingPadding, leadingPadding) ||
                other.leadingPadding == leadingPadding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      surfaceTintColor,
      shadowColor,
      dividerColor,
      contentTextStyle,
      elevation,
      padding,
      leadingPadding);

  @override
  String toString() {
    return 'StacMaterialBannerThemeData(backgroundColor: $backgroundColor, surfaceTintColor: $surfaceTintColor, shadowColor: $shadowColor, dividerColor: $dividerColor, contentTextStyle: $contentTextStyle, elevation: $elevation, padding: $padding, leadingPadding: $leadingPadding)';
  }
}

/// @nodoc
abstract mixin class $StacMaterialBannerThemeDataCopyWith<$Res> {
  factory $StacMaterialBannerThemeDataCopyWith(
          StacMaterialBannerThemeData value,
          $Res Function(StacMaterialBannerThemeData) _then) =
      _$StacMaterialBannerThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {String? backgroundColor,
      String? surfaceTintColor,
      String? shadowColor,
      String? dividerColor,
      StacTextStyle? contentTextStyle,
      double? elevation,
      StacEdgeInsets? padding,
      StacEdgeInsets? leadingPadding});
}

/// @nodoc
class _$StacMaterialBannerThemeDataCopyWithImpl<$Res>
    implements $StacMaterialBannerThemeDataCopyWith<$Res> {
  _$StacMaterialBannerThemeDataCopyWithImpl(this._self, this._then);

  final StacMaterialBannerThemeData _self;
  final $Res Function(StacMaterialBannerThemeData) _then;

  /// Create a copy of StacMaterialBannerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shadowColor = freezed,
    Object? dividerColor = freezed,
    Object? contentTextStyle = freezed,
    Object? elevation = freezed,
    Object? padding = freezed,
    Object? leadingPadding = freezed,
  }) {
    return _then(_self.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      dividerColor: freezed == dividerColor
          ? _self.dividerColor
          : dividerColor // ignore: cast_nullable_to_non_nullable
              as String?,
      contentTextStyle: freezed == contentTextStyle
          ? _self.contentTextStyle
          : contentTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      leadingPadding: freezed == leadingPadding
          ? _self.leadingPadding
          : leadingPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StacMaterialBannerThemeData].
extension StacMaterialBannerThemeDataPatterns on StacMaterialBannerThemeData {
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
    TResult Function(_StacMaterialBannerThemeData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacMaterialBannerThemeData() when $default != null:
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
    TResult Function(_StacMaterialBannerThemeData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacMaterialBannerThemeData():
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
    TResult? Function(_StacMaterialBannerThemeData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacMaterialBannerThemeData() when $default != null:
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
            String? surfaceTintColor,
            String? shadowColor,
            String? dividerColor,
            StacTextStyle? contentTextStyle,
            double? elevation,
            StacEdgeInsets? padding,
            StacEdgeInsets? leadingPadding)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacMaterialBannerThemeData() when $default != null:
        return $default(
            _that.backgroundColor,
            _that.surfaceTintColor,
            _that.shadowColor,
            _that.dividerColor,
            _that.contentTextStyle,
            _that.elevation,
            _that.padding,
            _that.leadingPadding);
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
            String? surfaceTintColor,
            String? shadowColor,
            String? dividerColor,
            StacTextStyle? contentTextStyle,
            double? elevation,
            StacEdgeInsets? padding,
            StacEdgeInsets? leadingPadding)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacMaterialBannerThemeData():
        return $default(
            _that.backgroundColor,
            _that.surfaceTintColor,
            _that.shadowColor,
            _that.dividerColor,
            _that.contentTextStyle,
            _that.elevation,
            _that.padding,
            _that.leadingPadding);
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
            String? surfaceTintColor,
            String? shadowColor,
            String? dividerColor,
            StacTextStyle? contentTextStyle,
            double? elevation,
            StacEdgeInsets? padding,
            StacEdgeInsets? leadingPadding)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacMaterialBannerThemeData() when $default != null:
        return $default(
            _that.backgroundColor,
            _that.surfaceTintColor,
            _that.shadowColor,
            _that.dividerColor,
            _that.contentTextStyle,
            _that.elevation,
            _that.padding,
            _that.leadingPadding);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacMaterialBannerThemeData implements StacMaterialBannerThemeData {
  const _StacMaterialBannerThemeData(
      {this.backgroundColor,
      this.surfaceTintColor,
      this.shadowColor,
      this.dividerColor,
      this.contentTextStyle,
      this.elevation,
      this.padding,
      this.leadingPadding});
  factory _StacMaterialBannerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacMaterialBannerThemeDataFromJson(json);

  @override
  final String? backgroundColor;
  @override
  final String? surfaceTintColor;
  @override
  final String? shadowColor;
  @override
  final String? dividerColor;
  @override
  final StacTextStyle? contentTextStyle;
  @override
  final double? elevation;
  @override
  final StacEdgeInsets? padding;
  @override
  final StacEdgeInsets? leadingPadding;

  /// Create a copy of StacMaterialBannerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacMaterialBannerThemeDataCopyWith<_StacMaterialBannerThemeData>
      get copyWith => __$StacMaterialBannerThemeDataCopyWithImpl<
          _StacMaterialBannerThemeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacMaterialBannerThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacMaterialBannerThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.dividerColor, dividerColor) ||
                other.dividerColor == dividerColor) &&
            (identical(other.contentTextStyle, contentTextStyle) ||
                other.contentTextStyle == contentTextStyle) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.leadingPadding, leadingPadding) ||
                other.leadingPadding == leadingPadding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      surfaceTintColor,
      shadowColor,
      dividerColor,
      contentTextStyle,
      elevation,
      padding,
      leadingPadding);

  @override
  String toString() {
    return 'StacMaterialBannerThemeData(backgroundColor: $backgroundColor, surfaceTintColor: $surfaceTintColor, shadowColor: $shadowColor, dividerColor: $dividerColor, contentTextStyle: $contentTextStyle, elevation: $elevation, padding: $padding, leadingPadding: $leadingPadding)';
  }
}

/// @nodoc
abstract mixin class _$StacMaterialBannerThemeDataCopyWith<$Res>
    implements $StacMaterialBannerThemeDataCopyWith<$Res> {
  factory _$StacMaterialBannerThemeDataCopyWith(
          _StacMaterialBannerThemeData value,
          $Res Function(_StacMaterialBannerThemeData) _then) =
      __$StacMaterialBannerThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? backgroundColor,
      String? surfaceTintColor,
      String? shadowColor,
      String? dividerColor,
      StacTextStyle? contentTextStyle,
      double? elevation,
      StacEdgeInsets? padding,
      StacEdgeInsets? leadingPadding});
}

/// @nodoc
class __$StacMaterialBannerThemeDataCopyWithImpl<$Res>
    implements _$StacMaterialBannerThemeDataCopyWith<$Res> {
  __$StacMaterialBannerThemeDataCopyWithImpl(this._self, this._then);

  final _StacMaterialBannerThemeData _self;
  final $Res Function(_StacMaterialBannerThemeData) _then;

  /// Create a copy of StacMaterialBannerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backgroundColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shadowColor = freezed,
    Object? dividerColor = freezed,
    Object? contentTextStyle = freezed,
    Object? elevation = freezed,
    Object? padding = freezed,
    Object? leadingPadding = freezed,
  }) {
    return _then(_StacMaterialBannerThemeData(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      dividerColor: freezed == dividerColor
          ? _self.dividerColor
          : dividerColor // ignore: cast_nullable_to_non_nullable
              as String?,
      contentTextStyle: freezed == contentTextStyle
          ? _self.contentTextStyle
          : contentTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      leadingPadding: freezed == leadingPadding
          ? _self.leadingPadding
          : leadingPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
    ));
  }
}

// dart format on
