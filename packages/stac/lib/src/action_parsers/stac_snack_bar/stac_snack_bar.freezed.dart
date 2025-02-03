// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_snack_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacSnackBar _$StacSnackBarFromJson(Map<String, dynamic> json) {
  return _StacSnackBar.fromJson(json);
}

/// @nodoc
mixin _$StacSnackBar {
  Map<String, dynamic> get content => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  StacEdgeInsets? get margin => throw _privateConstructorUsedError;
  StacEdgeInsets? get padding => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  StacShapeBorder? get shape => throw _privateConstructorUsedError;
  HitTestBehavior? get hitTestBehavior => throw _privateConstructorUsedError;
  SnackBarBehavior? get behavior => throw _privateConstructorUsedError;
  StacSnackBarAction? get action => throw _privateConstructorUsedError;
  double? get actionOverflowThreshold => throw _privateConstructorUsedError;
  bool? get showCloseIcon => throw _privateConstructorUsedError;
  String? get closeIconColor => throw _privateConstructorUsedError;
  StacDuration get duration => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onVisible => throw _privateConstructorUsedError;
  DismissDirection? get dismissDirection => throw _privateConstructorUsedError;
  Clip get clipBehavior => throw _privateConstructorUsedError;

  /// Serializes this StacSnackBar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacSnackBarCopyWith<StacSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacSnackBarCopyWith<$Res> {
  factory $StacSnackBarCopyWith(
          StacSnackBar value, $Res Function(StacSnackBar) then) =
      _$StacSnackBarCopyWithImpl<$Res, StacSnackBar>;
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
class _$StacSnackBarCopyWithImpl<$Res, $Val extends StacSnackBar>
    implements $StacSnackBarCopyWith<$Res> {
  _$StacSnackBarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      hitTestBehavior: freezed == hitTestBehavior
          ? _value.hitTestBehavior
          : hitTestBehavior // ignore: cast_nullable_to_non_nullable
              as HitTestBehavior?,
      behavior: freezed == behavior
          ? _value.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as SnackBarBehavior?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StacSnackBarAction?,
      actionOverflowThreshold: freezed == actionOverflowThreshold
          ? _value.actionOverflowThreshold
          : actionOverflowThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
      showCloseIcon: freezed == showCloseIcon
          ? _value.showCloseIcon
          : showCloseIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
      closeIconColor: freezed == closeIconColor
          ? _value.closeIconColor
          : closeIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as StacDuration,
      onVisible: freezed == onVisible
          ? _value.onVisible
          : onVisible // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dismissDirection: freezed == dismissDirection
          ? _value.dismissDirection
          : dismissDirection // ignore: cast_nullable_to_non_nullable
              as DismissDirection?,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ) as $Val);
  }

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get margin {
    if (_value.margin == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_value.margin!, (value) {
      return _then(_value.copyWith(margin: value) as $Val);
    });
  }

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get padding {
    if (_value.padding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_value.padding!, (value) {
      return _then(_value.copyWith(padding: value) as $Val);
    });
  }

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<$Res>? get shape {
    if (_value.shape == null) {
      return null;
    }

    return $StacShapeBorderCopyWith<$Res>(_value.shape!, (value) {
      return _then(_value.copyWith(shape: value) as $Val);
    });
  }

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSnackBarActionCopyWith<$Res>? get action {
    if (_value.action == null) {
      return null;
    }

    return $StacSnackBarActionCopyWith<$Res>(_value.action!, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDurationCopyWith<$Res> get duration {
    return $StacDurationCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacSnackBarImplCopyWith<$Res>
    implements $StacSnackBarCopyWith<$Res> {
  factory _$$StacSnackBarImplCopyWith(
          _$StacSnackBarImpl value, $Res Function(_$StacSnackBarImpl) then) =
      __$$StacSnackBarImplCopyWithImpl<$Res>;
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
class __$$StacSnackBarImplCopyWithImpl<$Res>
    extends _$StacSnackBarCopyWithImpl<$Res, _$StacSnackBarImpl>
    implements _$$StacSnackBarImplCopyWith<$Res> {
  __$$StacSnackBarImplCopyWithImpl(
      _$StacSnackBarImpl _value, $Res Function(_$StacSnackBarImpl) _then)
      : super(_value, _then);

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
    return _then(_$StacSnackBarImpl(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      hitTestBehavior: freezed == hitTestBehavior
          ? _value.hitTestBehavior
          : hitTestBehavior // ignore: cast_nullable_to_non_nullable
              as HitTestBehavior?,
      behavior: freezed == behavior
          ? _value.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as SnackBarBehavior?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StacSnackBarAction?,
      actionOverflowThreshold: freezed == actionOverflowThreshold
          ? _value.actionOverflowThreshold
          : actionOverflowThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
      showCloseIcon: freezed == showCloseIcon
          ? _value.showCloseIcon
          : showCloseIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
      closeIconColor: freezed == closeIconColor
          ? _value.closeIconColor
          : closeIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as StacDuration,
      onVisible: freezed == onVisible
          ? _value._onVisible
          : onVisible // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dismissDirection: freezed == dismissDirection
          ? _value.dismissDirection
          : dismissDirection // ignore: cast_nullable_to_non_nullable
              as DismissDirection?,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacSnackBarImpl implements _StacSnackBar {
  const _$StacSnackBarImpl(
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

  factory _$StacSnackBarImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacSnackBarImplFromJson(json);

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

  @override
  String toString() {
    return 'StacSnackBar(content: $content, backgroundColor: $backgroundColor, elevation: $elevation, margin: $margin, padding: $padding, width: $width, shape: $shape, hitTestBehavior: $hitTestBehavior, behavior: $behavior, action: $action, actionOverflowThreshold: $actionOverflowThreshold, showCloseIcon: $showCloseIcon, closeIconColor: $closeIconColor, duration: $duration, onVisible: $onVisible, dismissDirection: $dismissDirection, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacSnackBarImpl &&
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

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacSnackBarImplCopyWith<_$StacSnackBarImpl> get copyWith =>
      __$$StacSnackBarImplCopyWithImpl<_$StacSnackBarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacSnackBarImplToJson(
      this,
    );
  }
}

abstract class _StacSnackBar implements StacSnackBar {
  const factory _StacSnackBar(
      {required final Map<String, dynamic> content,
      final String? backgroundColor,
      final double? elevation,
      final StacEdgeInsets? margin,
      final StacEdgeInsets? padding,
      final double? width,
      final StacShapeBorder? shape,
      final HitTestBehavior? hitTestBehavior,
      final SnackBarBehavior? behavior,
      final StacSnackBarAction? action,
      final double? actionOverflowThreshold,
      final bool? showCloseIcon,
      final String? closeIconColor,
      final StacDuration duration,
      final Map<String, dynamic>? onVisible,
      final DismissDirection? dismissDirection,
      final Clip clipBehavior}) = _$StacSnackBarImpl;

  factory _StacSnackBar.fromJson(Map<String, dynamic> json) =
      _$StacSnackBarImpl.fromJson;

  @override
  Map<String, dynamic> get content;
  @override
  String? get backgroundColor;
  @override
  double? get elevation;
  @override
  StacEdgeInsets? get margin;
  @override
  StacEdgeInsets? get padding;
  @override
  double? get width;
  @override
  StacShapeBorder? get shape;
  @override
  HitTestBehavior? get hitTestBehavior;
  @override
  SnackBarBehavior? get behavior;
  @override
  StacSnackBarAction? get action;
  @override
  double? get actionOverflowThreshold;
  @override
  bool? get showCloseIcon;
  @override
  String? get closeIconColor;
  @override
  StacDuration get duration;
  @override
  Map<String, dynamic>? get onVisible;
  @override
  DismissDirection? get dismissDirection;
  @override
  Clip get clipBehavior;

  /// Create a copy of StacSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacSnackBarImplCopyWith<_$StacSnackBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
