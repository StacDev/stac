// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_switch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSwitch {
  StacSwitchType get switchType;
  dynamic get value;
  Map<String, dynamic>? get onChanged;
  bool get autofocus;
  String? get activeColor;
  String? get activeTrackColor;
  String? get focusColor;
  String? get hoverColor;
  String? get inactiveThumbColor;
  String? get inactiveTrackColor;
  String? get onLabelColor;
  String? get offLabelColor;
  double? get splashRadius;
  DragStartBehavior get dragStartBehavior;
  StacMaterialColor? get overlayColor;
  StacMaterialColor? get thumbColor;
  StacMaterialColor? get trackColor;
  MaterialTapTargetSize? get materialTapTargetSize;
  StacMaterialColor? get trackOutlineColor;
  double? get trackOutlineWidth;
  Map<String, dynamic>? get thumbIcon;
  String? get inactiveThumbImage;
  String? get activeThumbImage;
  bool? get applyTheme;
  bool? get applyCupertinoTheme;

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSwitchCopyWith<StacSwitch> get copyWith =>
      _$StacSwitchCopyWithImpl<StacSwitch>(this as StacSwitch, _$identity);

  /// Serializes this StacSwitch to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSwitch &&
            (identical(other.switchType, switchType) ||
                other.switchType == switchType) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.onChanged, onChanged) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.activeColor, activeColor) ||
                other.activeColor == activeColor) &&
            (identical(other.activeTrackColor, activeTrackColor) ||
                other.activeTrackColor == activeTrackColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.inactiveThumbColor, inactiveThumbColor) ||
                other.inactiveThumbColor == inactiveThumbColor) &&
            (identical(other.inactiveTrackColor, inactiveTrackColor) ||
                other.inactiveTrackColor == inactiveTrackColor) &&
            (identical(other.onLabelColor, onLabelColor) ||
                other.onLabelColor == onLabelColor) &&
            (identical(other.offLabelColor, offLabelColor) ||
                other.offLabelColor == offLabelColor) &&
            (identical(other.splashRadius, splashRadius) ||
                other.splashRadius == splashRadius) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.thumbColor, thumbColor) ||
                other.thumbColor == thumbColor) &&
            (identical(other.trackColor, trackColor) ||
                other.trackColor == trackColor) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.trackOutlineColor, trackOutlineColor) ||
                other.trackOutlineColor == trackOutlineColor) &&
            (identical(other.trackOutlineWidth, trackOutlineWidth) ||
                other.trackOutlineWidth == trackOutlineWidth) &&
            const DeepCollectionEquality().equals(other.thumbIcon, thumbIcon) &&
            (identical(other.inactiveThumbImage, inactiveThumbImage) ||
                other.inactiveThumbImage == inactiveThumbImage) &&
            (identical(other.activeThumbImage, activeThumbImage) ||
                other.activeThumbImage == activeThumbImage) &&
            (identical(other.applyTheme, applyTheme) ||
                other.applyTheme == applyTheme) &&
            (identical(other.applyCupertinoTheme, applyCupertinoTheme) ||
                other.applyCupertinoTheme == applyCupertinoTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        switchType,
        const DeepCollectionEquality().hash(value),
        const DeepCollectionEquality().hash(onChanged),
        autofocus,
        activeColor,
        activeTrackColor,
        focusColor,
        hoverColor,
        inactiveThumbColor,
        inactiveTrackColor,
        onLabelColor,
        offLabelColor,
        splashRadius,
        dragStartBehavior,
        overlayColor,
        thumbColor,
        trackColor,
        materialTapTargetSize,
        trackOutlineColor,
        trackOutlineWidth,
        const DeepCollectionEquality().hash(thumbIcon),
        inactiveThumbImage,
        activeThumbImage,
        applyTheme,
        applyCupertinoTheme
      ]);

  @override
  String toString() {
    return 'StacSwitch(switchType: $switchType, value: $value, onChanged: $onChanged, autofocus: $autofocus, activeColor: $activeColor, activeTrackColor: $activeTrackColor, focusColor: $focusColor, hoverColor: $hoverColor, inactiveThumbColor: $inactiveThumbColor, inactiveTrackColor: $inactiveTrackColor, onLabelColor: $onLabelColor, offLabelColor: $offLabelColor, splashRadius: $splashRadius, dragStartBehavior: $dragStartBehavior, overlayColor: $overlayColor, thumbColor: $thumbColor, trackColor: $trackColor, materialTapTargetSize: $materialTapTargetSize, trackOutlineColor: $trackOutlineColor, trackOutlineWidth: $trackOutlineWidth, thumbIcon: $thumbIcon, inactiveThumbImage: $inactiveThumbImage, activeThumbImage: $activeThumbImage, applyTheme: $applyTheme, applyCupertinoTheme: $applyCupertinoTheme)';
  }
}

