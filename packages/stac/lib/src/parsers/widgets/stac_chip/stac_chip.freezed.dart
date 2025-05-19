// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_chip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacChip {
  Map<String, dynamic>? get avatar;
  Map<String, dynamic> get label;
  StacTextStyle? get labelStyle;
  StacEdgeInsets? get labelPadding;
  Map<String, dynamic>? get deleteIcon;
  Map<String, dynamic>? get onDeleted;
  String? get deleteIconColor;
  String? get deleteButtonTooltipMessage;
  StacBorderSide? get side;
  StacRoundedRectangleBorder? get shape;
  Clip get clipBehavior;
  bool get autofocus;
  String? get color;
  String? get backgroundColor;
  StacEdgeInsets? get padding;
  StacVisualDensity? get visualDensity;
  MaterialTapTargetSize? get materialTapTargetSize;
  StacDouble? get elevation;
  String? get shadowColor;
  String? get surfaceTintColor;
  StacIconThemeData? get iconTheme;
  StacBoxConstraints? get avatarBoxConstraints;
  StacBoxConstraints? get deleteIconBoxConstraints;

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacChipCopyWith<StacChip> get copyWith =>
      _$StacChipCopyWithImpl<StacChip>(this as StacChip, _$identity);

  /// Serializes this StacChip to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacChip &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            (identical(other.labelStyle, labelStyle) ||
                other.labelStyle == labelStyle) &&
            (identical(other.labelPadding, labelPadding) ||
                other.labelPadding == labelPadding) &&
            const DeepCollectionEquality()
                .equals(other.deleteIcon, deleteIcon) &&
            const DeepCollectionEquality().equals(other.onDeleted, onDeleted) &&
            (identical(other.deleteIconColor, deleteIconColor) ||
                other.deleteIconColor == deleteIconColor) &&
            (identical(other.deleteButtonTooltipMessage,
                    deleteButtonTooltipMessage) ||
                other.deleteButtonTooltipMessage ==
                    deleteButtonTooltipMessage) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.visualDensity, visualDensity) ||
                other.visualDensity == visualDensity) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.iconTheme, iconTheme) ||
                other.iconTheme == iconTheme) &&
            (identical(other.avatarBoxConstraints, avatarBoxConstraints) ||
                other.avatarBoxConstraints == avatarBoxConstraints) &&
            (identical(
                    other.deleteIconBoxConstraints, deleteIconBoxConstraints) ||
                other.deleteIconBoxConstraints == deleteIconBoxConstraints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(avatar),
        const DeepCollectionEquality().hash(label),
        labelStyle,
        labelPadding,
        const DeepCollectionEquality().hash(deleteIcon),
        const DeepCollectionEquality().hash(onDeleted),
        deleteIconColor,
        deleteButtonTooltipMessage,
        side,
        shape,
        clipBehavior,
        autofocus,
        color,
        backgroundColor,
        padding,
        visualDensity,
        materialTapTargetSize,
        elevation,
        shadowColor,
        surfaceTintColor,
        iconTheme,
        avatarBoxConstraints,
        deleteIconBoxConstraints
      ]);

  @override
  String toString() {
    return 'StacChip(avatar: $avatar, label: $label, labelStyle: $labelStyle, labelPadding: $labelPadding, deleteIcon: $deleteIcon, onDeleted: $onDeleted, deleteIconColor: $deleteIconColor, deleteButtonTooltipMessage: $deleteButtonTooltipMessage, side: $side, shape: $shape, clipBehavior: $clipBehavior, autofocus: $autofocus, color: $color, backgroundColor: $backgroundColor, padding: $padding, visualDensity: $visualDensity, materialTapTargetSize: $materialTapTargetSize, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, iconTheme: $iconTheme, avatarBoxConstraints: $avatarBoxConstraints, deleteIconBoxConstraints: $deleteIconBoxConstraints)';
  }
}

