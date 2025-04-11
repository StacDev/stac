// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_bottom_navigation_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacBottomNavigationBar {
  List<StacBottomNavigationBarItem> get items;
  double? get elevation;
  BottomNavigationBarType? get bottomNavigationBarType;
  String? get fixedColor;
  String? get backgroundColor;
  double get iconSize;
  String? get selectedItemColor;
  String? get unselectedItemColor;
  double get selectedFontSize;
  double get unselectedFontSize;
  StacTextStyle? get selectedLabelStyle;
  StacTextStyle? get unselectedLabelStyle;
  bool? get showSelectedLabels;
  bool? get showUnselectedLabels;
  bool? get enableFeedback;
  BottomNavigationBarLandscapeLayout? get landscapeLayout;

  /// Create a copy of StacBottomNavigationBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBottomNavigationBarCopyWith<StacBottomNavigationBar> get copyWith =>
      _$StacBottomNavigationBarCopyWithImpl<StacBottomNavigationBar>(
          this as StacBottomNavigationBar, _$identity);

  /// Serializes this StacBottomNavigationBar to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBottomNavigationBar &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(
                    other.bottomNavigationBarType, bottomNavigationBarType) ||
                other.bottomNavigationBarType == bottomNavigationBarType) &&
            (identical(other.fixedColor, fixedColor) ||
                other.fixedColor == fixedColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.iconSize, iconSize) ||
                other.iconSize == iconSize) &&
            (identical(other.selectedItemColor, selectedItemColor) ||
                other.selectedItemColor == selectedItemColor) &&
            (identical(other.unselectedItemColor, unselectedItemColor) ||
                other.unselectedItemColor == unselectedItemColor) &&
            (identical(other.selectedFontSize, selectedFontSize) ||
                other.selectedFontSize == selectedFontSize) &&
            (identical(other.unselectedFontSize, unselectedFontSize) ||
                other.unselectedFontSize == unselectedFontSize) &&
            (identical(other.selectedLabelStyle, selectedLabelStyle) ||
                other.selectedLabelStyle == selectedLabelStyle) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle) &&
            (identical(other.showSelectedLabels, showSelectedLabels) ||
                other.showSelectedLabels == showSelectedLabels) &&
            (identical(other.showUnselectedLabels, showUnselectedLabels) ||
                other.showUnselectedLabels == showUnselectedLabels) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.landscapeLayout, landscapeLayout) ||
                other.landscapeLayout == landscapeLayout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      elevation,
      bottomNavigationBarType,
      fixedColor,
      backgroundColor,
      iconSize,
      selectedItemColor,
      unselectedItemColor,
      selectedFontSize,
      unselectedFontSize,
      selectedLabelStyle,
      unselectedLabelStyle,
      showSelectedLabels,
      showUnselectedLabels,
      enableFeedback,
      landscapeLayout);

  @override
  String toString() {
    return 'StacBottomNavigationBar(items: $items, elevation: $elevation, bottomNavigationBarType: $bottomNavigationBarType, fixedColor: $fixedColor, backgroundColor: $backgroundColor, iconSize: $iconSize, selectedItemColor: $selectedItemColor, unselectedItemColor: $unselectedItemColor, selectedFontSize: $selectedFontSize, unselectedFontSize: $unselectedFontSize, selectedLabelStyle: $selectedLabelStyle, unselectedLabelStyle: $unselectedLabelStyle, showSelectedLabels: $showSelectedLabels, showUnselectedLabels: $showUnselectedLabels, enableFeedback: $enableFeedback, landscapeLayout: $landscapeLayout)';
  }
}

/// @nodoc
abstract mixin class $StacBottomNavigationBarCopyWith<$Res> {
  factory $StacBottomNavigationBarCopyWith(StacBottomNavigationBar value,
          $Res Function(StacBottomNavigationBar) _then) =
      _$StacBottomNavigationBarCopyWithImpl;
  @useResult
  $Res call(
      {List<StacBottomNavigationBarItem> items,
      double? elevation,
      BottomNavigationBarType? bottomNavigationBarType,
      String? fixedColor,
      String? backgroundColor,
      double iconSize,
      String? selectedItemColor,
      String? unselectedItemColor,
      double selectedFontSize,
      double unselectedFontSize,
      StacTextStyle? selectedLabelStyle,
      StacTextStyle? unselectedLabelStyle,
      bool? showSelectedLabels,
      bool? showUnselectedLabels,
      bool? enableFeedback,
      BottomNavigationBarLandscapeLayout? landscapeLayout});

  $StacTextStyleCopyWith<$Res>? get selectedLabelStyle;
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle;
}

