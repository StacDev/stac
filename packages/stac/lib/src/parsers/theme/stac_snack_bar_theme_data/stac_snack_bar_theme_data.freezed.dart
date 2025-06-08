// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_snack_bar_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSnackBarThemeData {
  SnackBarBehavior? get behavior;
  String? get backgroundColor;
  double? get elevation;
  StacShapeBorder? get shape;
  double? get width;
  StacTextStyle? get contentTextStyle;
  String? get actionTextColor;
  String? get disabledActionTextColor;
  StacEdgeInsets? get insetPadding;
  DismissDirection? get dismissDirection;
  bool? get showCloseIcon;
  String? get closeIconColor;
  double? get actionOverflowThreshold;
  String? get actionBackgroundColor;
  String? get disabledActionBackgroundColor;

  /// Create a copy of StacSnackBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSnackBarThemeDataCopyWith<StacSnackBarThemeData> get copyWith =>
      _$StacSnackBarThemeDataCopyWithImpl<StacSnackBarThemeData>(
          this as StacSnackBarThemeData, _$identity);

  /// Serializes this StacSnackBarThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSnackBarThemeData &&
            (identical(other.behavior, behavior) ||
                other.behavior == behavior) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.contentTextStyle, contentTextStyle) ||
                other.contentTextStyle == contentTextStyle) &&
            (identical(other.actionTextColor, actionTextColor) ||
                other.actionTextColor == actionTextColor) &&
            (identical(
                    other.disabledActionTextColor, disabledActionTextColor) ||
                other.disabledActionTextColor == disabledActionTextColor) &&
            (identical(other.insetPadding, insetPadding) ||
                other.insetPadding == insetPadding) &&
            (identical(other.dismissDirection, dismissDirection) ||
                other.dismissDirection == dismissDirection) &&
            (identical(other.showCloseIcon, showCloseIcon) ||
                other.showCloseIcon == showCloseIcon) &&
            (identical(other.closeIconColor, closeIconColor) ||
                other.closeIconColor == closeIconColor) &&
            (identical(
                    other.actionOverflowThreshold, actionOverflowThreshold) ||
                other.actionOverflowThreshold == actionOverflowThreshold) &&
            (identical(other.actionBackgroundColor, actionBackgroundColor) ||
                other.actionBackgroundColor == actionBackgroundColor) &&
            (identical(other.disabledActionBackgroundColor,
                    disabledActionBackgroundColor) ||
                other.disabledActionBackgroundColor ==
                    disabledActionBackgroundColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      behavior,
      backgroundColor,
      elevation,
      shape,
      width,
      contentTextStyle,
      actionTextColor,
      disabledActionTextColor,
      insetPadding,
      dismissDirection,
      showCloseIcon,
      closeIconColor,
      actionOverflowThreshold,
      actionBackgroundColor,
      disabledActionBackgroundColor);

  @override
  String toString() {
    return 'StacSnackBarThemeData(behavior: $behavior, backgroundColor: $backgroundColor, elevation: $elevation, shape: $shape, width: $width, contentTextStyle: $contentTextStyle, actionTextColor: $actionTextColor, disabledActionTextColor: $disabledActionTextColor, insetPadding: $insetPadding, dismissDirection: $dismissDirection, showCloseIcon: $showCloseIcon, closeIconColor: $closeIconColor, actionOverflowThreshold: $actionOverflowThreshold, actionBackgroundColor: $actionBackgroundColor, disabledActionBackgroundColor: $disabledActionBackgroundColor)';
  }
}

/// @nodoc
abstract mixin class $StacSnackBarThemeDataCopyWith<$Res> {
  factory $StacSnackBarThemeDataCopyWith(StacSnackBarThemeData value,
          $Res Function(StacSnackBarThemeData) _then) =
      _$StacSnackBarThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {SnackBarBehavior? behavior,
      String? backgroundColor,
      double? elevation,
      StacShapeBorder? shape,
      double? width,
      StacTextStyle? contentTextStyle,
      String? actionTextColor,
      String? disabledActionTextColor,
      StacEdgeInsets? insetPadding,
      DismissDirection? dismissDirection,
      bool? showCloseIcon,
      String? closeIconColor,
      double? actionOverflowThreshold,
      String? actionBackgroundColor,
      String? disabledActionBackgroundColor});

  $StacShapeBorderCopyWith<$Res>? get shape;
  $StacTextStyleCopyWith<$Res>? get contentTextStyle;
  $StacEdgeInsetsCopyWith<$Res>? get insetPadding;
}

