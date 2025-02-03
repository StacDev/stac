// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_bottom_navigation_bar_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacBottomNavigationBarItem _$StacBottomNavigationBarItemFromJson(
    Map<String, dynamic> json) {
  return _StacBottomNavigationBarItem.fromJson(json);
}

/// @nodoc
mixin _$StacBottomNavigationBarItem {
  Map<String, dynamic> get icon => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  Map<String, dynamic>? get activeIcon => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get tooltip => throw _privateConstructorUsedError;

  /// Serializes this StacBottomNavigationBarItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacBottomNavigationBarItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacBottomNavigationBarItemCopyWith<StacBottomNavigationBarItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacBottomNavigationBarItemCopyWith<$Res> {
  factory $StacBottomNavigationBarItemCopyWith(
          StacBottomNavigationBarItem value,
          $Res Function(StacBottomNavigationBarItem) then) =
      _$StacBottomNavigationBarItemCopyWithImpl<$Res,
          StacBottomNavigationBarItem>;
  @useResult
  $Res call(
      {Map<String, dynamic> icon,
      String label,
      Map<String, dynamic>? activeIcon,
      String? backgroundColor,
      String? tooltip});
}

/// @nodoc
class _$StacBottomNavigationBarItemCopyWithImpl<$Res,
        $Val extends StacBottomNavigationBarItem>
    implements $StacBottomNavigationBarItemCopyWith<$Res> {
  _$StacBottomNavigationBarItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      activeIcon: freezed == activeIcon
          ? _value.activeIcon
          : activeIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      tooltip: freezed == tooltip
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacBottomNavigationBarItemImplCopyWith<$Res>
    implements $StacBottomNavigationBarItemCopyWith<$Res> {
  factory _$$StacBottomNavigationBarItemImplCopyWith(
          _$StacBottomNavigationBarItemImpl value,
          $Res Function(_$StacBottomNavigationBarItemImpl) then) =
      __$$StacBottomNavigationBarItemImplCopyWithImpl<$Res>;
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
class __$$StacBottomNavigationBarItemImplCopyWithImpl<$Res>
    extends _$StacBottomNavigationBarItemCopyWithImpl<$Res,
        _$StacBottomNavigationBarItemImpl>
    implements _$$StacBottomNavigationBarItemImplCopyWith<$Res> {
  __$$StacBottomNavigationBarItemImplCopyWithImpl(
      _$StacBottomNavigationBarItemImpl _value,
      $Res Function(_$StacBottomNavigationBarItemImpl) _then)
      : super(_value, _then);

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
    return _then(_$StacBottomNavigationBarItemImpl(
      icon: null == icon
          ? _value._icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      activeIcon: freezed == activeIcon
          ? _value._activeIcon
          : activeIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      tooltip: freezed == tooltip
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacBottomNavigationBarItemImpl
    implements _StacBottomNavigationBarItem {
  const _$StacBottomNavigationBarItemImpl(
      {required final Map<String, dynamic> icon,
      required this.label,
      final Map<String, dynamic>? activeIcon,
      this.backgroundColor,
      this.tooltip})
      : _icon = icon,
        _activeIcon = activeIcon;

  factory _$StacBottomNavigationBarItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StacBottomNavigationBarItemImplFromJson(json);

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

  @override
  String toString() {
    return 'StacBottomNavigationBarItem(icon: $icon, label: $label, activeIcon: $activeIcon, backgroundColor: $backgroundColor, tooltip: $tooltip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacBottomNavigationBarItemImpl &&
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

  /// Create a copy of StacBottomNavigationBarItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacBottomNavigationBarItemImplCopyWith<_$StacBottomNavigationBarItemImpl>
      get copyWith => __$$StacBottomNavigationBarItemImplCopyWithImpl<
          _$StacBottomNavigationBarItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacBottomNavigationBarItemImplToJson(
      this,
    );
  }
}

abstract class _StacBottomNavigationBarItem
    implements StacBottomNavigationBarItem {
  const factory _StacBottomNavigationBarItem(
      {required final Map<String, dynamic> icon,
      required final String label,
      final Map<String, dynamic>? activeIcon,
      final String? backgroundColor,
      final String? tooltip}) = _$StacBottomNavigationBarItemImpl;

  factory _StacBottomNavigationBarItem.fromJson(Map<String, dynamic> json) =
      _$StacBottomNavigationBarItemImpl.fromJson;

  @override
  Map<String, dynamic> get icon;
  @override
  String get label;
  @override
  Map<String, dynamic>? get activeIcon;
  @override
  String? get backgroundColor;
  @override
  String? get tooltip;

  /// Create a copy of StacBottomNavigationBarItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacBottomNavigationBarItemImplCopyWith<_$StacBottomNavigationBarItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
