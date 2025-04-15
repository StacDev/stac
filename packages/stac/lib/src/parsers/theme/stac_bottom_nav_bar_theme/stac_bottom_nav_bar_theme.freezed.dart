// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_bottom_nav_bar_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacBottomNavBarThemeData {
  String? get backgroundColor;
  double? get elevation;
  StacIconThemeData? get selectedIconTheme;
  StacIconThemeData? get unselectedIconTheme;
  String? get selectedItemColor;
  String? get unselectedItemColor;
  StacTextStyle? get selectedLabelStyle;
  StacTextStyle? get unselectedLabelStyle;
  bool? get showSelectedLabels;
  bool? get showUnselectedLabels;
  BottomNavigationBarType? get type;
  bool? get enableFeedback;
  BottomNavigationBarLandscapeLayout? get landscapeLayout;

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBottomNavBarThemeDataCopyWith<StacBottomNavBarThemeData> get copyWith =>
      _$StacBottomNavBarThemeDataCopyWithImpl<StacBottomNavBarThemeData>(
          this as StacBottomNavBarThemeData, _$identity);

  /// Serializes this StacBottomNavBarThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBottomNavBarThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.selectedIconTheme, selectedIconTheme) ||
                other.selectedIconTheme == selectedIconTheme) &&
            (identical(other.unselectedIconTheme, unselectedIconTheme) ||
                other.unselectedIconTheme == unselectedIconTheme) &&
            (identical(other.selectedItemColor, selectedItemColor) ||
                other.selectedItemColor == selectedItemColor) &&
            (identical(other.unselectedItemColor, unselectedItemColor) ||
                other.unselectedItemColor == unselectedItemColor) &&
            (identical(other.selectedLabelStyle, selectedLabelStyle) ||
                other.selectedLabelStyle == selectedLabelStyle) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle) &&
            (identical(other.showSelectedLabels, showSelectedLabels) ||
                other.showSelectedLabels == showSelectedLabels) &&
            (identical(other.showUnselectedLabels, showUnselectedLabels) ||
                other.showUnselectedLabels == showUnselectedLabels) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.landscapeLayout, landscapeLayout) ||
                other.landscapeLayout == landscapeLayout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      elevation,
      selectedIconTheme,
      unselectedIconTheme,
      selectedItemColor,
      unselectedItemColor,
      selectedLabelStyle,
      unselectedLabelStyle,
      showSelectedLabels,
      showUnselectedLabels,
      type,
      enableFeedback,
      landscapeLayout);

  @override
  String toString() {
    return 'StacBottomNavBarThemeData(backgroundColor: $backgroundColor, elevation: $elevation, selectedIconTheme: $selectedIconTheme, unselectedIconTheme: $unselectedIconTheme, selectedItemColor: $selectedItemColor, unselectedItemColor: $unselectedItemColor, selectedLabelStyle: $selectedLabelStyle, unselectedLabelStyle: $unselectedLabelStyle, showSelectedLabels: $showSelectedLabels, showUnselectedLabels: $showUnselectedLabels, type: $type, enableFeedback: $enableFeedback, landscapeLayout: $landscapeLayout)';
  }
}

/// @nodoc
abstract mixin class $StacBottomNavBarThemeDataCopyWith<$Res> {
  factory $StacBottomNavBarThemeDataCopyWith(StacBottomNavBarThemeData value,
          $Res Function(StacBottomNavBarThemeData) _then) =
      _$StacBottomNavBarThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {String? backgroundColor,
      double? elevation,
      StacIconThemeData? selectedIconTheme,
      StacIconThemeData? unselectedIconTheme,
      String? selectedItemColor,
      String? unselectedItemColor,
      StacTextStyle? selectedLabelStyle,
      StacTextStyle? unselectedLabelStyle,
      bool? showSelectedLabels,
      bool? showUnselectedLabels,
      BottomNavigationBarType? type,
      bool? enableFeedback,
      BottomNavigationBarLandscapeLayout? landscapeLayout});

  $StacIconThemeDataCopyWith<$Res>? get selectedIconTheme;
  $StacIconThemeDataCopyWith<$Res>? get unselectedIconTheme;
  $StacTextStyleCopyWith<$Res>? get selectedLabelStyle;
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle;
}