/// @nodoc
abstract mixin class $StacChipCopyWith<$Res> {
  factory $StacChipCopyWith(StacChip value, $Res Function(StacChip) _then) =
      _$StacChipCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? avatar,
      Map<String, dynamic> label,
      StacTextStyle? labelStyle,
      StacEdgeInsets? labelPadding,
      Map<String, dynamic>? deleteIcon,
      Map<String, dynamic>? onDeleted,
      String? deleteIconColor,
      String? deleteButtonTooltipMessage,
      StacBorderSide? side,
      StacRoundedRectangleBorder? shape,
      Clip clipBehavior,
      bool autofocus,
      String? color,
      String? backgroundColor,
      StacEdgeInsets? padding,
      StacVisualDensity? visualDensity,
      MaterialTapTargetSize? materialTapTargetSize,
      StacDouble? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacIconThemeData? iconTheme,
      StacBoxConstraints? avatarBoxConstraints,
      StacBoxConstraints? deleteIconBoxConstraints});

  $StacTextStyleCopyWith<$Res>? get labelStyle;
  $StacEdgeInsetsCopyWith<$Res>? get labelPadding;
  $StacBorderSideCopyWith<$Res>? get side;
  $StacRoundedRectangleBorderCopyWith<$Res>? get shape;
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  $StacVisualDensityCopyWith<$Res>? get visualDensity;
  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
  $StacBoxConstraintsCopyWith<$Res>? get avatarBoxConstraints;
  $StacBoxConstraintsCopyWith<$Res>? get deleteIconBoxConstraints;
}

/// @nodoc
class _$StacChipCopyWithImpl<$Res> implements $StacChipCopyWith<$Res> {
  _$StacChipCopyWithImpl(this._self, this._then);