/// @nodoc
abstract mixin class $StacSwitchCopyWith<$Res> {
  factory $StacSwitchCopyWith(
          StacSwitch value, $Res Function(StacSwitch) _then) =
      _$StacSwitchCopyWithImpl;
  @useResult
  $Res call(
      {StacSwitchType switchType,
      dynamic value,
      Map<String, dynamic>? onChanged,
      bool autofocus,
      String? activeColor,
      String? activeTrackColor,
      String? focusColor,
      String? hoverColor,
      String? inactiveThumbColor,
      String? inactiveTrackColor,
      String? onLabelColor,
      String? offLabelColor,
      double? splashRadius,
      DragStartBehavior dragStartBehavior,
      StacMaterialColor? overlayColor,
      StacMaterialColor? thumbColor,
      StacMaterialColor? trackColor,
      MaterialTapTargetSize? materialTapTargetSize,
      StacMaterialColor? trackOutlineColor,
      double? trackOutlineWidth,
      Map<String, dynamic>? thumbIcon,
      String? inactiveThumbImage,
      String? activeThumbImage,
      bool? applyTheme,
      bool? applyCupertinoTheme});

  $StacMaterialColorCopyWith<$Res>? get overlayColor;
  $StacMaterialColorCopyWith<$Res>? get thumbColor;
  $StacMaterialColorCopyWith<$Res>? get trackColor;
  $StacMaterialColorCopyWith<$Res>? get trackOutlineColor;
}

/// @nodoc
class _$StacSwitchCopyWithImpl<$Res> implements $StacSwitchCopyWith<$Res> {
  _$StacSwitchCopyWithImpl(this._self, this._then);