/// @nodoc
class _$StacBottomNavBarThemeDataCopyWithImpl<$Res>
    implements $StacBottomNavBarThemeDataCopyWith<$Res> {
  _$StacBottomNavBarThemeDataCopyWithImpl(this._self, this._then);

  final StacBottomNavBarThemeData _self;
  final $Res Function(StacBottomNavBarThemeData) _then;

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? selectedIconTheme = freezed,
    Object? unselectedIconTheme = freezed,
    Object? selectedItemColor = freezed,
    Object? unselectedItemColor = freezed,
    Object? selectedLabelStyle = freezed,
    Object? unselectedLabelStyle = freezed,
    Object? showSelectedLabels = freezed,
    Object? showUnselectedLabels = freezed,
    Object? type = freezed,
    Object? enableFeedback = freezed,
    Object? landscapeLayout = freezed,
  }) {
    return _then(_self.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedIconTheme: freezed == selectedIconTheme
          ? _self.selectedIconTheme
          : selectedIconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      unselectedIconTheme: freezed == unselectedIconTheme
          ? _self.unselectedIconTheme
          : unselectedIconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      selectedItemColor: freezed == selectedItemColor
          ? _self.selectedItemColor
          : selectedItemColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedItemColor: freezed == unselectedItemColor
          ? _self.unselectedItemColor
          : unselectedItemColor // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLabelStyle: freezed == selectedLabelStyle
          ? _self.selectedLabelStyle
          : selectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _self.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      showSelectedLabels: freezed == showSelectedLabels
          ? _self.showSelectedLabels
          : showSelectedLabels // ignore: cast_nullable_to_non_nullable
              as bool?,
      showUnselectedLabels: freezed == showUnselectedLabels
          ? _self.showUnselectedLabels
          : showUnselectedLabels // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BottomNavigationBarType?,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      landscapeLayout: freezed == landscapeLayout
          ? _self.landscapeLayout
          : landscapeLayout // ignore: cast_nullable_to_non_nullable
              as BottomNavigationBarLandscapeLayout?,
    ));
  }

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get selectedIconTheme {
    if (_self.selectedIconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.selectedIconTheme!, (value) {
      return _then(_self.copyWith(selectedIconTheme: value));
    });
  }

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get unselectedIconTheme {
    if (_self.unselectedIconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.unselectedIconTheme!,
        (value) {
      return _then(_self.copyWith(unselectedIconTheme: value));
    });
  }

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get selectedLabelStyle {
    if (_self.selectedLabelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.selectedLabelStyle!, (value) {
      return _then(_self.copyWith(selectedLabelStyle: value));
    });
  }

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle {
    if (_self.unselectedLabelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.unselectedLabelStyle!, (value) {
      return _then(_self.copyWith(unselectedLabelStyle: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacBottomNavBarThemeData implements StacBottomNavBarThemeData {
  const _StacBottomNavBarThemeData(
      {this.backgroundColor,
      this.elevation,
      this.selectedIconTheme,
      this.unselectedIconTheme,
      this.selectedItemColor,
      this.unselectedItemColor,
      this.selectedLabelStyle,
      this.unselectedLabelStyle,
      this.showSelectedLabels,
      this.showUnselectedLabels,
      this.type,
      this.enableFeedback,
      this.landscapeLayout});
  factory _StacBottomNavBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavBarThemeDataFromJson(json);

  @override
  final String? backgroundColor;
  @override
  final double? elevation;
  @override
  final StacIconThemeData? selectedIconTheme;
  @override
  final StacIconThemeData? unselectedIconTheme;
  @override
  final String? selectedItemColor;
  @override
  final String? unselectedItemColor;
  @override
  final StacTextStyle? selectedLabelStyle;
  @override
  final StacTextStyle? unselectedLabelStyle;
  @override
  final bool? showSelectedLabels;
  @override
  final bool? showUnselectedLabels;
  @override
  final BottomNavigationBarType? type;
  @override
  final bool? enableFeedback;
  @override
  final BottomNavigationBarLandscapeLayout? landscapeLayout;

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBottomNavBarThemeDataCopyWith<_StacBottomNavBarThemeData>
      get copyWith =>
          __$StacBottomNavBarThemeDataCopyWithImpl<_StacBottomNavBarThemeData>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBottomNavBarThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBottomNavBarThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.selectedIconTheme, selectedIconTheme) ||
                other.selectedIconTheme == selectedIconTheme) &&
            (identical(other.unselectedIconTheme, unselectedIconTheme) ||
                other.unselectedIconTheme == unselectedIconTheme) &&
            (identical(other.selectedItemColor, selectedItemColor) ||
                other.selectedItemColor == selectedItemColor) &&
            (identical(other.unselectedItemColor, unselectedItemColor) ||
                other.unselectedItemColor == unselectedItemColor) &&
            (identical(other.selectedLabelStyle, selectedLabelStyle) ||
                other.selectedLabelStyle == selectedLabelStyle) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle) &&
            (identical(other.showSelectedLabels, showSelectedLabels) ||
                other.showSelectedLabels == showSelectedLabels) &&
            (identical(other.showUnselectedLabels, showUnselectedLabels) ||
                other.showUnselectedLabels == showUnselectedLabels) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.landscapeLayout, landscapeLayout) ||
                other.landscapeLayout == landscapeLayout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      elevation,
      selectedIconTheme,
      unselectedIconTheme,
      selectedItemColor,
      unselectedItemColor,
      selectedLabelStyle,
      unselectedLabelStyle,
      showSelectedLabels,
      showUnselectedLabels,
      type,
      enableFeedback,
      landscapeLayout);

  @override
  String toString() {
    return 'StacBottomNavBarThemeData(backgroundColor: $backgroundColor, elevation: $elevation, selectedIconTheme: $selectedIconTheme, unselectedIconTheme: $unselectedIconTheme, selectedItemColor: $selectedItemColor, unselectedItemColor: $unselectedItemColor, selectedLabelStyle: $selectedLabelStyle, unselectedLabelStyle: $unselectedLabelStyle, showSelectedLabels: $showSelectedLabels, showUnselectedLabels: $showUnselectedLabels, type: $type, enableFeedback: $enableFeedback, landscapeLayout: $landscapeLayout)';
  }
}

