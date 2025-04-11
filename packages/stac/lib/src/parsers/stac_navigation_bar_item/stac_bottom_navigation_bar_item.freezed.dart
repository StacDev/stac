// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_bottom_navigation_bar_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacBottomNavigationBarItem {
  Map<String, dynamic> get icon;
  String get label;
  Map<String, dynamic>? get activeIcon;
  String? get backgroundColor;
  String? get tooltip;

  /// Create a copy of StacBottomNavigationBarItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBottomNavigationBarItemCopyWith<StacBottomNavigationBarItem>
      get copyWith => _$StacBottomNavigationBarItemCopyWithImpl<
              StacBottomNavigationBarItem>(
          this as StacBottomNavigationBarItem, _$identity);

  /// Serializes this StacBottomNavigationBarItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBottomNavigationBarItem &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other.activeIcon, activeIcon) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      label,
      const DeepCollectionEquality().hash(activeIcon),
      backgroundColor,
      tooltip);

  @override
  String toString() {
    return 'StacBottomNavigationBarItem(icon: $icon, label: $label, activeIcon: $activeIcon, backgroundColor: $backgroundColor, tooltip: $tooltip)';
  }
}

/// @nodoc
abstract mixin class $StacBottomNavigationBarItemCopyWith<$Res> {
  factory $StacBottomNavigationBarItemCopyWith(
          StacBottomNavigationBarItem value,
          $Res Function(StacBottomNavigationBarItem) _then) =
      _$StacBottomNavigationBarItemCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic> icon,
      String label,
      Map<String, dynamic>? activeIcon,
      String? backgroundColor,
      String? tooltip});
}

/// @nodoc
class _$StacBottomNavigationBarItemCopyWithImpl<$Res>
    implements $StacBottomNavigationBarItemCopyWith<$Res> {
  _$StacBottomNavigationBarItemCopyWithImpl(this._self, this._then);

  final StacBottomNavigationBarItem _self;
  final $Res Function(StacBottomNavigationBarItem) _then;

  /// Create a copy of StacBottomNavigationBarItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? label = null,
    Object? activeIcon = freezed,
    Object? backgroundColor = freezed,
    Object? tooltip = freezed,
  }) {
    return _then(_self.copyWith(
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      activeIcon: freezed == activeIcon
          ? _self.activeIcon
          : activeIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      tooltip: freezed == tooltip
          ? _self.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacBottomNavigationBarItem implements StacBottomNavigationBarItem {
  const _StacBottomNavigationBarItem(
      {required final Map<String, dynamic> icon,
      required this.label,
      final Map<String, dynamic>? activeIcon,
      this.backgroundColor,
      this.tooltip})
      : _icon = icon,
        _activeIcon = activeIcon;
  factory _StacBottomNavigationBarItem.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavigationBarItemFromJson(json);

  final Map<String, dynamic> _icon;
  @override
  Map<String, dynamic> get icon {
    if (_icon is EqualUnmodifiableMapView) return _icon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_icon);
  }

  @override
  final String label;
  final Map<String, dynamic>? _activeIcon;
  @override
  Map<String, dynamic>? get activeIcon {
    final value = _activeIcon;
    if (value == null) return null;
    if (_activeIcon is EqualUnmodifiableMapView) return _activeIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? backgroundColor;
  @override
  final String? tooltip;

  /// Create a copy of StacBottomNavigationBarItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBottomNavigationBarItemCopyWith<_StacBottomNavigationBarItem>
      get copyWith => __$StacBottomNavigationBarItemCopyWithImpl<
          _StacBottomNavigationBarItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBottomNavigationBarItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBottomNavigationBarItem &&
            const DeepCollectionEquality().equals(other._icon, _icon) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other._activeIcon, _activeIcon) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_icon),
      label,
      const DeepCollectionEquality().hash(_activeIcon),
      backgroundColor,
      tooltip);

  @override
  String toString() {
    return 'StacBottomNavigationBarItem(icon: $icon, label: $label, activeIcon: $activeIcon, backgroundColor: $backgroundColor, tooltip: $tooltip)';
  }
}

/// @nodoc
abstract mixin class _$StacBottomNavigationBarItemCopyWith<$Res>
    implements $StacBottomNavigationBarItemCopyWith<$Res> {
  factory _$StacBottomNavigationBarItemCopyWith(
          _StacBottomNavigationBarItem value,
          $Res Function(_StacBottomNavigationBarItem) _then) =
      __$StacBottomNavigationBarItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> icon,
      String label,
      Map<String, dynamic>? activeIcon,
      String? backgroundColor,
      String? tooltip});
}

/// @nodoc
class __$StacBottomNavigationBarItemCopyWithImpl<$Res>
    implements _$StacBottomNavigationBarItemCopyWith<$Res> {
  __$StacBottomNavigationBarItemCopyWithImpl(this._self, this._then);

  final _StacBottomNavigationBarItem _self;
  final $Res Function(_StacBottomNavigationBarItem) _then;

  /// Create a copy of StacBottomNavigationBarItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? icon = null,
    Object? label = null,
    Object? activeIcon = freezed,
    Object? backgroundColor = freezed,
    Object? tooltip = freezed,
  }) {
    return _then(_StacBottomNavigationBarItem(
      icon: null == icon
          ? _self._icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      activeIcon: freezed == activeIcon
          ? _self._activeIcon
          : activeIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      tooltip: freezed == tooltip
          ? _self.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