  final StacChip _self;
  final $Res Function(StacChip) _then;

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? label = null,
    Object? labelStyle = freezed,
    Object? labelPadding = freezed,
    Object? deleteIcon = freezed,
    Object? onDeleted = freezed,
    Object? deleteIconColor = freezed,
    Object? deleteButtonTooltipMessage = freezed,
    Object? side = freezed,
    Object? shape = freezed,
    Object? clipBehavior = null,
    Object? autofocus = null,
    Object? color = freezed,
    Object? backgroundColor = freezed,
    Object? padding = freezed,
    Object? visualDensity = freezed,
    Object? materialTapTargetSize = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? iconTheme = freezed,
    Object? avatarBoxConstraints = freezed,
    Object? deleteIconBoxConstraints = freezed,
  }) {
    return _then(_self.copyWith(
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      labelStyle: freezed == labelStyle
          ? _self.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      labelPadding: freezed == labelPadding
          ? _self.labelPadding
          : labelPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      deleteIcon: freezed == deleteIcon
          ? _self.deleteIcon
          : deleteIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onDeleted: freezed == onDeleted
          ? _self.onDeleted
          : onDeleted // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      deleteIconColor: freezed == deleteIconColor
          ? _self.deleteIconColor
          : deleteIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteButtonTooltipMessage: freezed == deleteButtonTooltipMessage
          ? _self.deleteButtonTooltipMessage
          : deleteButtonTooltipMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      side: freezed == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacRoundedRectangleBorder?,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      visualDensity: freezed == visualDensity
          ? _self.visualDensity
          : visualDensity // ignore: cast_nullable_to_non_nullable
              as StacVisualDensity?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
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
      avatarBoxConstraints: freezed == avatarBoxConstraints
          ? _self.avatarBoxConstraints
          : avatarBoxConstraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      deleteIconBoxConstraints: freezed == deleteIconBoxConstraints
          ? _self.deleteIconBoxConstraints
          : deleteIconBoxConstraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
    ));
  }

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get labelStyle {
    if (_self.labelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.labelStyle!, (value) {
      return _then(_self.copyWith(labelStyle: value));
    });
  }

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get labelPadding {
    if (_self.labelPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.labelPadding!, (value) {
      return _then(_self.copyWith(labelPadding: value));
    });
  }

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res>? get side {
    if (_self.side == null) {
      return null;
    }

    return $StacBorderSideCopyWith<$Res>(_self.side!, (value) {
      return _then(_self.copyWith(side: value));
    });
  }

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRoundedRectangleBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacRoundedRectangleBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacChip
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

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacVisualDensityCopyWith<$Res>? get visualDensity {
    if (_self.visualDensity == null) {
      return null;
    }

    return $StacVisualDensityCopyWith<$Res>(_self.visualDensity!, (value) {
      return _then(_self.copyWith(visualDensity: value));
    });
  }

  /// Create a copy of StacChip
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

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get avatarBoxConstraints {
    if (_self.avatarBoxConstraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.avatarBoxConstraints!,
        (value) {
      return _then(_self.copyWith(avatarBoxConstraints: value));
    });
  }

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get deleteIconBoxConstraints {
    if (_self.deleteIconBoxConstraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.deleteIconBoxConstraints!,
        (value) {
      return _then(_self.copyWith(deleteIconBoxConstraints: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacChip implements StacChip {
  const _StacChip(
      {final Map<String, dynamic>? avatar,
      required final Map<String, dynamic> label,
      this.labelStyle,
      this.labelPadding,
      final Map<String, dynamic>? deleteIcon,
      final Map<String, dynamic>? onDeleted,
      this.deleteIconColor,
      this.deleteButtonTooltipMessage,
      this.side,
      this.shape,
      this.clipBehavior = Clip.none,
      this.autofocus = false,
      this.color,
      this.backgroundColor,
      this.padding,
      this.visualDensity,
      this.materialTapTargetSize,
      this.elevation,
      this.shadowColor,
      this.surfaceTintColor,
      this.iconTheme,
      this.avatarBoxConstraints,
      this.deleteIconBoxConstraints})
      : _avatar = avatar,
        _label = label,
        _deleteIcon = deleteIcon,
        _onDeleted = onDeleted;
  factory _StacChip.fromJson(Map<String, dynamic> json) =>
      _$StacChipFromJson(json);

  final Map<String, dynamic>? _avatar;
  @override
  Map<String, dynamic>? get avatar {
    final value = _avatar;
    if (value == null) return null;
    if (_avatar is EqualUnmodifiableMapView) return _avatar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic> _label;
  @override
  Map<String, dynamic> get label {
    if (_label is EqualUnmodifiableMapView) return _label;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_label);
  }

  @override
  final StacTextStyle? labelStyle;
  @override
  final StacEdgeInsets? labelPadding;
  final Map<String, dynamic>? _deleteIcon;
  @override
  Map<String, dynamic>? get deleteIcon {
    final value = _deleteIcon;
    if (value == null) return null;
    if (_deleteIcon is EqualUnmodifiableMapView) return _deleteIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onDeleted;
  @override
  Map<String, dynamic>? get onDeleted {
    final value = _onDeleted;
    if (value == null) return null;
    if (_onDeleted is EqualUnmodifiableMapView) return _onDeleted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? deleteIconColor;
  @override
  final String? deleteButtonTooltipMessage;
  @override
  final StacBorderSide? side;
  @override
  final StacRoundedRectangleBorder? shape;
  @override
  @JsonKey()
  final Clip clipBehavior;
  @override
  @JsonKey()
  final bool autofocus;
  @override
  final String? color;
  @override
  final String? backgroundColor;
  @override
  final StacEdgeInsets? padding;
  @override
  final StacVisualDensity? visualDensity;
  @override
  final MaterialTapTargetSize? materialTapTargetSize;
  @override
  final StacDouble? elevation;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final StacIconThemeData? iconTheme;
  @override
  final StacBoxConstraints? avatarBoxConstraints;
  @override
  final StacBoxConstraints? deleteIconBoxConstraints;

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacChipCopyWith<_StacChip> get copyWith =>
      __$StacChipCopyWithImpl<_StacChip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacChipToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacChip &&
            const DeepCollectionEquality().equals(other._avatar, _avatar) &&
            const DeepCollectionEquality().equals(other._label, _label) &&
            (identical(other.labelStyle, labelStyle) ||
                other.labelStyle == labelStyle) &&
            (identical(other.labelPadding, labelPadding) ||
                other.labelPadding == labelPadding) &&
            const DeepCollectionEquality()
                .equals(other._deleteIcon, _deleteIcon) &&
            const DeepCollectionEquality()
                .equals(other._onDeleted, _onDeleted) &&
            (identical(other.deleteIconColor, deleteIconColor) ||
                other.deleteIconColor == deleteIconColor) &&
            (identical(other.deleteButtonTooltipMessage,
                    deleteButtonTooltipMessage) ||
                other.deleteButtonTooltipMessage ==
                    deleteButtonTooltipMessage) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.visualDensity, visualDensity) ||
                other.visualDensity == visualDensity) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.iconTheme, iconTheme) ||
                other.iconTheme == iconTheme) &&
            (identical(other.avatarBoxConstraints, avatarBoxConstraints) ||
                other.avatarBoxConstraints == avatarBoxConstraints) &&
            (identical(
                    other.deleteIconBoxConstraints, deleteIconBoxConstraints) ||
                other.deleteIconBoxConstraints == deleteIconBoxConstraints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_avatar),
        const DeepCollectionEquality().hash(_label),
        labelStyle,
        labelPadding,
        const DeepCollectionEquality().hash(_deleteIcon),
        const DeepCollectionEquality().hash(_onDeleted),
        deleteIconColor,
        deleteButtonTooltipMessage,
        side,
        shape,
        clipBehavior,
        autofocus,
        color,
        backgroundColor,
        padding,
        visualDensity,
        materialTapTargetSize,
        elevation,
        shadowColor,
        surfaceTintColor,
        iconTheme,
        avatarBoxConstraints,
        deleteIconBoxConstraints
      ]);

  @override
  String toString() {
    return 'StacChip(avatar: $avatar, label: $label, labelStyle: $labelStyle, labelPadding: $labelPadding, deleteIcon: $deleteIcon, onDeleted: $onDeleted, deleteIconColor: $deleteIconColor, deleteButtonTooltipMessage: $deleteButtonTooltipMessage, side: $side, shape: $shape, clipBehavior: $clipBehavior, autofocus: $autofocus, color: $color, backgroundColor: $backgroundColor, padding: $padding, visualDensity: $visualDensity, materialTapTargetSize: $materialTapTargetSize, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, iconTheme: $iconTheme, avatarBoxConstraints: $avatarBoxConstraints, deleteIconBoxConstraints: $deleteIconBoxConstraints)';
  }
}

/// @nodoc
abstract mixin class _$StacChipCopyWith<$Res>
    implements $StacChipCopyWith<$Res> {
  factory _$StacChipCopyWith(_StacChip value, $Res Function(_StacChip) _then) =
      __$StacChipCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? avatar,
      Map<String, dynamic> label,
      StacTextStyle? labelStyle,
      StacEdgeInsets? labelPadding,
      Map<String, dynamic>? deleteIcon,
      Map<String, dynamic>? onDeleted,
      String? deleteIconColor,
      String? deleteButtonTooltipMessage,
      StacBorderSide? side,
      StacRoundedRectangleBorder? shape,
      Clip clipBehavior,
      bool autofocus,
      String? color,
      String? backgroundColor,
      StacEdgeInsets? padding,
      StacVisualDensity? visualDensity,
      MaterialTapTargetSize? materialTapTargetSize,
      StacDouble? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacIconThemeData? iconTheme,
      StacBoxConstraints? avatarBoxConstraints,
      StacBoxConstraints? deleteIconBoxConstraints});

  @override
  $StacTextStyleCopyWith<$Res>? get labelStyle;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get labelPadding;
  @override
  $StacBorderSideCopyWith<$Res>? get side;
  @override
  $StacRoundedRectangleBorderCopyWith<$Res>? get shape;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  @override
  $StacVisualDensityCopyWith<$Res>? get visualDensity;
  @override
  $StacIconThemeDataCopyWith<$Res>? get iconTheme;
  @override
  $StacBoxConstraintsCopyWith<$Res>? get avatarBoxConstraints;
  @override
  $StacBoxConstraintsCopyWith<$Res>? get deleteIconBoxConstraints;
}

