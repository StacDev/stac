// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_snack_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiSnackBar _$MiraiSnackBarFromJson(Map<String, dynamic> json) {
  return _MiraiSnackBar.fromJson(json);
}

/// @nodoc
mixin _$MiraiSnackBar {
  Map<String, dynamic> get content => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  MiraiEdgeInsets? get margin => throw _privateConstructorUsedError;
  MiraiEdgeInsets? get padding => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  MiraiShapeBorder? get shape => throw _privateConstructorUsedError;
  HitTestBehavior? get hitTestBehavior => throw _privateConstructorUsedError;
  SnackBarBehavior? get behavior => throw _privateConstructorUsedError;
  MiraiSnackBarAction? get action => throw _privateConstructorUsedError;
  double? get actionOverflowThreshold => throw _privateConstructorUsedError;
  bool? get showCloseIcon => throw _privateConstructorUsedError;
  String? get closeIconColor => throw _privateConstructorUsedError;
  MiraiDuration get duration => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onVisible => throw _privateConstructorUsedError;
  DismissDirection? get dismissDirection => throw _privateConstructorUsedError;
  Clip get clipBehavior => throw _privateConstructorUsedError;

  /// Serializes this MiraiSnackBar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiSnackBarCopyWith<MiraiSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiSnackBarCopyWith<$Res> {
  factory $MiraiSnackBarCopyWith(
          MiraiSnackBar value, $Res Function(MiraiSnackBar) then) =
      _$MiraiSnackBarCopyWithImpl<$Res, MiraiSnackBar>;
  @useResult
  $Res call(
      {Map<String, dynamic> content,
      String? backgroundColor,
      double? elevation,
      MiraiEdgeInsets? margin,
      MiraiEdgeInsets? padding,
      double? width,
      MiraiShapeBorder? shape,
      HitTestBehavior? hitTestBehavior,
      SnackBarBehavior? behavior,
      MiraiSnackBarAction? action,
      double? actionOverflowThreshold,
      bool? showCloseIcon,
      String? closeIconColor,
      MiraiDuration duration,
      Map<String, dynamic>? onVisible,
      DismissDirection? dismissDirection,
      Clip clipBehavior});

  $MiraiEdgeInsetsCopyWith<$Res>? get margin;
  $MiraiEdgeInsetsCopyWith<$Res>? get padding;
  $MiraiShapeBorderCopyWith<$Res>? get shape;
  $MiraiSnackBarActionCopyWith<$Res>? get action;
  $MiraiDurationCopyWith<$Res> get duration;
}

/// @nodoc
class _$MiraiSnackBarCopyWithImpl<$Res, $Val extends MiraiSnackBar>
    implements $MiraiSnackBarCopyWith<$Res> {
  _$MiraiSnackBarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiSnackBar
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
              as MiraiEdgeInsets?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as MiraiShapeBorder?,
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
              as MiraiSnackBarAction?,
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
              as MiraiDuration,
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

  /// Create a copy of MiraiSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiEdgeInsetsCopyWith<$Res>? get margin {
    if (_value.margin == null) {
      return null;
    }

    return $MiraiEdgeInsetsCopyWith<$Res>(_value.margin!, (value) {
      return _then(_value.copyWith(margin: value) as $Val);
    });
  }

  /// Create a copy of MiraiSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiEdgeInsetsCopyWith<$Res>? get padding {
    if (_value.padding == null) {
      return null;
    }

    return $MiraiEdgeInsetsCopyWith<$Res>(_value.padding!, (value) {
      return _then(_value.copyWith(padding: value) as $Val);
    });
  }

  /// Create a copy of MiraiSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiShapeBorderCopyWith<$Res>? get shape {
    if (_value.shape == null) {
      return null;
    }

    return $MiraiShapeBorderCopyWith<$Res>(_value.shape!, (value) {
      return _then(_value.copyWith(shape: value) as $Val);
    });
  }

  /// Create a copy of MiraiSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiSnackBarActionCopyWith<$Res>? get action {
    if (_value.action == null) {
      return null;
    }

    return $MiraiSnackBarActionCopyWith<$Res>(_value.action!, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }

  /// Create a copy of MiraiSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiDurationCopyWith<$Res> get duration {
    return $MiraiDurationCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiSnackBarImplCopyWith<$Res>
    implements $MiraiSnackBarCopyWith<$Res> {
  factory _$$MiraiSnackBarImplCopyWith(
          _$MiraiSnackBarImpl value, $Res Function(_$MiraiSnackBarImpl) then) =
      __$$MiraiSnackBarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> content,
      String? backgroundColor,
      double? elevation,
      MiraiEdgeInsets? margin,
      MiraiEdgeInsets? padding,
      double? width,
      MiraiShapeBorder? shape,
      HitTestBehavior? hitTestBehavior,
      SnackBarBehavior? behavior,
      MiraiSnackBarAction? action,
      double? actionOverflowThreshold,
      bool? showCloseIcon,
      String? closeIconColor,
      MiraiDuration duration,
      Map<String, dynamic>? onVisible,
      DismissDirection? dismissDirection,
      Clip clipBehavior});

  @override
  $MiraiEdgeInsetsCopyWith<$Res>? get margin;
  @override
  $MiraiEdgeInsetsCopyWith<$Res>? get padding;
  @override
  $MiraiShapeBorderCopyWith<$Res>? get shape;
  @override
  $MiraiSnackBarActionCopyWith<$Res>? get action;
  @override
  $MiraiDurationCopyWith<$Res> get duration;
}

