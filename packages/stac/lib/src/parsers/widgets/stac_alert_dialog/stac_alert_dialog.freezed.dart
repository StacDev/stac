// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_alert_dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacAlertDialog {
  Map<String, dynamic>? get icon;
  StacEdgeInsets? get iconPadding;
  String? get iconColor;
  Map<String, dynamic>? get title;
  StacEdgeInsets? get titlePadding;
  StacTextStyle? get titleTextStyle;
  Map<String, dynamic>? get content;
  StacEdgeInsets? get contentPadding;
  StacTextStyle? get contentTextStyle;
  List<Map<String, dynamic>>? get actions;
  StacEdgeInsets? get actionsPadding;
  MainAxisAlignment? get actionsAlignment;
  OverflowBarAlignment? get actionsOverflowAlignment;
  VerticalDirection? get actionsOverflowDirection;
  StacDouble? get actionsOverflowButtonSpacing;
  StacEdgeInsets? get buttonPadding;
  String? get backgroundColor;
  StacDouble? get elevation;
  String? get shadowColor;
  String? get surfaceTintColor;
  String? get semanticLabel;
  StacEdgeInsets get insetPadding;
  Clip get clipBehavior;
  StacShapeBorder? get shape;
  StacAlignmentGeometry? get alignment;
  bool get scrollable;

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacAlertDialogCopyWith<StacAlertDialog> get copyWith =>
      _$StacAlertDialogCopyWithImpl<StacAlertDialog>(
          this as StacAlertDialog, _$identity);

  /// Serializes this StacAlertDialog to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacAlertDialog &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            (identical(other.iconPadding, iconPadding) ||
                other.iconPadding == iconPadding) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            (identical(other.titlePadding, titlePadding) ||
                other.titlePadding == titlePadding) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            (identical(other.contentTextStyle, contentTextStyle) ||
                other.contentTextStyle == contentTextStyle) &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            (identical(other.actionsPadding, actionsPadding) ||
                other.actionsPadding == actionsPadding) &&
            (identical(other.actionsAlignment, actionsAlignment) ||
                other.actionsAlignment == actionsAlignment) &&
            (identical(
                    other.actionsOverflowAlignment, actionsOverflowAlignment) ||
                other.actionsOverflowAlignment == actionsOverflowAlignment) &&
            (identical(
                    other.actionsOverflowDirection, actionsOverflowDirection) ||
                other.actionsOverflowDirection == actionsOverflowDirection) &&
            (identical(other.actionsOverflowButtonSpacing,
                    actionsOverflowButtonSpacing) ||
                other.actionsOverflowButtonSpacing ==
                    actionsOverflowButtonSpacing) &&
            (identical(other.buttonPadding, buttonPadding) ||
                other.buttonPadding == buttonPadding) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.semanticLabel, semanticLabel) ||
                other.semanticLabel == semanticLabel) &&
            (identical(other.insetPadding, insetPadding) ||
                other.insetPadding == insetPadding) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.scrollable, scrollable) ||
                other.scrollable == scrollable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(icon),
        iconPadding,
        iconColor,
        const DeepCollectionEquality().hash(title),
        titlePadding,
        titleTextStyle,
        const DeepCollectionEquality().hash(content),
        contentPadding,
        contentTextStyle,
        const DeepCollectionEquality().hash(actions),
        actionsPadding,
        actionsAlignment,
        actionsOverflowAlignment,
        actionsOverflowDirection,
        actionsOverflowButtonSpacing,
        buttonPadding,
        backgroundColor,
        elevation,
        shadowColor,
        surfaceTintColor,
        semanticLabel,
        insetPadding,
        clipBehavior,
        shape,
        alignment,
        scrollable
      ]);

  @override
  String toString() {
    return 'StacAlertDialog(icon: $icon, iconPadding: $iconPadding, iconColor: $iconColor, title: $title, titlePadding: $titlePadding, titleTextStyle: $titleTextStyle, content: $content, contentPadding: $contentPadding, contentTextStyle: $contentTextStyle, actions: $actions, actionsPadding: $actionsPadding, actionsAlignment: $actionsAlignment, actionsOverflowAlignment: $actionsOverflowAlignment, actionsOverflowDirection: $actionsOverflowDirection, actionsOverflowButtonSpacing: $actionsOverflowButtonSpacing, buttonPadding: $buttonPadding, backgroundColor: $backgroundColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, semanticLabel: $semanticLabel, insetPadding: $insetPadding, clipBehavior: $clipBehavior, shape: $shape, alignment: $alignment, scrollable: $scrollable)';
  }
}