  final StacSwitch _self;
  final $Res Function(StacSwitch) _then;

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? switchType = null,
    Object? value = freezed,
    Object? onChanged = freezed,
    Object? autofocus = null,
    Object? activeColor = freezed,
    Object? activeTrackColor = freezed,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? inactiveThumbColor = freezed,
    Object? inactiveTrackColor = freezed,
    Object? onLabelColor = freezed,
    Object? offLabelColor = freezed,
    Object? splashRadius = freezed,
    Object? dragStartBehavior = null,
    Object? overlayColor = freezed,
    Object? thumbColor = freezed,
    Object? trackColor = freezed,
    Object? materialTapTargetSize = freezed,
    Object? trackOutlineColor = freezed,
    Object? trackOutlineWidth = freezed,
    Object? thumbIcon = freezed,
    Object? inactiveThumbImage = freezed,
    Object? activeThumbImage = freezed,
    Object? applyTheme = freezed,
    Object? applyCupertinoTheme = freezed,
  }) {
    return _then(_self.copyWith(
      switchType: null == switchType
          ? _self.switchType
          : switchType // ignore: cast_nullable_to_non_nullable
              as StacSwitchType,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onChanged: freezed == onChanged
          ? _self.onChanged
          : onChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      activeColor: freezed == activeColor
          ? _self.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      activeTrackColor: freezed == activeTrackColor
          ? _self.activeTrackColor
          : activeTrackColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      inactiveThumbColor: freezed == inactiveThumbColor
          ? _self.inactiveThumbColor
          : inactiveThumbColor // ignore: cast_nullable_to_non_nullable
              as String?,
      inactiveTrackColor: freezed == inactiveTrackColor
          ? _self.inactiveTrackColor
          : inactiveTrackColor // ignore: cast_nullable_to_non_nullable
              as String?,
      onLabelColor: freezed == onLabelColor
          ? _self.onLabelColor
          : onLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      offLabelColor: freezed == offLabelColor
          ? _self.offLabelColor
          : offLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius: freezed == splashRadius
          ? _self.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      dragStartBehavior: null == dragStartBehavior
          ? _self.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      thumbColor: freezed == thumbColor
          ? _self.thumbColor
          : thumbColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      trackColor: freezed == trackColor
          ? _self.trackColor
          : trackColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      trackOutlineColor: freezed == trackOutlineColor
          ? _self.trackOutlineColor
          : trackOutlineColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      trackOutlineWidth: freezed == trackOutlineWidth
          ? _self.trackOutlineWidth
          : trackOutlineWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      thumbIcon: freezed == thumbIcon
          ? _self.thumbIcon
          : thumbIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      inactiveThumbImage: freezed == inactiveThumbImage
          ? _self.inactiveThumbImage
          : inactiveThumbImage // ignore: cast_nullable_to_non_nullable
              as String?,
      activeThumbImage: freezed == activeThumbImage
          ? _self.activeThumbImage
          : activeThumbImage // ignore: cast_nullable_to_non_nullable
              as String?,
      applyTheme: freezed == applyTheme
          ? _self.applyTheme
          : applyTheme // ignore: cast_nullable_to_non_nullable
              as bool?,
      applyCupertinoTheme: freezed == applyCupertinoTheme
          ? _self.applyCupertinoTheme
          : applyCupertinoTheme // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get overlayColor {
    if (_self.overlayColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.overlayColor!, (value) {
      return _then(_self.copyWith(overlayColor: value));
    });
  }

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get thumbColor {
    if (_self.thumbColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.thumbColor!, (value) {
      return _then(_self.copyWith(thumbColor: value));
    });
  }

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get trackColor {
    if (_self.trackColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.trackColor!, (value) {
      return _then(_self.copyWith(trackColor: value));
    });
  }

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get trackOutlineColor {
    if (_self.trackOutlineColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.trackOutlineColor!, (value) {
      return _then(_self.copyWith(trackOutlineColor: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacSwitch implements StacSwitch {
  const _StacSwitch(
      {this.switchType = StacSwitchType.material,
      this.value = false,
      final Map<String, dynamic>? onChanged,
      this.autofocus = false,
      this.activeColor,
      this.activeTrackColor,
      this.focusColor,
      this.hoverColor,
      this.inactiveThumbColor,
      this.inactiveTrackColor,
      this.onLabelColor,
      this.offLabelColor,
      this.splashRadius,
      this.dragStartBehavior = DragStartBehavior.start,
      this.overlayColor,
      this.thumbColor,
      this.trackColor,
      this.materialTapTargetSize,
      this.trackOutlineColor,
      this.trackOutlineWidth,
      final Map<String, dynamic>? thumbIcon,
      this.inactiveThumbImage,
      this.activeThumbImage,
      this.applyTheme,
      this.applyCupertinoTheme})
      : _onChanged = onChanged,
        _thumbIcon = thumbIcon;
  factory _StacSwitch.fromJson(Map<String, dynamic> json) =>
      _$StacSwitchFromJson(json);

  @override
  @JsonKey()
  final StacSwitchType switchType;
  @override
  @JsonKey()
  final dynamic value;
  final Map<String, dynamic>? _onChanged;
  @override
  Map<String, dynamic>? get onChanged {
    final value = _onChanged;
    if (value == null) return null;
    if (_onChanged is EqualUnmodifiableMapView) return _onChanged;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool autofocus;
  @override
  final String? activeColor;
  @override
  final String? activeTrackColor;
  @override
  final String? focusColor;
  @override
  final String? hoverColor;
  @override
  final String? inactiveThumbColor;
  @override
  final String? inactiveTrackColor;
  @override
  final String? onLabelColor;
  @override
  final String? offLabelColor;
  @override
  final double? splashRadius;
  @override
  @JsonKey()
  final DragStartBehavior dragStartBehavior;
  @override
  final StacMaterialColor? overlayColor;
  @override
  final StacMaterialColor? thumbColor;
  @override
  final StacMaterialColor? trackColor;
  @override
  final MaterialTapTargetSize? materialTapTargetSize;
  @override
  final StacMaterialColor? trackOutlineColor;
  @override
  final double? trackOutlineWidth;
  final Map<String, dynamic>? _thumbIcon;
  @override
  Map<String, dynamic>? get thumbIcon {
    final value = _thumbIcon;
    if (value == null) return null;
    if (_thumbIcon is EqualUnmodifiableMapView) return _thumbIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? inactiveThumbImage;
  @override
  final String? activeThumbImage;
  @override
  final bool? applyTheme;
  @override
  final bool? applyCupertinoTheme;

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSwitchCopyWith<_StacSwitch> get copyWith =>
      __$StacSwitchCopyWithImpl<_StacSwitch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSwitchToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSwitch &&
            (identical(other.switchType, switchType) ||
                other.switchType == switchType) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other._onChanged, _onChanged) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.activeColor, activeColor) ||
                other.activeColor == activeColor) &&
            (identical(other.activeTrackColor, activeTrackColor) ||
                other.activeTrackColor == activeTrackColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.inactiveThumbColor, inactiveThumbColor) ||
                other.inactiveThumbColor == inactiveThumbColor) &&
            (identical(other.inactiveTrackColor, inactiveTrackColor) ||
                other.inactiveTrackColor == inactiveTrackColor) &&
            (identical(other.onLabelColor, onLabelColor) ||
                other.onLabelColor == onLabelColor) &&
            (identical(other.offLabelColor, offLabelColor) ||
                other.offLabelColor == offLabelColor) &&
            (identical(other.splashRadius, splashRadius) ||
                other.splashRadius == splashRadius) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.thumbColor, thumbColor) ||
                other.thumbColor == thumbColor) &&
            (identical(other.trackColor, trackColor) ||
                other.trackColor == trackColor) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.trackOutlineColor, trackOutlineColor) ||
                other.trackOutlineColor == trackOutlineColor) &&
            (identical(other.trackOutlineWidth, trackOutlineWidth) ||
                other.trackOutlineWidth == trackOutlineWidth) &&
            const DeepCollectionEquality()
                .equals(other._thumbIcon, _thumbIcon) &&
            (identical(other.inactiveThumbImage, inactiveThumbImage) ||
                other.inactiveThumbImage == inactiveThumbImage) &&
            (identical(other.activeThumbImage, activeThumbImage) ||
                other.activeThumbImage == activeThumbImage) &&
            (identical(other.applyTheme, applyTheme) ||
                other.applyTheme == applyTheme) &&
            (identical(other.applyCupertinoTheme, applyCupertinoTheme) ||
                other.applyCupertinoTheme == applyCupertinoTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        switchType,
        const DeepCollectionEquality().hash(value),
        const DeepCollectionEquality().hash(_onChanged),
        autofocus,
        activeColor,
        activeTrackColor,
        focusColor,
        hoverColor,
        inactiveThumbColor,
        inactiveTrackColor,
        onLabelColor,
        offLabelColor,
        splashRadius,
        dragStartBehavior,
        overlayColor,
        thumbColor,
        trackColor,
        materialTapTargetSize,
        trackOutlineColor,
        trackOutlineWidth,
        const DeepCollectionEquality().hash(_thumbIcon),
        inactiveThumbImage,
        activeThumbImage,
        applyTheme,
        applyCupertinoTheme
      ]);

  @override
  String toString() {
    return 'StacSwitch(switchType: $switchType, value: $value, onChanged: $onChanged, autofocus: $autofocus, activeColor: $activeColor, activeTrackColor: $activeTrackColor, focusColor: $focusColor, hoverColor: $hoverColor, inactiveThumbColor: $inactiveThumbColor, inactiveTrackColor: $inactiveTrackColor, onLabelColor: $onLabelColor, offLabelColor: $offLabelColor, splashRadius: $splashRadius, dragStartBehavior: $dragStartBehavior, overlayColor: $overlayColor, thumbColor: $thumbColor, trackColor: $trackColor, materialTapTargetSize: $materialTapTargetSize, trackOutlineColor: $trackOutlineColor, trackOutlineWidth: $trackOutlineWidth, thumbIcon: $thumbIcon, inactiveThumbImage: $inactiveThumbImage, activeThumbImage: $activeThumbImage, applyTheme: $applyTheme, applyCupertinoTheme: $applyCupertinoTheme)';
  }
}