/// @nodoc
class __$$MiraiSnackBarImplCopyWithImpl<$Res>
    extends _$MiraiSnackBarCopyWithImpl<$Res, _$MiraiSnackBarImpl>
    implements _$$MiraiSnackBarImplCopyWith<$Res> {
  __$$MiraiSnackBarImplCopyWithImpl(
      _$MiraiSnackBarImpl _value, $Res Function(_$MiraiSnackBarImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiSnackBar
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
    return _then(_$MiraiSnackBarImpl(
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
              as MiraiEdgeInsets?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as MiraiShapeBorder?,
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
              as MiraiSnackBarAction?,
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
              as MiraiDuration,
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
class _$MiraiSnackBarImpl implements _MiraiSnackBar {
  const _$MiraiSnackBarImpl(
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
      this.duration = const MiraiDuration(milliseconds: 4000),
      final Map<String, dynamic>? onVisible,
      this.dismissDirection,
      this.clipBehavior = Clip.hardEdge})
      : _content = content,
        _onVisible = onVisible;

  factory _$MiraiSnackBarImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiSnackBarImplFromJson(json);

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
  final MiraiEdgeInsets? margin;
  @override
  final MiraiEdgeInsets? padding;
  @override
  final double? width;
  @override
  final MiraiShapeBorder? shape;
  @override
  final HitTestBehavior? hitTestBehavior;
  @override
  final SnackBarBehavior? behavior;
  @override
  final MiraiSnackBarAction? action;
  @override
  final double? actionOverflowThreshold;
  @override
  final bool? showCloseIcon;
  @override
  final String? closeIconColor;
  @override
  @JsonKey()
  final MiraiDuration duration;
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
    return 'MiraiSnackBar(content: $content, backgroundColor: $backgroundColor, elevation: $elevation, margin: $margin, padding: $padding, width: $width, shape: $shape, hitTestBehavior: $hitTestBehavior, behavior: $behavior, action: $action, actionOverflowThreshold: $actionOverflowThreshold, showCloseIcon: $showCloseIcon, closeIconColor: $closeIconColor, duration: $duration, onVisible: $onVisible, dismissDirection: $dismissDirection, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiSnackBarImpl &&
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

  /// Create a copy of MiraiSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiSnackBarImplCopyWith<_$MiraiSnackBarImpl> get copyWith =>
      __$$MiraiSnackBarImplCopyWithImpl<_$MiraiSnackBarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiSnackBarImplToJson(
      this,
    );
  }
}

abstract class _MiraiSnackBar implements MiraiSnackBar {
  const factory _MiraiSnackBar(
      {required final Map<String, dynamic> content,
      final String? backgroundColor,
      final double? elevation,
      final MiraiEdgeInsets? margin,
      final MiraiEdgeInsets? padding,
      final double? width,
      final MiraiShapeBorder? shape,
      final HitTestBehavior? hitTestBehavior,
      final SnackBarBehavior? behavior,
      final MiraiSnackBarAction? action,
      final double? actionOverflowThreshold,
      final bool? showCloseIcon,
      final String? closeIconColor,
      final MiraiDuration duration,
      final Map<String, dynamic>? onVisible,
      final DismissDirection? dismissDirection,
      final Clip clipBehavior}) = _$MiraiSnackBarImpl;

  factory _MiraiSnackBar.fromJson(Map<String, dynamic> json) =
      _$MiraiSnackBarImpl.fromJson;

  @override
  Map<String, dynamic> get content;
  @override
  String? get backgroundColor;
  @override
  double? get elevation;
  @override
  MiraiEdgeInsets? get margin;
  @override
  MiraiEdgeInsets? get padding;
  @override
  double? get width;
  @override
  MiraiShapeBorder? get shape;
  @override
  HitTestBehavior? get hitTestBehavior;
  @override
  SnackBarBehavior? get behavior;
  @override
  MiraiSnackBarAction? get action;
  @override
  double? get actionOverflowThreshold;
  @override
  bool? get showCloseIcon;
  @override
  String? get closeIconColor;
  @override
  MiraiDuration get duration;
  @override
  Map<String, dynamic>? get onVisible;
  @override
  DismissDirection? get dismissDirection;
  @override
  Clip get clipBehavior;

  /// Create a copy of MiraiSnackBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiSnackBarImplCopyWith<_$MiraiSnackBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
