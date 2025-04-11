// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  StacIconThemeData? get iconTheme;
  StacIconThemeData? get actionsIconTheme;
  bool? get centerTitle;
  double? get titleSpacing;
  double? get toolbarHeight;
  StacTextStyle? get toolbarTextStyle;
  StacTextStyle? get titleTextStyle;
  StacSystemUIOverlayStyle? get systemOverlayStyle;

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
                other.systemOverlayStyle == systemOverlayStyle));
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
      iconTheme,
      actionsIconTheme,
      centerTitle,
      titleSpacing,
      toolbarHeight,
      toolbarTextStyle,
      titleTextStyle,
      systemOverlayStyle);

  @override
  String toString() {
    return 'StacAppBarTheme(backgroundColor: $backgroundColor, foregroundColor: $foregroundColor, elevation: $elevation, scrolledUnderElevation: $scrolledUnderElevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, iconTheme: $iconTheme, actionsIconTheme: $actionsIconTheme, centerTitle: $centerTitle, titleSpacing: $titleSpacing, toolbarHeight: $toolbarHeight, toolbarTextStyle: $toolbarTextStyle, titleTextStyle: $titleTextStyle, systemOverlayStyle: $systemOverlayStyle)';
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
      StacIconThemeData? iconTheme,
      StacIconThemeData? actionsIconTheme,
      bool? centerTitle,
      double? titleSpacing,
      double? toolbarHeight,
      StacTextStyle? toolbarTextStyle,
      StacTextStyle? titleTextStyle,
      StacSystemUIOverlayStyle? systemOverlayStyle});

  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
  $StacIconThemeDataCopyWith<$Res>? get actionsIconTheme;
  $StacTextStyleCopyWith<$Res>? get toolbarTextStyle;
  $StacTextStyleCopyWith<$Res>? get titleTextStyle;
  $StacSystemUIOverlayStyleCopyWith<$Res>? get systemOverlayStyle;
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
    Object? iconTheme = freezed,
    Object? actionsIconTheme = freezed,
    Object? centerTitle = freezed,
    Object? titleSpacing = freezed,
    Object? toolbarHeight = freezed,
    Object? toolbarTextStyle = freezed,
    Object? titleTextStyle = freezed,
    Object? systemOverlayStyle = freezed,
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

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get toolbarTextStyle {
    if (_self.toolbarTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.toolbarTextStyle!, (value) {
      return _then(_self.copyWith(toolbarTextStyle: value));
    });
  }

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get titleTextStyle {
    if (_self.titleTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.titleTextStyle!, (value) {
      return _then(_self.copyWith(titleTextStyle: value));
    });
  }

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSystemUIOverlayStyleCopyWith<$Res>? get systemOverlayStyle {
    if (_self.systemOverlayStyle == null) {
      return null;
    }

    return $StacSystemUIOverlayStyleCopyWith<$Res>(_self.systemOverlayStyle!,
        (value) {
      return _then(_self.copyWith(systemOverlayStyle: value));
    });
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
      this.iconTheme,
      this.actionsIconTheme,
      this.centerTitle,
      this.titleSpacing,
      this.toolbarHeight,
      this.toolbarTextStyle,
      this.titleTextStyle,
      this.systemOverlayStyle});
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
                other.systemOverlayStyle == systemOverlayStyle));
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
      iconTheme,
      actionsIconTheme,
      centerTitle,
      titleSpacing,
      toolbarHeight,
      toolbarTextStyle,
      titleTextStyle,
      systemOverlayStyle);

  @override
  String toString() {
    return 'StacAppBarTheme(backgroundColor: $backgroundColor, foregroundColor: $foregroundColor, elevation: $elevation, scrolledUnderElevation: $scrolledUnderElevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, iconTheme: $iconTheme, actionsIconTheme: $actionsIconTheme, centerTitle: $centerTitle, titleSpacing: $titleSpacing, toolbarHeight: $toolbarHeight, toolbarTextStyle: $toolbarTextStyle, titleTextStyle: $titleTextStyle, systemOverlayStyle: $systemOverlayStyle)';
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
      StacIconThemeData? iconTheme,
      StacIconThemeData? actionsIconTheme,
      bool? centerTitle,
      double? titleSpacing,
      double? toolbarHeight,
      StacTextStyle? toolbarTextStyle,
      StacTextStyle? titleTextStyle,
      StacSystemUIOverlayStyle? systemOverlayStyle});

  @override
  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
  @override
  $StacIconThemeDataCopyWith<$Res>? get actionsIconTheme;
  @override
  $StacTextStyleCopyWith<$Res>? get toolbarTextStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get titleTextStyle;
  @override
  $StacSystemUIOverlayStyleCopyWith<$Res>? get systemOverlayStyle;
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
    Object? iconTheme = freezed,
    Object? actionsIconTheme = freezed,
    Object? centerTitle = freezed,
    Object? titleSpacing = freezed,
    Object? toolbarHeight = freezed,
    Object? toolbarTextStyle = freezed,
    Object? titleTextStyle = freezed,
    Object? systemOverlayStyle = freezed,
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

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get toolbarTextStyle {
    if (_self.toolbarTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.toolbarTextStyle!, (value) {
      return _then(_self.copyWith(toolbarTextStyle: value));
    });
  }

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get titleTextStyle {
    if (_self.titleTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.titleTextStyle!, (value) {
      return _then(_self.copyWith(titleTextStyle: value));
    });
  }

  /// Create a copy of StacAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSystemUIOverlayStyleCopyWith<$Res>? get systemOverlayStyle {
    if (_self.systemOverlayStyle == null) {
      return null;
    }

    return $StacSystemUIOverlayStyleCopyWith<$Res>(_self.systemOverlayStyle!,
        (value) {
      return _then(_self.copyWith(systemOverlayStyle: value));
    });
  }
}

// dart format on