/// @nodoc
abstract mixin class _$StacSwitchCopyWith<$Res>
    implements $StacSwitchCopyWith<$Res> {
  factory _$StacSwitchCopyWith(
          _StacSwitch value, $Res Function(_StacSwitch) _then) =
      __$StacSwitchCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacSwitchType switchType,
      dynamic value,
      Map<String, dynamic>? onChanged,
      bool autofocus,
      String? activeColor,
      String? activeTrackColor,
      String? focusColor,
      String? hoverColor,
      String? inactiveThumbColor,
      String? inactiveTrackColor,
      String? onLabelColor,
      String? offLabelColor,
      double? splashRadius,
      DragStartBehavior dragStartBehavior,
      StacMaterialColor? overlayColor,
      StacMaterialColor? thumbColor,
      StacMaterialColor? trackColor,
      MaterialTapTargetSize? materialTapTargetSize,
      StacMaterialColor? trackOutlineColor,
      double? trackOutlineWidth,
      Map<String, dynamic>? thumbIcon,
      String? inactiveThumbImage,
      String? activeThumbImage,
      bool? applyTheme,
      bool? applyCupertinoTheme});

  @override
  $StacMaterialColorCopyWith<$Res>? get overlayColor;
  @override
  $StacMaterialColorCopyWith<$Res>? get thumbColor;
  @override
  $StacMaterialColorCopyWith<$Res>? get trackColor;
  @override
  $StacMaterialColorCopyWith<$Res>? get trackOutlineColor;
}

