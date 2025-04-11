// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_snack_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSnackBar {
  Map<String, dynamic> get content;
  String? get backgroundColor;
  double? get elevation;
  StacEdgeInsets? get margin;
  StacEdgeInsets? get padding;
  double? get width;
  StacShapeBorder? get shape;
  HitTestBehavior? get hitTestBehavior;
  SnackBarBehavior? get behavior;
  StacSnackBarAction? get action;
  double? get actionOverflowThreshold;
  bool? get showCloseIcon;
  String? get closeIconColor;
  StacDuration get duration;
  Map<String, dynamic>? get onVisible;
  DismissDirection? get dismissDirection;
  Clip get clipBehavior;

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSnackBarCopyWith<StacSnackBar> get copyWith =>
      _$StacSnackBarCopyWithImpl<StacSnackBar>(
          this as StacSnackBar, _$identity);

  /// Serializes this StacSnackBar to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSnackBar &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.hitTestBehavior, hitTestBehavior) ||
                other.hitTestBehavior == hitTestBehavior) &&
            (identical(other.behavior, behavior) ||
                other.behavior == behavior) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(
                    other.actionOverflowThreshold, actionOverflowThreshold) ||
                other.actionOverflowThreshold == actionOverflowThreshold) &&
            (identical(other.showCloseIcon, showCloseIcon) ||
                other.showCloseIcon == showCloseIcon) &&
            (identical(other.closeIconColor, closeIconColor) ||
                other.closeIconColor == closeIconColor) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other.onVisible, onVisible) &&
            (identical(other.dismissDirection, dismissDirection) ||
                other.dismissDirection == dismissDirection) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      backgroundColor,
      elevation,
      margin,
      padding,
      width,
      shape,
      hitTestBehavior,
      behavior,
      action,
      actionOverflowThreshold,
      showCloseIcon,
      closeIconColor,
      duration,
      const DeepCollectionEquality().hash(onVisible),
      dismissDirection,
      clipBehavior);

  @override
  String toString() {
    return 'StacSnackBar(content: $content, backgroundColor: $backgroundColor, elevation: $elevation, margin: $margin, padding: $padding, width: $width, shape: $shape, hitTestBehavior: $hitTestBehavior, behavior: $behavior, action: $action, actionOverflowThreshold: $actionOverflowThreshold, showCloseIcon: $showCloseIcon, closeIconColor: $closeIconColor, duration: $duration, onVisible: $onVisible, dismissDirection: $dismissDirection, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacSnackBarCopyWith<$Res> {
  factory $StacSnackBarCopyWith(
          StacSnackBar value, $Res Function(StacSnackBar) _then) =
      _$StacSnackBarCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic> content,
      String? backgroundColor,
      double? elevation,
      StacEdgeInsets? margin,
      StacEdgeInsets? padding,
      double? width,
      StacShapeBorder? shape,
      HitTestBehavior? hitTestBehavior,
      SnackBarBehavior? behavior,
      StacSnackBarAction? action,
      double? actionOverflowThreshold,
      bool? showCloseIcon,
      String? closeIconColor,
      StacDuration duration,
      Map<String, dynamic>? onVisible,
      DismissDirection? dismissDirection,
      Clip clipBehavior});

  $StacEdgeInsetsCopyWith<$Res>? get margin;
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  $StacShapeBorderCopyWith<$Res>? get shape;
  $StacSnackBarActionCopyWith<$Res>? get action;
  $StacDurationCopyWith<$Res> get duration;
}

/// @nodoc
class _$StacSnackBarCopyWithImpl<$Res> implements $StacSnackBarCopyWith<$Res> {
  _$StacSnackBarCopyWithImpl(this._self, this._then);