/// @nodoc
class _$StacSnackBarThemeDataCopyWithImpl<$Res>
    implements $StacSnackBarThemeDataCopyWith<$Res> {
  _$StacSnackBarThemeDataCopyWithImpl(this._self, this._then);

  final StacSnackBarThemeData _self;
  final $Res Function(StacSnackBarThemeData) _then;

  /// Create a copy of StacSnackBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? behavior = freezed,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shape = freezed,
    Object? width = freezed,
    Object? contentTextStyle = freezed,
    Object? actionTextColor = freezed,
    Object? disabledActionTextColor = freezed,
    Object? insetPadding = freezed,
    Object? dismissDirection = freezed,
    Object? showCloseIcon = freezed,
    Object? closeIconColor = freezed,
    Object? actionOverflowThreshold = freezed,
    Object? actionBackgroundColor = freezed,
    Object? disabledActionBackgroundColor = freezed,
  }) {
    return _then(_self.copyWith(
      behavior: freezed == behavior
          ? _self.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as SnackBarBehavior?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      contentTextStyle: freezed == contentTextStyle
          ? _self.contentTextStyle
          : contentTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      actionTextColor: freezed == actionTextColor
          ? _self.actionTextColor
          : actionTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledActionTextColor: freezed == disabledActionTextColor
          ? _self.disabledActionTextColor
          : disabledActionTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
      insetPadding: freezed == insetPadding
          ? _self.insetPadding
          : insetPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      dismissDirection: freezed == dismissDirection
          ? _self.dismissDirection
          : dismissDirection // ignore: cast_nullable_to_non_nullable
              as DismissDirection?,
      showCloseIcon: freezed == showCloseIcon
          ? _self.showCloseIcon
          : showCloseIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
      closeIconColor: freezed == closeIconColor
          ? _self.closeIconColor
          : closeIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      actionOverflowThreshold: freezed == actionOverflowThreshold
          ? _self.actionOverflowThreshold
          : actionOverflowThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
      actionBackgroundColor: freezed == actionBackgroundColor
          ? _self.actionBackgroundColor
          : actionBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledActionBackgroundColor: freezed == disabledActionBackgroundColor
          ? _self.disabledActionBackgroundColor
          : disabledActionBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StacSnackBarThemeData
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

  /// Create a copy of StacSnackBarThemeData
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

  /// Create a copy of StacSnackBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get insetPadding {
    if (_self.insetPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.insetPadding!, (value) {
      return _then(_self.copyWith(insetPadding: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacSnackBarThemeData implements StacSnackBarThemeData {
  const _StacSnackBarThemeData(
      {this.behavior,
      this.backgroundColor,
      this.elevation,
      this.shape,
      this.width,
      this.contentTextStyle,
      this.actionTextColor,
      this.disabledActionTextColor,
      this.insetPadding,
      this.dismissDirection,
      this.showCloseIcon,
      this.closeIconColor,
      this.actionOverflowThreshold,
      this.actionBackgroundColor,
      this.disabledActionBackgroundColor});
  factory _StacSnackBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarThemeDataFromJson(json);

  @override
  final SnackBarBehavior? behavior;
  @override
  final String? backgroundColor;
  @override
  final double? elevation;
  @override
  final StacShapeBorder? shape;
  @override
  final double? width;
  @override
  final StacTextStyle? contentTextStyle;
  @override
  final String? actionTextColor;
  @override
  final String? disabledActionTextColor;
  @override
  final StacEdgeInsets? insetPadding;
  @override
  final DismissDirection? dismissDirection;
  @override
  final bool? showCloseIcon;
  @override
  final String? closeIconColor;
  @override
  final double? actionOverflowThreshold;
  @override
  final String? actionBackgroundColor;
  @override
  final String? disabledActionBackgroundColor;

  /// Create a copy of StacSnackBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSnackBarThemeDataCopyWith<_StacSnackBarThemeData> get copyWith =>
      __$StacSnackBarThemeDataCopyWithImpl<_StacSnackBarThemeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSnackBarThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSnackBarThemeData &&
            (identical(other.behavior, behavior) ||
                other.behavior == behavior) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.contentTextStyle, contentTextStyle) ||
                other.contentTextStyle == contentTextStyle) &&
            (identical(other.actionTextColor, actionTextColor) ||
                other.actionTextColor == actionTextColor) &&
            (identical(
                    other.disabledActionTextColor, disabledActionTextColor) ||
                other.disabledActionTextColor == disabledActionTextColor) &&
            (identical(other.insetPadding, insetPadding) ||
                other.insetPadding == insetPadding) &&
            (identical(other.dismissDirection, dismissDirection) ||
                other.dismissDirection == dismissDirection) &&
            (identical(other.showCloseIcon, showCloseIcon) ||
                other.showCloseIcon == showCloseIcon) &&
            (identical(other.closeIconColor, closeIconColor) ||
                other.closeIconColor == closeIconColor) &&
            (identical(
                    other.actionOverflowThreshold, actionOverflowThreshold) ||
                other.actionOverflowThreshold == actionOverflowThreshold) &&
            (identical(other.actionBackgroundColor, actionBackgroundColor) ||
                other.actionBackgroundColor == actionBackgroundColor) &&
            (identical(other.disabledActionBackgroundColor,
                    disabledActionBackgroundColor) ||
                other.disabledActionBackgroundColor ==
                    disabledActionBackgroundColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      behavior,
      backgroundColor,
      elevation,
      shape,
      width,
      contentTextStyle,
      actionTextColor,
      disabledActionTextColor,
      insetPadding,
      dismissDirection,
      showCloseIcon,
      closeIconColor,
      actionOverflowThreshold,
      actionBackgroundColor,
      disabledActionBackgroundColor);

  @override
  String toString() {
    return 'StacSnackBarThemeData(behavior: $behavior, backgroundColor: $backgroundColor, elevation: $elevation, shape: $shape, width: $width, contentTextStyle: $contentTextStyle, actionTextColor: $actionTextColor, disabledActionTextColor: $disabledActionTextColor, insetPadding: $insetPadding, dismissDirection: $dismissDirection, showCloseIcon: $showCloseIcon, closeIconColor: $closeIconColor, actionOverflowThreshold: $actionOverflowThreshold, actionBackgroundColor: $actionBackgroundColor, disabledActionBackgroundColor: $disabledActionBackgroundColor)';
  }
}

/// @nodoc
abstract mixin class _$StacSnackBarThemeDataCopyWith<$Res>
    implements $StacSnackBarThemeDataCopyWith<$Res> {
  factory _$StacSnackBarThemeDataCopyWith(_StacSnackBarThemeData value,
          $Res Function(_StacSnackBarThemeData) _then) =
      __$StacSnackBarThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SnackBarBehavior? behavior,
      String? backgroundColor,
      double? elevation,
      StacShapeBorder? shape,
      double? width,
      StacTextStyle? contentTextStyle,
      String? actionTextColor,
      String? disabledActionTextColor,
      StacEdgeInsets? insetPadding,
      DismissDirection? dismissDirection,
      bool? showCloseIcon,
      String? closeIconColor,
      double? actionOverflowThreshold,
      String? actionBackgroundColor,
      String? disabledActionBackgroundColor});

  @override
  $StacShapeBorderCopyWith<$Res>? get shape;
  @override
  $StacTextStyleCopyWith<$Res>? get contentTextStyle;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get insetPadding;
}

/// @nodoc
class __$StacSnackBarThemeDataCopyWithImpl<$Res>
    implements _$StacSnackBarThemeDataCopyWith<$Res> {
  __$StacSnackBarThemeDataCopyWithImpl(this._self, this._then);

  final _StacSnackBarThemeData _self;
  final $Res Function(_StacSnackBarThemeData) _then;

  /// Create a copy of StacSnackBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? behavior = freezed,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shape = freezed,
    Object? width = freezed,
    Object? contentTextStyle = freezed,
    Object? actionTextColor = freezed,
    Object? disabledActionTextColor = freezed,
    Object? insetPadding = freezed,
    Object? dismissDirection = freezed,
    Object? showCloseIcon = freezed,
    Object? closeIconColor = freezed,
    Object? actionOverflowThreshold = freezed,
    Object? actionBackgroundColor = freezed,
    Object? disabledActionBackgroundColor = freezed,
  }) {
    return _then(_StacSnackBarThemeData(
      behavior: freezed == behavior
          ? _self.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as SnackBarBehavior?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      contentTextStyle: freezed == contentTextStyle
          ? _self.contentTextStyle
          : contentTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      actionTextColor: freezed == actionTextColor
          ? _self.actionTextColor
          : actionTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledActionTextColor: freezed == disabledActionTextColor
          ? _self.disabledActionTextColor
          : disabledActionTextColor // ignore: cast_nullable_to_non_nullable
              as String?,
      insetPadding: freezed == insetPadding
          ? _self.insetPadding
          : insetPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      dismissDirection: freezed == dismissDirection
          ? _self.dismissDirection
          : dismissDirection // ignore: cast_nullable_to_non_nullable
              as DismissDirection?,
      showCloseIcon: freezed == showCloseIcon
          ? _self.showCloseIcon
          : showCloseIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
      closeIconColor: freezed == closeIconColor
          ? _self.closeIconColor
          : closeIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      actionOverflowThreshold: freezed == actionOverflowThreshold
          ? _self.actionOverflowThreshold
          : actionOverflowThreshold // ignore: cast_nullable_to_non_nullable
              as double?,
      actionBackgroundColor: freezed == actionBackgroundColor
          ? _self.actionBackgroundColor
          : actionBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledActionBackgroundColor: freezed == disabledActionBackgroundColor
          ? _self.disabledActionBackgroundColor
          : disabledActionBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StacSnackBarThemeData
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

  /// Create a copy of StacSnackBarThemeData
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

  /// Create a copy of StacSnackBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get insetPadding {
    if (_self.insetPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.insetPadding!, (value) {
      return _then(_self.copyWith(insetPadding: value));
    });
  }
}

// dart format on