/// @nodoc
class __$StacSwitchCopyWithImpl<$Res> implements _$StacSwitchCopyWith<$Res> {
  __$StacSwitchCopyWithImpl(this._self, this._then);

  final _StacSwitch _self;
  final $Res Function(_StacSwitch) _then;

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? switchType = null,
    Object? value = freezed,
    Object? onChanged = freezed,
    Object? autofocus = null,
    Object? activeColor = freezed,
    Object? activeTrackColor = freezed,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? inactiveThumbColor = freezed,
    Object? inactiveTrackColor = freezed,
    Object? onLabelColor = freezed,
    Object? offLabelColor = freezed,
    Object? splashRadius = freezed,
    Object? dragStartBehavior = null,
    Object? overlayColor = freezed,
    Object? thumbColor = freezed,
    Object? trackColor = freezed,
    Object? materialTapTargetSize = freezed,
    Object? trackOutlineColor = freezed,
    Object? trackOutlineWidth = freezed,
    Object? thumbIcon = freezed,
    Object? inactiveThumbImage = freezed,
    Object? activeThumbImage = freezed,
    Object? applyTheme = freezed,
    Object? applyCupertinoTheme = freezed,
  }) {
    return _then(_StacSwitch(
      switchType: null == switchType
          ? _self.switchType
          : switchType // ignore: cast_nullable_to_non_nullable
              as StacSwitchType,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onChanged: freezed == onChanged
          ? _self._onChanged
          : onChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      activeColor: freezed == activeColor
          ? _self.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      activeTrackColor: freezed == activeTrackColor
          ? _self.activeTrackColor
          : activeTrackColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      inactiveThumbColor: freezed == inactiveThumbColor
          ? _self.inactiveThumbColor
          : inactiveThumbColor // ignore: cast_nullable_to_non_nullable
              as String?,
      inactiveTrackColor: freezed == inactiveTrackColor
          ? _self.inactiveTrackColor
          : inactiveTrackColor // ignore: cast_nullable_to_non_nullable
              as String?,
      onLabelColor: freezed == onLabelColor
          ? _self.onLabelColor
          : onLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      offLabelColor: freezed == offLabelColor
          ? _self.offLabelColor
          : offLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius: freezed == splashRadius
          ? _self.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      dragStartBehavior: null == dragStartBehavior
          ? _self.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      thumbColor: freezed == thumbColor
          ? _self.thumbColor
          : thumbColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      trackColor: freezed == trackColor
          ? _self.trackColor
          : trackColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      trackOutlineColor: freezed == trackOutlineColor
          ? _self.trackOutlineColor
          : trackOutlineColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      trackOutlineWidth: freezed == trackOutlineWidth
          ? _self.trackOutlineWidth
          : trackOutlineWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      thumbIcon: freezed == thumbIcon
          ? _self._thumbIcon
          : thumbIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      inactiveThumbImage: freezed == inactiveThumbImage
          ? _self.inactiveThumbImage
          : inactiveThumbImage // ignore: cast_nullable_to_non_nullable
              as String?,
      activeThumbImage: freezed == activeThumbImage
          ? _self.activeThumbImage
          : activeThumbImage // ignore: cast_nullable_to_non_nullable
              as String?,
      applyTheme: freezed == applyTheme
          ? _self.applyTheme
          : applyTheme // ignore: cast_nullable_to_non_nullable
              as bool?,
      applyCupertinoTheme: freezed == applyCupertinoTheme
          ? _self.applyCupertinoTheme
          : applyCupertinoTheme // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get overlayColor {
    if (_self.overlayColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.overlayColor!, (value) {
      return _then(_self.copyWith(overlayColor: value));
    });
  }

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get thumbColor {
    if (_self.thumbColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.thumbColor!, (value) {
      return _then(_self.copyWith(thumbColor: value));
    });
  }

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get trackColor {
    if (_self.trackColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.trackColor!, (value) {
      return _then(_self.copyWith(trackColor: value));
    });
  }

  /// Create a copy of StacSwitch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get trackOutlineColor {
    if (_self.trackOutlineColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.trackOutlineColor!, (value) {
      return _then(_self.copyWith(trackOutlineColor: value));
    });
  }
}

// dart format on