/// @nodoc
class _$StacBottomNavigationBarCopyWithImpl<$Res>
    implements $StacBottomNavigationBarCopyWith<$Res> {
  _$StacBottomNavigationBarCopyWithImpl(this._self, this._then);

  final StacBottomNavigationBar _self;
  final $Res Function(StacBottomNavigationBar) _then;

  /// Create a copy of StacBottomNavigationBar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? elevation = freezed,
    Object? bottomNavigationBarType = freezed,
    Object? fixedColor = freezed,
    Object? backgroundColor = freezed,
    Object? iconSize = null,
    Object? selectedItemColor = freezed,
    Object? unselectedItemColor = freezed,
    Object? selectedFontSize = null,
    Object? unselectedFontSize = null,
    Object? selectedLabelStyle = freezed,
    Object? unselectedLabelStyle = freezed,
    Object? showSelectedLabels = freezed,
    Object? showUnselectedLabels = freezed,
    Object? enableFeedback = freezed,
    Object? landscapeLayout = freezed,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<StacBottomNavigationBarItem>,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      bottomNavigationBarType: freezed == bottomNavigationBarType
          ? _self.bottomNavigationBarType
          : bottomNavigationBarType // ignore: cast_nullable_to_non_nullable
              as BottomNavigationBarType?,
      fixedColor: freezed == fixedColor
          ? _self.fixedColor
          : fixedColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconSize: null == iconSize
          ? _self.iconSize
          : iconSize // ignore: cast_nullable_to_non_nullable
              as double,
      selectedItemColor: freezed == selectedItemColor
          ? _self.selectedItemColor
          : selectedItemColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedItemColor: freezed == unselectedItemColor
          ? _self.unselectedItemColor
          : unselectedItemColor // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedFontSize: null == selectedFontSize
          ? _self.selectedFontSize
          : selectedFontSize // ignore: cast_nullable_to_non_nullable
              as double,
      unselectedFontSize: null == unselectedFontSize
          ? _self.unselectedFontSize
          : unselectedFontSize // ignore: cast_nullable_to_non_nullable
              as double,
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

  /// Create a copy of StacBottomNavigationBar
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

  /// Create a copy of StacBottomNavigationBar
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
class _StacBottomNavigationBar implements StacBottomNavigationBar {
  const _StacBottomNavigationBar(
      {required final List<StacBottomNavigationBarItem> items,
      this.elevation,
      this.bottomNavigationBarType,
      this.fixedColor,
      this.backgroundColor,
      this.iconSize = 24,
      this.selectedItemColor,
      this.unselectedItemColor,
      this.selectedFontSize = 14.0,
      this.unselectedFontSize = 12.0,
      this.selectedLabelStyle,
      this.unselectedLabelStyle,
      this.showSelectedLabels,
      this.showUnselectedLabels,
      this.enableFeedback,
      this.landscapeLayout})
      : _items = items;
  factory _StacBottomNavigationBar.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavigationBarFromJson(json);

  final List<StacBottomNavigationBarItem> _items;
  @override
  List<StacBottomNavigationBarItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final double? elevation;
  @override
  final BottomNavigationBarType? bottomNavigationBarType;
  @override
  final String? fixedColor;
  @override
  final String? backgroundColor;
  @override
  @JsonKey()
  final double iconSize;
  @override
  final String? selectedItemColor;
  @override
  final String? unselectedItemColor;
  @override
  @JsonKey()
  final double selectedFontSize;
  @override
  @JsonKey()
  final double unselectedFontSize;
  @override
  final StacTextStyle? selectedLabelStyle;
  @override
  final StacTextStyle? unselectedLabelStyle;
  @override
  final bool? showSelectedLabels;
  @override
  final bool? showUnselectedLabels;
  @override
  final bool? enableFeedback;
  @override
  final BottomNavigationBarLandscapeLayout? landscapeLayout;

  /// Create a copy of StacBottomNavigationBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBottomNavigationBarCopyWith<_StacBottomNavigationBar> get copyWith =>
      __$StacBottomNavigationBarCopyWithImpl<_StacBottomNavigationBar>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBottomNavigationBarToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBottomNavigationBar &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(
                    other.bottomNavigationBarType, bottomNavigationBarType) ||
                other.bottomNavigationBarType == bottomNavigationBarType) &&
            (identical(other.fixedColor, fixedColor) ||
                other.fixedColor == fixedColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.iconSize, iconSize) ||
                other.iconSize == iconSize) &&
            (identical(other.selectedItemColor, selectedItemColor) ||
                other.selectedItemColor == selectedItemColor) &&
            (identical(other.unselectedItemColor, unselectedItemColor) ||
                other.unselectedItemColor == unselectedItemColor) &&
            (identical(other.selectedFontSize, selectedFontSize) ||
                other.selectedFontSize == selectedFontSize) &&
            (identical(other.unselectedFontSize, unselectedFontSize) ||
                other.unselectedFontSize == unselectedFontSize) &&
            (identical(other.selectedLabelStyle, selectedLabelStyle) ||
                other.selectedLabelStyle == selectedLabelStyle) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle) &&
            (identical(other.showSelectedLabels, showSelectedLabels) ||
                other.showSelectedLabels == showSelectedLabels) &&
            (identical(other.showUnselectedLabels, showUnselectedLabels) ||
                other.showUnselectedLabels == showUnselectedLabels) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.landscapeLayout, landscapeLayout) ||
                other.landscapeLayout == landscapeLayout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      elevation,
      bottomNavigationBarType,
      fixedColor,
      backgroundColor,
      iconSize,
      selectedItemColor,
      unselectedItemColor,
      selectedFontSize,
      unselectedFontSize,
      selectedLabelStyle,
      unselectedLabelStyle,
      showSelectedLabels,
      showUnselectedLabels,
      enableFeedback,
      landscapeLayout);

  @override
  String toString() {
    return 'StacBottomNavigationBar(items: $items, elevation: $elevation, bottomNavigationBarType: $bottomNavigationBarType, fixedColor: $fixedColor, backgroundColor: $backgroundColor, iconSize: $iconSize, selectedItemColor: $selectedItemColor, unselectedItemColor: $unselectedItemColor, selectedFontSize: $selectedFontSize, unselectedFontSize: $unselectedFontSize, selectedLabelStyle: $selectedLabelStyle, unselectedLabelStyle: $unselectedLabelStyle, showSelectedLabels: $showSelectedLabels, showUnselectedLabels: $showUnselectedLabels, enableFeedback: $enableFeedback, landscapeLayout: $landscapeLayout)';
  }
}

