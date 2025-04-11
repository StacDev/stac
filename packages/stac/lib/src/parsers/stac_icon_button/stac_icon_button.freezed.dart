// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_icon_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacIconButton {
  double? get iconSize;
  StacEdgeInsets? get padding;
  StacAlignment? get alignment;
  double? get splashRadius;
  String? get color;
  String? get focusColor;
  String? get hoverColor;
  String? get highlightColor;
  String? get splashColor;
  String? get disabledColor;
  Map<String, dynamic>? get onPressed;
  bool get autofocus;
  String? get tooltip;
  bool? get enableFeedback;
  StacBoxConstraints? get constraints;
  StacButtonStyle? get style;
  bool? get isSelected;
  Map<String, dynamic>? get selectedIcon;
  Map<String, dynamic>? get icon;

  /// Create a copy of StacIconButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacIconButtonCopyWith<StacIconButton> get copyWith =>
      _$StacIconButtonCopyWithImpl<StacIconButton>(
          this as StacIconButton, _$identity);

  /// Serializes this StacIconButton to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacIconButton &&
            (identical(other.iconSize, iconSize) ||
                other.iconSize == iconSize) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.splashRadius, splashRadius) ||
                other.splashRadius == splashRadius) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.highlightColor, highlightColor) ||
                other.highlightColor == highlightColor) &&
            (identical(other.splashColor, splashColor) ||
                other.splashColor == splashColor) &&
            (identical(other.disabledColor, disabledColor) ||
                other.disabledColor == disabledColor) &&
            const DeepCollectionEquality().equals(other.onPressed, onPressed) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            const DeepCollectionEquality()
                .equals(other.selectedIcon, selectedIcon) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        iconSize,
        padding,
        alignment,
        splashRadius,
        color,
        focusColor,
        hoverColor,
        highlightColor,
        splashColor,
        disabledColor,
        const DeepCollectionEquality().hash(onPressed),
        autofocus,
        tooltip,
        enableFeedback,
        constraints,
        style,
        isSelected,
        const DeepCollectionEquality().hash(selectedIcon),
        const DeepCollectionEquality().hash(icon)
      ]);

  @override
  String toString() {
    return 'StacIconButton(iconSize: $iconSize, padding: $padding, alignment: $alignment, splashRadius: $splashRadius, color: $color, focusColor: $focusColor, hoverColor: $hoverColor, highlightColor: $highlightColor, splashColor: $splashColor, disabledColor: $disabledColor, onPressed: $onPressed, autofocus: $autofocus, tooltip: $tooltip, enableFeedback: $enableFeedback, constraints: $constraints, style: $style, isSelected: $isSelected, selectedIcon: $selectedIcon, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class $StacIconButtonCopyWith<$Res> {
  factory $StacIconButtonCopyWith(
          StacIconButton value, $Res Function(StacIconButton) _then) =
      _$StacIconButtonCopyWithImpl;
  @useResult
  $Res call(
      {double? iconSize,
      StacEdgeInsets? padding,
      StacAlignment? alignment,
      double? splashRadius,
      String? color,
      String? focusColor,
      String? hoverColor,
      String? highlightColor,
      String? splashColor,
      String? disabledColor,
      Map<String, dynamic>? onPressed,
      bool autofocus,
      String? tooltip,
      bool? enableFeedback,
      StacBoxConstraints? constraints,
      StacButtonStyle? style,
      bool? isSelected,
      Map<String, dynamic>? selectedIcon,
      Map<String, dynamic>? icon});

  $StacEdgeInsetsCopyWith<$Res>? get padding;
  $StacBoxConstraintsCopyWith<$Res>? get constraints;
  $StacButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$StacIconButtonCopyWithImpl<$Res>
    implements $StacIconButtonCopyWith<$Res> {
  _$StacIconButtonCopyWithImpl(this._self, this._then);

  final StacIconButton _self;
  final $Res Function(StacIconButton) _then;

  /// Create a copy of StacIconButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconSize = freezed,
    Object? padding = freezed,
    Object? alignment = freezed,
    Object? splashRadius = freezed,
    Object? color = freezed,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? highlightColor = freezed,
    Object? splashColor = freezed,
    Object? disabledColor = freezed,
    Object? onPressed = freezed,
    Object? autofocus = null,
    Object? tooltip = freezed,
    Object? enableFeedback = freezed,
    Object? constraints = freezed,
    Object? style = freezed,
    Object? isSelected = freezed,
    Object? selectedIcon = freezed,
    Object? icon = freezed,
  }) {
    return _then(_self.copyWith(
      iconSize: freezed == iconSize
          ? _self.iconSize
          : iconSize // ignore: cast_nullable_to_non_nullable
              as double?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment?,
      splashRadius: freezed == splashRadius
          ? _self.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightColor: freezed == highlightColor
          ? _self.highlightColor
          : highlightColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashColor: freezed == splashColor
          ? _self.splashColor
          : splashColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledColor: freezed == disabledColor
          ? _self.disabledColor
          : disabledColor // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: freezed == onPressed
          ? _self.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      tooltip: freezed == tooltip
          ? _self.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      constraints: freezed == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      isSelected: freezed == isSelected
          ? _self.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedIcon: freezed == selectedIcon
          ? _self.selectedIcon
          : selectedIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacIconButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get padding {
    if (_self.padding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.padding!, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }

  /// Create a copy of StacIconButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.constraints!, (value) {
      return _then(_self.copyWith(constraints: value));
    });
  }

  /// Create a copy of StacIconButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get style {
    if (_self.style == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.style!, (value) {
      return _then(_self.copyWith(style: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacIconButton implements StacIconButton {
  const _StacIconButton(
      {this.iconSize,
      this.padding,
      this.alignment,
      this.splashRadius,
      this.color,
      this.focusColor,
      this.hoverColor,
      this.highlightColor,
      this.splashColor,
      this.disabledColor,
      final Map<String, dynamic>? onPressed,
      this.autofocus = false,
      this.tooltip,
      this.enableFeedback,
      this.constraints,
      this.style,
      this.isSelected,
      final Map<String, dynamic>? selectedIcon,
      final Map<String, dynamic>? icon})
      : _onPressed = onPressed,
        _selectedIcon = selectedIcon,
        _icon = icon;
  factory _StacIconButton.fromJson(Map<String, dynamic> json) =>
      _$StacIconButtonFromJson(json);

  @override
  final double? iconSize;
  @override
  final StacEdgeInsets? padding;
  @override
  final StacAlignment? alignment;
  @override
  final double? splashRadius;
  @override
  final String? color;
  @override
  final String? focusColor;
  @override
  final String? hoverColor;
  @override
  final String? highlightColor;
  @override
  final String? splashColor;
  @override
  final String? disabledColor;
  final Map<String, dynamic>? _onPressed;
  @override
  Map<String, dynamic>? get onPressed {
    final value = _onPressed;
    if (value == null) return null;
    if (_onPressed is EqualUnmodifiableMapView) return _onPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool autofocus;
  @override
  final String? tooltip;
  @override
  final bool? enableFeedback;
  @override
  final StacBoxConstraints? constraints;
  @override
  final StacButtonStyle? style;
  @override
  final bool? isSelected;
  final Map<String, dynamic>? _selectedIcon;
  @override
  Map<String, dynamic>? get selectedIcon {
    final value = _selectedIcon;
    if (value == null) return null;
    if (_selectedIcon is EqualUnmodifiableMapView) return _selectedIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _icon;
  @override
  Map<String, dynamic>? get icon {
    final value = _icon;
    if (value == null) return null;
    if (_icon is EqualUnmodifiableMapView) return _icon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacIconButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacIconButtonCopyWith<_StacIconButton> get copyWith =>
      __$StacIconButtonCopyWithImpl<_StacIconButton>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacIconButtonToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacIconButton &&
            (identical(other.iconSize, iconSize) ||
                other.iconSize == iconSize) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.splashRadius, splashRadius) ||
                other.splashRadius == splashRadius) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.highlightColor, highlightColor) ||
                other.highlightColor == highlightColor) &&
            (identical(other.splashColor, splashColor) ||
                other.splashColor == splashColor) &&
            (identical(other.disabledColor, disabledColor) ||
                other.disabledColor == disabledColor) &&
            const DeepCollectionEquality()
                .equals(other._onPressed, _onPressed) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            const DeepCollectionEquality()
                .equals(other._selectedIcon, _selectedIcon) &&
            const DeepCollectionEquality().equals(other._icon, _icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        iconSize,
        padding,
        alignment,
        splashRadius,
        color,
        focusColor,
        hoverColor,
        highlightColor,
        splashColor,
        disabledColor,
        const DeepCollectionEquality().hash(_onPressed),
        autofocus,
        tooltip,
        enableFeedback,
        constraints,
        style,
        isSelected,
        const DeepCollectionEquality().hash(_selectedIcon),
        const DeepCollectionEquality().hash(_icon)
      ]);

  @override
  String toString() {
    return 'StacIconButton(iconSize: $iconSize, padding: $padding, alignment: $alignment, splashRadius: $splashRadius, color: $color, focusColor: $focusColor, hoverColor: $hoverColor, highlightColor: $highlightColor, splashColor: $splashColor, disabledColor: $disabledColor, onPressed: $onPressed, autofocus: $autofocus, tooltip: $tooltip, enableFeedback: $enableFeedback, constraints: $constraints, style: $style, isSelected: $isSelected, selectedIcon: $selectedIcon, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class _$StacIconButtonCopyWith<$Res>
    implements $StacIconButtonCopyWith<$Res> {
  factory _$StacIconButtonCopyWith(
          _StacIconButton value, $Res Function(_StacIconButton) _then) =
      __$StacIconButtonCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? iconSize,
      StacEdgeInsets? padding,
      StacAlignment? alignment,
      double? splashRadius,
      String? color,
      String? focusColor,
      String? hoverColor,
      String? highlightColor,
      String? splashColor,
      String? disabledColor,
      Map<String, dynamic>? onPressed,
      bool autofocus,
      String? tooltip,
      bool? enableFeedback,
      StacBoxConstraints? constraints,
      StacButtonStyle? style,
      bool? isSelected,
      Map<String, dynamic>? selectedIcon,
      Map<String, dynamic>? icon});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  @override
  $StacBoxConstraintsCopyWith<$Res>? get constraints;
  @override
  $StacButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$StacIconButtonCopyWithImpl<$Res>
    implements _$StacIconButtonCopyWith<$Res> {
  __$StacIconButtonCopyWithImpl(this._self, this._then);

  final _StacIconButton _self;
  final $Res Function(_StacIconButton) _then;

  /// Create a copy of StacIconButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? iconSize = freezed,
    Object? padding = freezed,
    Object? alignment = freezed,
    Object? splashRadius = freezed,
    Object? color = freezed,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? highlightColor = freezed,
    Object? splashColor = freezed,
    Object? disabledColor = freezed,
    Object? onPressed = freezed,
    Object? autofocus = null,
    Object? tooltip = freezed,
    Object? enableFeedback = freezed,
    Object? constraints = freezed,
    Object? style = freezed,
    Object? isSelected = freezed,
    Object? selectedIcon = freezed,
    Object? icon = freezed,
  }) {
    return _then(_StacIconButton(
      iconSize: freezed == iconSize
          ? _self.iconSize
          : iconSize // ignore: cast_nullable_to_non_nullable
              as double?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment?,
      splashRadius: freezed == splashRadius
          ? _self.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightColor: freezed == highlightColor
          ? _self.highlightColor
          : highlightColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashColor: freezed == splashColor
          ? _self.splashColor
          : splashColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledColor: freezed == disabledColor
          ? _self.disabledColor
          : disabledColor // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: freezed == onPressed
          ? _self._onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      tooltip: freezed == tooltip
          ? _self.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      constraints: freezed == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as StacButtonStyle?,
      isSelected: freezed == isSelected
          ? _self.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedIcon: freezed == selectedIcon
          ? _self._selectedIcon
          : selectedIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      icon: freezed == icon
          ? _self._icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacIconButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get padding {
    if (_self.padding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.padding!, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }

  /// Create a copy of StacIconButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get constraints {
    if (_self.constraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.constraints!, (value) {
      return _then(_self.copyWith(constraints: value));
    });
  }

  /// Create a copy of StacIconButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<$Res>? get style {
    if (_self.style == null) {
      return null;
    }

    return $StacButtonStyleCopyWith<$Res>(_self.style!, (value) {
      return _then(_self.copyWith(style: value));
    });
  }
}

// dart format on