/// @nodoc
abstract mixin class $StacAlertDialogCopyWith<$Res> {
  factory $StacAlertDialogCopyWith(
          StacAlertDialog value, $Res Function(StacAlertDialog) _then) =
      _$StacAlertDialogCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? icon,
      StacEdgeInsets? iconPadding,
      String? iconColor,
      Map<String, dynamic>? title,
      StacEdgeInsets? titlePadding,
      StacTextStyle? titleTextStyle,
      Map<String, dynamic>? content,
      StacEdgeInsets? contentPadding,
      StacTextStyle? contentTextStyle,
      List<Map<String, dynamic>>? actions,
      StacEdgeInsets? actionsPadding,
      MainAxisAlignment? actionsAlignment,
      OverflowBarAlignment? actionsOverflowAlignment,
      VerticalDirection? actionsOverflowDirection,
      StacDouble? actionsOverflowButtonSpacing,
      StacEdgeInsets? buttonPadding,
      String? backgroundColor,
      StacDouble? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      String? semanticLabel,
      StacEdgeInsets insetPadding,
      Clip clipBehavior,
      StacShapeBorder? shape,
      StacAlignmentGeometry? alignment,
      bool scrollable});

  $StacEdgeInsetsCopyWith<$Res>? get iconPadding;
  $StacEdgeInsetsCopyWith<$Res>? get titlePadding;
  $StacTextStyleCopyWith<$Res>? get titleTextStyle;
  $StacEdgeInsetsCopyWith<$Res>? get contentPadding;
  $StacTextStyleCopyWith<$Res>? get contentTextStyle;
  $StacEdgeInsetsCopyWith<$Res>? get actionsPadding;
  $StacEdgeInsetsCopyWith<$Res>? get buttonPadding;
  $StacEdgeInsetsCopyWith<$Res> get insetPadding;
  $StacShapeBorderCopyWith<$Res>? get shape;
  $StacAlignmentGeometryCopyWith<$Res>? get alignment;
}