  final StacSnackBar _self;
  final $Res Function(StacSnackBar) _then;

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? margin = freezed,
    Object? padding = freezed,
    Object? width = freezed,
    Object? shape = freezed,
    Object? hitTestBehavior = freezed,
    Object? behavior = freezed,
    Object? action = freezed,
    Object? actionOverflowThreshold = freezed,
    Object? showCloseIcon = freezed,
    Object? closeIconColor = freezed,
    Object? duration = null,
    Object? onVisible = freezed,
    Object? dismissDirection = freezed,
    Object? clipBehavior = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      margin: freezed == margin
          ? _self.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      hitTestBehavior: freezed == hitTestBehavior
          ? _self.hitTestBehavior
          : hitTestBehavior // ignore: cast_nullable_to_non_nullable
              as HitTestBehavior?,
      behavior: freezed == behavior
          ? _self.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as SnackBarBehavior?,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as StacSnackBarAction?,
      actionOverflowThreshold: freezed == actionOverflowThreshold
          ? _self.actionOverflowThreshold
          : actionOverflowThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
      showCloseIcon: freezed == showCloseIcon
          ? _self.showCloseIcon
          : showCloseIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
      closeIconColor: freezed == closeIconColor
          ? _self.closeIconColor
          : closeIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as StacDuration,
      onVisible: freezed == onVisible
          ? _self.onVisible
          : onVisible // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dismissDirection: freezed == dismissDirection
          ? _self.dismissDirection
          : dismissDirection // ignore: cast_nullable_to_non_nullable
              as DismissDirection?,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ));
  }

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get margin {
    if (_self.margin == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.margin!, (value) {
      return _then(_self.copyWith(margin: value));
    });
  }

  /// Create a copy of StacSnackBar
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

  /// Create a copy of StacSnackBar
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

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSnackBarActionCopyWith<$Res>? get action {
    if (_self.action == null) {
      return null;
    }

    return $StacSnackBarActionCopyWith<$Res>(_self.action!, (value) {
      return _then(_self.copyWith(action: value));
    });
  }

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDurationCopyWith<$Res> get duration {
    return $StacDurationCopyWith<$Res>(_self.duration, (value) {
      return _then(_self.copyWith(duration: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacSnackBar implements StacSnackBar {
  const _StacSnackBar(
      {required final Map<String, dynamic> content,
      this.backgroundColor,
      this.elevation,
      this.margin,
      this.padding,
      this.width,
      this.shape,
      this.hitTestBehavior,
      this.behavior,
      this.action,
      this.actionOverflowThreshold,
      this.showCloseIcon,
      this.closeIconColor,
      this.duration = const StacDuration(milliseconds: 4000),
      final Map<String, dynamic>? onVisible,
      this.dismissDirection,
      this.clipBehavior = Clip.hardEdge})
      : _content = content,
        _onVisible = onVisible;
  factory _StacSnackBar.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarFromJson(json);

  final Map<String, dynamic> _content;
  @override
  Map<String, dynamic> get content {
    if (_content is EqualUnmodifiableMapView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_content);
  }

  @override
  final String? backgroundColor;
  @override
  final double? elevation;
  @override
  final StacEdgeInsets? margin;
  @override
  final StacEdgeInsets? padding;
  @override
  final double? width;
  @override
  final StacShapeBorder? shape;
  @override
  final HitTestBehavior? hitTestBehavior;
  @override
  final SnackBarBehavior? behavior;
  @override
  final StacSnackBarAction? action;
  @override
  final double? actionOverflowThreshold;
  @override
  final bool? showCloseIcon;
  @override
  final String? closeIconColor;
  @override
  @JsonKey()
  final StacDuration duration;
  final Map<String, dynamic>? _onVisible;
  @override
  Map<String, dynamic>? get onVisible {
    final value = _onVisible;
    if (value == null) return null;
    if (_onVisible is EqualUnmodifiableMapView) return _onVisible;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DismissDirection? dismissDirection;
  @override
  @JsonKey()
  final Clip clipBehavior;

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSnackBarCopyWith<_StacSnackBar> get copyWith =>
      __$StacSnackBarCopyWithImpl<_StacSnackBar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSnackBarToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSnackBar &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.hitTestBehavior, hitTestBehavior) ||
                other.hitTestBehavior == hitTestBehavior) &&
            (identical(other.behavior, behavior) ||
                other.behavior == behavior) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(
                    other.actionOverflowThreshold, actionOverflowThreshold) ||
                other.actionOverflowThreshold == actionOverflowThreshold) &&
            (identical(other.showCloseIcon, showCloseIcon) ||
                other.showCloseIcon == showCloseIcon) &&
            (identical(other.closeIconColor, closeIconColor) ||
                other.closeIconColor == closeIconColor) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other._onVisible, _onVisible) &&
            (identical(other.dismissDirection, dismissDirection) ||
                other.dismissDirection == dismissDirection) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      backgroundColor,
      elevation,
      margin,
      padding,
      width,
      shape,
      hitTestBehavior,
      behavior,
      action,
      actionOverflowThreshold,
      showCloseIcon,
      closeIconColor,
      duration,
      const DeepCollectionEquality().hash(_onVisible),
      dismissDirection,
      clipBehavior);

  @override
  String toString() {
    return 'StacSnackBar(content: $content, backgroundColor: $backgroundColor, elevation: $elevation, margin: $margin, padding: $padding, width: $width, shape: $shape, hitTestBehavior: $hitTestBehavior, behavior: $behavior, action: $action, actionOverflowThreshold: $actionOverflowThreshold, showCloseIcon: $showCloseIcon, closeIconColor: $closeIconColor, duration: $duration, onVisible: $onVisible, dismissDirection: $dismissDirection, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacSnackBarCopyWith<$Res>
    implements $StacSnackBarCopyWith<$Res> {
  factory _$StacSnackBarCopyWith(
          _StacSnackBar value, $Res Function(_StacSnackBar) _then) =
      __$StacSnackBarCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> content,
      String? backgroundColor,
      double? elevation,
      StacEdgeInsets? margin,
      StacEdgeInsets? padding,
      double? width,
      StacShapeBorder? shape,
      HitTestBehavior? hitTestBehavior,
      SnackBarBehavior? behavior,
      StacSnackBarAction? action,
      double? actionOverflowThreshold,
      bool? showCloseIcon,
      String? closeIconColor,
      StacDuration duration,
      Map<String, dynamic>? onVisible,
      DismissDirection? dismissDirection,
      Clip clipBehavior});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get margin;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  @override
  $StacShapeBorderCopyWith<$Res>? get shape;
  @override
  $StacSnackBarActionCopyWith<$Res>? get action;
  @override
  $StacDurationCopyWith<$Res> get duration;
}

/// @nodoc
class __$StacSnackBarCopyWithImpl<$Res>
    implements _$StacSnackBarCopyWith<$Res> {
  __$StacSnackBarCopyWithImpl(this._self, this._then);

  final _StacSnackBar _self;
  final $Res Function(_StacSnackBar) _then;

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? margin = freezed,
    Object? padding = freezed,
    Object? width = freezed,
    Object? shape = freezed,
    Object? hitTestBehavior = freezed,
    Object? behavior = freezed,
    Object? action = freezed,
    Object? actionOverflowThreshold = freezed,
    Object? showCloseIcon = freezed,
    Object? closeIconColor = freezed,
    Object? duration = null,
    Object? onVisible = freezed,
    Object? dismissDirection = freezed,
    Object? clipBehavior = null,
  }) {
    return _then(_StacSnackBar(
      content: null == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      margin: freezed == margin
          ? _self.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      hitTestBehavior: freezed == hitTestBehavior
          ? _self.hitTestBehavior
          : hitTestBehavior // ignore: cast_nullable_to_non_nullable
              as HitTestBehavior?,
      behavior: freezed == behavior
          ? _self.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as SnackBarBehavior?,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as StacSnackBarAction?,
      actionOverflowThreshold: freezed == actionOverflowThreshold
          ? _self.actionOverflowThreshold
          : actionOverflowThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
      showCloseIcon: freezed == showCloseIcon
          ? _self.showCloseIcon
          : showCloseIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
      closeIconColor: freezed == closeIconColor
          ? _self.closeIconColor
          : closeIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as StacDuration,
      onVisible: freezed == onVisible
          ? _self._onVisible
          : onVisible // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dismissDirection: freezed == dismissDirection
          ? _self.dismissDirection
          : dismissDirection // ignore: cast_nullable_to_non_nullable
              as DismissDirection?,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ));
  }

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get margin {
    if (_self.margin == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.margin!, (value) {
      return _then(_self.copyWith(margin: value));
    });
  }

  /// Create a copy of StacSnackBar
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

  /// Create a copy of StacSnackBar
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

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSnackBarActionCopyWith<$Res>? get action {
    if (_self.action == null) {
      return null;
    }

    return $StacSnackBarActionCopyWith<$Res>(_self.action!, (value) {
      return _then(_self.copyWith(action: value));
    });
  }

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDurationCopyWith<$Res> get duration {
    return $StacDurationCopyWith<$Res>(_self.duration, (value) {
      return _then(_self.copyWith(duration: value));
    });
  }
}

// dart format on