/// @nodoc
class __$StacChipCopyWithImpl<$Res> implements _$StacChipCopyWith<$Res> {
  __$StacChipCopyWithImpl(this._self, this._then);

  final _StacChip _self;
  final $Res Function(_StacChip) _then;

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? avatar = freezed,
    Object? label = null,
    Object? labelStyle = freezed,
    Object? labelPadding = freezed,
    Object? deleteIcon = freezed,
    Object? onDeleted = freezed,
    Object? deleteIconColor = freezed,
    Object? deleteButtonTooltipMessage = freezed,
    Object? side = freezed,
    Object? shape = freezed,
    Object? clipBehavior = null,
    Object? autofocus = null,
    Object? color = freezed,
    Object? backgroundColor = freezed,
    Object? padding = freezed,
    Object? visualDensity = freezed,
    Object? materialTapTargetSize = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? iconTheme = freezed,
    Object? avatarBoxConstraints = freezed,
    Object? deleteIconBoxConstraints = freezed,
  }) {
    return _then(_StacChip(
      avatar: freezed == avatar
          ? _self._avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      label: null == label
          ? _self._label
          : label // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      labelStyle: freezed == labelStyle
          ? _self.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      labelPadding: freezed == labelPadding
          ? _self.labelPadding
          : labelPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      deleteIcon: freezed == deleteIcon
          ? _self._deleteIcon
          : deleteIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onDeleted: freezed == onDeleted
          ? _self._onDeleted
          : onDeleted // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      deleteIconColor: freezed == deleteIconColor
          ? _self.deleteIconColor
          : deleteIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteButtonTooltipMessage: freezed == deleteButtonTooltipMessage
          ? _self.deleteButtonTooltipMessage
          : deleteButtonTooltipMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      side: freezed == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacRoundedRectangleBorder?,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      visualDensity: freezed == visualDensity
          ? _self.visualDensity
          : visualDensity // ignore: cast_nullable_to_non_nullable
              as StacVisualDensity?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
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
      avatarBoxConstraints: freezed == avatarBoxConstraints
          ? _self.avatarBoxConstraints
          : avatarBoxConstraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
      deleteIconBoxConstraints: freezed == deleteIconBoxConstraints
          ? _self.deleteIconBoxConstraints
          : deleteIconBoxConstraints // ignore: cast_nullable_to_non_nullable
              as StacBoxConstraints?,
    ));
  }

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get labelStyle {
    if (_self.labelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.labelStyle!, (value) {
      return _then(_self.copyWith(labelStyle: value));
    });
  }

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get labelPadding {
    if (_self.labelPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.labelPadding!, (value) {
      return _then(_self.copyWith(labelPadding: value));
    });
  }

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res>? get side {
    if (_self.side == null) {
      return null;
    }

    return $StacBorderSideCopyWith<$Res>(_self.side!, (value) {
      return _then(_self.copyWith(side: value));
    });
  }

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRoundedRectangleBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacRoundedRectangleBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacChip
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

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacVisualDensityCopyWith<$Res>? get visualDensity {
    if (_self.visualDensity == null) {
      return null;
    }

    return $StacVisualDensityCopyWith<$Res>(_self.visualDensity!, (value) {
      return _then(_self.copyWith(visualDensity: value));
    });
  }

  /// Create a copy of StacChip
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

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get avatarBoxConstraints {
    if (_self.avatarBoxConstraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.avatarBoxConstraints!,
        (value) {
      return _then(_self.copyWith(avatarBoxConstraints: value));
    });
  }

  /// Create a copy of StacChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxConstraintsCopyWith<$Res>? get deleteIconBoxConstraints {
    if (_self.deleteIconBoxConstraints == null) {
      return null;
    }

    return $StacBoxConstraintsCopyWith<$Res>(_self.deleteIconBoxConstraints!,
        (value) {
      return _then(_self.copyWith(deleteIconBoxConstraints: value));
    });
  }
}

// dart format on