/// @nodoc
class _$StacAlertDialogCopyWithImpl<$Res>
    implements $StacAlertDialogCopyWith<$Res> {
  _$StacAlertDialogCopyWithImpl(this._self, this._then);

  final StacAlertDialog _self;
  final $Res Function(StacAlertDialog) _then;

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? iconPadding = freezed,
    Object? iconColor = freezed,
    Object? title = freezed,
    Object? titlePadding = freezed,
    Object? titleTextStyle = freezed,
    Object? content = freezed,
    Object? contentPadding = freezed,
    Object? contentTextStyle = freezed,
    Object? actions = freezed,
    Object? actionsPadding = freezed,
    Object? actionsAlignment = freezed,
    Object? actionsOverflowAlignment = freezed,
    Object? actionsOverflowDirection = freezed,
    Object? actionsOverflowButtonSpacing = freezed,
    Object? buttonPadding = freezed,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? semanticLabel = freezed,
    Object? insetPadding = null,
    Object? clipBehavior = null,
    Object? shape = freezed,
    Object? alignment = freezed,
    Object? scrollable = null,
  }) {
    return _then(_self.copyWith(
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      iconPadding: freezed == iconPadding
          ? _self.iconPadding
          : iconPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      iconColor: freezed == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      titlePadding: freezed == titlePadding
          ? _self.titlePadding
          : titlePadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      titleTextStyle: freezed == titleTextStyle
          ? _self.titleTextStyle
          : titleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      contentPadding: freezed == contentPadding
          ? _self.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      contentTextStyle: freezed == contentTextStyle
          ? _self.contentTextStyle
          : contentTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      actions: freezed == actions
          ? _self.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      actionsPadding: freezed == actionsPadding
          ? _self.actionsPadding
          : actionsPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      actionsAlignment: freezed == actionsAlignment
          ? _self.actionsAlignment
          : actionsAlignment // ignore: cast_nullable_to_non_nullable
              as MainAxisAlignment?,
      actionsOverflowAlignment: freezed == actionsOverflowAlignment
          ? _self.actionsOverflowAlignment
          : actionsOverflowAlignment // ignore: cast_nullable_to_non_nullable
              as OverflowBarAlignment?,
      actionsOverflowDirection: freezed == actionsOverflowDirection
          ? _self.actionsOverflowDirection
          : actionsOverflowDirection // ignore: cast_nullable_to_non_nullable
              as VerticalDirection?,
      actionsOverflowButtonSpacing: freezed == actionsOverflowButtonSpacing
          ? _self.actionsOverflowButtonSpacing
          : actionsOverflowButtonSpacing // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      buttonPadding: freezed == buttonPadding
          ? _self.buttonPadding
          : buttonPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
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
      semanticLabel: freezed == semanticLabel
          ? _self.semanticLabel
          : semanticLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      insetPadding: null == insetPadding
          ? _self.insetPadding
          : insetPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentGeometry?,
      scrollable: null == scrollable
          ? _self.scrollable
          : scrollable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get iconPadding {
    if (_self.iconPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.iconPadding!, (value) {
      return _then(_self.copyWith(iconPadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get titlePadding {
    if (_self.titlePadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.titlePadding!, (value) {
      return _then(_self.copyWith(titlePadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
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

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get contentPadding {
    if (_self.contentPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.contentPadding!, (value) {
      return _then(_self.copyWith(contentPadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get contentTextStyle {
    if (_self.contentTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.contentTextStyle!, (value) {
      return _then(_self.copyWith(contentTextStyle: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get actionsPadding {
    if (_self.actionsPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.actionsPadding!, (value) {
      return _then(_self.copyWith(actionsPadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get buttonPadding {
    if (_self.buttonPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.buttonPadding!, (value) {
      return _then(_self.copyWith(buttonPadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res> get insetPadding {
    return $StacEdgeInsetsCopyWith<$Res>(_self.insetPadding, (value) {
      return _then(_self.copyWith(insetPadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacShapeBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacAlignmentGeometryCopyWith<$Res>? get alignment {
    if (_self.alignment == null) {
      return null;
    }

    return $StacAlignmentGeometryCopyWith<$Res>(_self.alignment!, (value) {
      return _then(_self.copyWith(alignment: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacAlertDialog implements StacAlertDialog {
  const _StacAlertDialog(
      {final Map<String, dynamic>? icon,
      this.iconPadding,
      this.iconColor,
      final Map<String, dynamic>? title,
      this.titlePadding,
      this.titleTextStyle,
      final Map<String, dynamic>? content,
      this.contentPadding,
      this.contentTextStyle,
      final List<Map<String, dynamic>>? actions,
      this.actionsPadding,
      this.actionsAlignment,
      this.actionsOverflowAlignment,
      this.actionsOverflowDirection,
      this.actionsOverflowButtonSpacing,
      this.buttonPadding,
      this.backgroundColor,
      this.elevation,
      this.shadowColor,
      this.surfaceTintColor,
      this.semanticLabel,
      this.insetPadding = const StacEdgeInsets(
          left: StacDouble(40),
          right: StacDouble(40),
          top: StacDouble(24),
          bottom: StacDouble(24)),
      this.clipBehavior = Clip.none,
      this.shape,
      this.alignment,
      this.scrollable = false})
      : _icon = icon,
        _title = title,
        _content = content,
        _actions = actions;
  factory _StacAlertDialog.fromJson(Map<String, dynamic> json) =>
      _$StacAlertDialogFromJson(json);

  final Map<String, dynamic>? _icon;
  @override
  Map<String, dynamic>? get icon {
    final value = _icon;
    if (value == null) return null;
    if (_icon is EqualUnmodifiableMapView) return _icon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacEdgeInsets? iconPadding;
  @override
  final String? iconColor;
  final Map<String, dynamic>? _title;
  @override
  Map<String, dynamic>? get title {
    final value = _title;
    if (value == null) return null;
    if (_title is EqualUnmodifiableMapView) return _title;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacEdgeInsets? titlePadding;
  @override
  final StacTextStyle? titleTextStyle;
  final Map<String, dynamic>? _content;
  @override
  Map<String, dynamic>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableMapView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacEdgeInsets? contentPadding;
  @override
  final StacTextStyle? contentTextStyle;
  final List<Map<String, dynamic>>? _actions;
  @override
  List<Map<String, dynamic>>? get actions {
    final value = _actions;
    if (value == null) return null;
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final StacEdgeInsets? actionsPadding;
  @override
  final MainAxisAlignment? actionsAlignment;
  @override
  final OverflowBarAlignment? actionsOverflowAlignment;
  @override
  final VerticalDirection? actionsOverflowDirection;
  @override
  final StacDouble? actionsOverflowButtonSpacing;
  @override
  final StacEdgeInsets? buttonPadding;
  @override
  final String? backgroundColor;
  @override
  final StacDouble? elevation;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final String? semanticLabel;
  @override
  @JsonKey()
  final StacEdgeInsets insetPadding;
  @override
  @JsonKey()
  final Clip clipBehavior;
  @override
  final StacShapeBorder? shape;
  @override
  final StacAlignmentGeometry? alignment;
  @override
  @JsonKey()
  final bool scrollable;

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacAlertDialogCopyWith<_StacAlertDialog> get copyWith =>
      __$StacAlertDialogCopyWithImpl<_StacAlertDialog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacAlertDialogToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacAlertDialog &&
            const DeepCollectionEquality().equals(other._icon, _icon) &&
            (identical(other.iconPadding, iconPadding) ||
                other.iconPadding == iconPadding) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            const DeepCollectionEquality().equals(other._title, _title) &&
            (identical(other.titlePadding, titlePadding) ||
                other.titlePadding == titlePadding) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            (identical(other.contentTextStyle, contentTextStyle) ||
                other.contentTextStyle == contentTextStyle) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            (identical(other.actionsPadding, actionsPadding) ||
                other.actionsPadding == actionsPadding) &&
            (identical(other.actionsAlignment, actionsAlignment) ||
                other.actionsAlignment == actionsAlignment) &&
            (identical(
                    other.actionsOverflowAlignment, actionsOverflowAlignment) ||
                other.actionsOverflowAlignment == actionsOverflowAlignment) &&
            (identical(
                    other.actionsOverflowDirection, actionsOverflowDirection) ||
                other.actionsOverflowDirection == actionsOverflowDirection) &&
            (identical(other.actionsOverflowButtonSpacing,
                    actionsOverflowButtonSpacing) ||
                other.actionsOverflowButtonSpacing ==
                    actionsOverflowButtonSpacing) &&
            (identical(other.buttonPadding, buttonPadding) ||
                other.buttonPadding == buttonPadding) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.semanticLabel, semanticLabel) ||
                other.semanticLabel == semanticLabel) &&
            (identical(other.insetPadding, insetPadding) ||
                other.insetPadding == insetPadding) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.scrollable, scrollable) ||
                other.scrollable == scrollable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_icon),
        iconPadding,
        iconColor,
        const DeepCollectionEquality().hash(_title),
        titlePadding,
        titleTextStyle,
        const DeepCollectionEquality().hash(_content),
        contentPadding,
        contentTextStyle,
        const DeepCollectionEquality().hash(_actions),
        actionsPadding,
        actionsAlignment,
        actionsOverflowAlignment,
        actionsOverflowDirection,
        actionsOverflowButtonSpacing,
        buttonPadding,
        backgroundColor,
        elevation,
        shadowColor,
        surfaceTintColor,
        semanticLabel,
        insetPadding,
        clipBehavior,
        shape,
        alignment,
        scrollable
      ]);

  @override
  String toString() {
    return 'StacAlertDialog(icon: $icon, iconPadding: $iconPadding, iconColor: $iconColor, title: $title, titlePadding: $titlePadding, titleTextStyle: $titleTextStyle, content: $content, contentPadding: $contentPadding, contentTextStyle: $contentTextStyle, actions: $actions, actionsPadding: $actionsPadding, actionsAlignment: $actionsAlignment, actionsOverflowAlignment: $actionsOverflowAlignment, actionsOverflowDirection: $actionsOverflowDirection, actionsOverflowButtonSpacing: $actionsOverflowButtonSpacing, buttonPadding: $buttonPadding, backgroundColor: $backgroundColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, semanticLabel: $semanticLabel, insetPadding: $insetPadding, clipBehavior: $clipBehavior, shape: $shape, alignment: $alignment, scrollable: $scrollable)';
  }
}

/// @nodoc
abstract mixin class _$StacAlertDialogCopyWith<$Res>
    implements $StacAlertDialogCopyWith<$Res> {
  factory _$StacAlertDialogCopyWith(
          _StacAlertDialog value, $Res Function(_StacAlertDialog) _then) =
      __$StacAlertDialogCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? icon,
      StacEdgeInsets? iconPadding,
      String? iconColor,
      Map<String, dynamic>? title,
      StacEdgeInsets? titlePadding,
      StacTextStyle? titleTextStyle,
      Map<String, dynamic>? content,
      StacEdgeInsets? contentPadding,
      StacTextStyle? contentTextStyle,
      List<Map<String, dynamic>>? actions,
      StacEdgeInsets? actionsPadding,
      MainAxisAlignment? actionsAlignment,
      OverflowBarAlignment? actionsOverflowAlignment,
      VerticalDirection? actionsOverflowDirection,
      StacDouble? actionsOverflowButtonSpacing,
      StacEdgeInsets? buttonPadding,
      String? backgroundColor,
      StacDouble? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      String? semanticLabel,
      StacEdgeInsets insetPadding,
      Clip clipBehavior,
      StacShapeBorder? shape,
      StacAlignmentGeometry? alignment,
      bool scrollable});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get iconPadding;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get titlePadding;
  @override
  $StacTextStyleCopyWith<$Res>? get titleTextStyle;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get contentPadding;
  @override
  $StacTextStyleCopyWith<$Res>? get contentTextStyle;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get actionsPadding;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get buttonPadding;
  @override
  $StacEdgeInsetsCopyWith<$Res> get insetPadding;
  @override
  $StacShapeBorderCopyWith<$Res>? get shape;
  @override
  $StacAlignmentGeometryCopyWith<$Res>? get alignment;
}

/// @nodoc
class __$StacAlertDialogCopyWithImpl<$Res>
    implements _$StacAlertDialogCopyWith<$Res> {
  __$StacAlertDialogCopyWithImpl(this._self, this._then);

  final _StacAlertDialog _self;
  final $Res Function(_StacAlertDialog) _then;

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? icon = freezed,
    Object? iconPadding = freezed,
    Object? iconColor = freezed,
    Object? title = freezed,
    Object? titlePadding = freezed,
    Object? titleTextStyle = freezed,
    Object? content = freezed,
    Object? contentPadding = freezed,
    Object? contentTextStyle = freezed,
    Object? actions = freezed,
    Object? actionsPadding = freezed,
    Object? actionsAlignment = freezed,
    Object? actionsOverflowAlignment = freezed,
    Object? actionsOverflowDirection = freezed,
    Object? actionsOverflowButtonSpacing = freezed,
    Object? buttonPadding = freezed,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? semanticLabel = freezed,
    Object? insetPadding = null,
    Object? clipBehavior = null,
    Object? shape = freezed,
    Object? alignment = freezed,
    Object? scrollable = null,
  }) {
    return _then(_StacAlertDialog(
      icon: freezed == icon
          ? _self._icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      iconPadding: freezed == iconPadding
          ? _self.iconPadding
          : iconPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      iconColor: freezed == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self._title
          : title // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      titlePadding: freezed == titlePadding
          ? _self.titlePadding
          : titlePadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      titleTextStyle: freezed == titleTextStyle
          ? _self.titleTextStyle
          : titleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      content: freezed == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      contentPadding: freezed == contentPadding
          ? _self.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      contentTextStyle: freezed == contentTextStyle
          ? _self.contentTextStyle
          : contentTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      actions: freezed == actions
          ? _self._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      actionsPadding: freezed == actionsPadding
          ? _self.actionsPadding
          : actionsPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      actionsAlignment: freezed == actionsAlignment
          ? _self.actionsAlignment
          : actionsAlignment // ignore: cast_nullable_to_non_nullable
              as MainAxisAlignment?,
      actionsOverflowAlignment: freezed == actionsOverflowAlignment
          ? _self.actionsOverflowAlignment
          : actionsOverflowAlignment // ignore: cast_nullable_to_non_nullable
              as OverflowBarAlignment?,
      actionsOverflowDirection: freezed == actionsOverflowDirection
          ? _self.actionsOverflowDirection
          : actionsOverflowDirection // ignore: cast_nullable_to_non_nullable
              as VerticalDirection?,
      actionsOverflowButtonSpacing: freezed == actionsOverflowButtonSpacing
          ? _self.actionsOverflowButtonSpacing
          : actionsOverflowButtonSpacing // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      buttonPadding: freezed == buttonPadding
          ? _self.buttonPadding
          : buttonPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
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
      semanticLabel: freezed == semanticLabel
          ? _self.semanticLabel
          : semanticLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      insetPadding: null == insetPadding
          ? _self.insetPadding
          : insetPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentGeometry?,
      scrollable: null == scrollable
          ? _self.scrollable
          : scrollable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get iconPadding {
    if (_self.iconPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.iconPadding!, (value) {
      return _then(_self.copyWith(iconPadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get titlePadding {
    if (_self.titlePadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.titlePadding!, (value) {
      return _then(_self.copyWith(titlePadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
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

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get contentPadding {
    if (_self.contentPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.contentPadding!, (value) {
      return _then(_self.copyWith(contentPadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get contentTextStyle {
    if (_self.contentTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.contentTextStyle!, (value) {
      return _then(_self.copyWith(contentTextStyle: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get actionsPadding {
    if (_self.actionsPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.actionsPadding!, (value) {
      return _then(_self.copyWith(actionsPadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get buttonPadding {
    if (_self.buttonPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.buttonPadding!, (value) {
      return _then(_self.copyWith(buttonPadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res> get insetPadding {
    return $StacEdgeInsetsCopyWith<$Res>(_self.insetPadding, (value) {
      return _then(_self.copyWith(insetPadding: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacShapeBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacAlertDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacAlignmentGeometryCopyWith<$Res>? get alignment {
    if (_self.alignment == null) {
      return null;
    }

    return $StacAlignmentGeometryCopyWith<$Res>(_self.alignment!, (value) {
      return _then(_self.copyWith(alignment: value));
    });
  }
}

// dart format on