/// @nodoc
abstract mixin class _$StacBottomNavBarThemeDataCopyWith<$Res>
    implements $StacBottomNavBarThemeDataCopyWith<$Res> {
  factory _$StacBottomNavBarThemeDataCopyWith(_StacBottomNavBarThemeData value,
          $Res Function(_StacBottomNavBarThemeData) _then) =
      __$StacBottomNavBarThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? backgroundColor,
      double? elevation,
      StacIconThemeData? selectedIconTheme,
      StacIconThemeData? unselectedIconTheme,
      String? selectedItemColor,
      String? unselectedItemColor,
      StacTextStyle? selectedLabelStyle,
      StacTextStyle? unselectedLabelStyle,
      bool? showSelectedLabels,
      bool? showUnselectedLabels,
      BottomNavigationBarType? type,
      bool? enableFeedback,
      BottomNavigationBarLandscapeLayout? landscapeLayout});

  @override
  $StacIconThemeDataCopyWith<$Res>? get selectedIconTheme;
  @override
  $StacIconThemeDataCopyWith<$Res>? get unselectedIconTheme;
  @override
  $StacTextStyleCopyWith<$Res>? get selectedLabelStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle;
}

/// @nodoc
class __$StacBottomNavBarThemeDataCopyWithImpl<$Res>
    implements _$StacBottomNavBarThemeDataCopyWith<$Res> {
  __$StacBottomNavBarThemeDataCopyWithImpl(this._self, this._then);

  final _StacBottomNavBarThemeData _self;
  final $Res Function(_StacBottomNavBarThemeData) _then;

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? selectedIconTheme = freezed,
    Object? unselectedIconTheme = freezed,
    Object? selectedItemColor = freezed,
    Object? unselectedItemColor = freezed,
    Object? selectedLabelStyle = freezed,
    Object? unselectedLabelStyle = freezed,
    Object? showSelectedLabels = freezed,
    Object? showUnselectedLabels = freezed,
    Object? type = freezed,
    Object? enableFeedback = freezed,
    Object? landscapeLayout = freezed,
  }) {
    return _then(_StacBottomNavBarThemeData(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedIconTheme: freezed == selectedIconTheme
          ? _self.selectedIconTheme
          : selectedIconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      unselectedIconTheme: freezed == unselectedIconTheme
          ? _self.unselectedIconTheme
          : unselectedIconTheme // ignore: cast_nullable_to_non_nullable
              as StacIconThemeData?,
      selectedItemColor: freezed == selectedItemColor
          ? _self.selectedItemColor
          : selectedItemColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedItemColor: freezed == unselectedItemColor
          ? _self.unselectedItemColor
          : unselectedItemColor // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLabelStyle: freezed == selectedLabelStyle
          ? _self.selectedLabelStyle
          : selectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _self.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      showSelectedLabels: freezed == showSelectedLabels
          ? _self.showSelectedLabels
          : showSelectedLabels // ignore: cast_nullable_to_non_nullable
              as bool?,
      showUnselectedLabels: freezed == showUnselectedLabels
          ? _self.showUnselectedLabels
          : showUnselectedLabels // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BottomNavigationBarType?,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      landscapeLayout: freezed == landscapeLayout
          ? _self.landscapeLayout
          : landscapeLayout // ignore: cast_nullable_to_non_nullable
              as BottomNavigationBarLandscapeLayout?,
    ));
  }

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get selectedIconTheme {
    if (_self.selectedIconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.selectedIconTheme!, (value) {
      return _then(_self.copyWith(selectedIconTheme: value));
    });
  }

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacIconThemeDataCopyWith<$Res>? get unselectedIconTheme {
    if (_self.unselectedIconTheme == null) {
      return null;
    }

    return $StacIconThemeDataCopyWith<$Res>(_self.unselectedIconTheme!,
        (value) {
      return _then(_self.copyWith(unselectedIconTheme: value));
    });
  }

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get selectedLabelStyle {
    if (_self.selectedLabelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.selectedLabelStyle!, (value) {
      return _then(_self.copyWith(selectedLabelStyle: value));
    });
  }

  /// Create a copy of StacBottomNavBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle {
    if (_self.unselectedLabelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.unselectedLabelStyle!, (value) {
      return _then(_self.copyWith(unselectedLabelStyle: value));
    });
  }
}

// dart format on