/// @nodoc
abstract mixin class _$StacBottomNavigationBarCopyWith<$Res>
    implements $StacBottomNavigationBarCopyWith<$Res> {
  factory _$StacBottomNavigationBarCopyWith(_StacBottomNavigationBar value,
          $Res Function(_StacBottomNavigationBar) _then) =
      __$StacBottomNavigationBarCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<StacBottomNavigationBarItem> items,
      double? elevation,
      BottomNavigationBarType? bottomNavigationBarType,
      String? fixedColor,
      String? backgroundColor,
      double iconSize,
      String? selectedItemColor,
      String? unselectedItemColor,
      double selectedFontSize,
      double unselectedFontSize,
      StacTextStyle? selectedLabelStyle,
      StacTextStyle? unselectedLabelStyle,
      bool? showSelectedLabels,
      bool? showUnselectedLabels,
      bool? enableFeedback,
      BottomNavigationBarLandscapeLayout? landscapeLayout});

  @override
  $StacTextStyleCopyWith<$Res>? get selectedLabelStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle;
}

/// @nodoc
class __$StacBottomNavigationBarCopyWithImpl<$Res>
    implements _$StacBottomNavigationBarCopyWith<$Res> {
  __$StacBottomNavigationBarCopyWithImpl(this._self, this._then);

  final _StacBottomNavigationBar _self;
  final $Res Function(_StacBottomNavigationBar) _then;

  /// Create a copy of StacBottomNavigationBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? elevation = freezed,
    Object? bottomNavigationBarType = freezed,
    Object? fixedColor = freezed,
    Object? backgroundColor = freezed,
    Object? iconSize = null,
    Object? selectedItemColor = freezed,
    Object? unselectedItemColor = freezed,
    Object? selectedFontSize = null,
    Object? unselectedFontSize = null,
    Object? selectedLabelStyle = freezed,
    Object? unselectedLabelStyle = freezed,
    Object? showSelectedLabels = freezed,
    Object? showUnselectedLabels = freezed,
    Object? enableFeedback = freezed,
    Object? landscapeLayout = freezed,
  }) {
    return _then(_StacBottomNavigationBar(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<StacBottomNavigationBarItem>,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      bottomNavigationBarType: freezed == bottomNavigationBarType
          ? _self.bottomNavigationBarType
          : bottomNavigationBarType // ignore: cast_nullable_to_non_nullable
              as BottomNavigationBarType?,
      fixedColor: freezed == fixedColor
          ? _self.fixedColor
          : fixedColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconSize: null == iconSize
          ? _self.iconSize
          : iconSize // ignore: cast_nullable_to_non_nullable
              as double,
      selectedItemColor: freezed == selectedItemColor
          ? _self.selectedItemColor
          : selectedItemColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedItemColor: freezed == unselectedItemColor
          ? _self.unselectedItemColor
          : unselectedItemColor // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedFontSize: null == selectedFontSize
          ? _self.selectedFontSize
          : selectedFontSize // ignore: cast_nullable_to_non_nullable
              as double,
      unselectedFontSize: null == unselectedFontSize
          ? _self.unselectedFontSize
          : unselectedFontSize // ignore: cast_nullable_to_non_nullable
              as double,
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

  /// Create a copy of StacBottomNavigationBar
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

  /// Create a copy of StacBottomNavigationBar
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
