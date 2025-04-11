// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_button_style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacButtonStyle {
  String? get foregroundColor;
  String? get backgroundColor;
  String? get disabledForegroundColor;
  String? get disabledBackgroundColor;
  String? get shadowColor;
  String? get surfaceTintColor;
  String? get iconColor;
  String? get disabledIconColor;
  double? get elevation;
  StacTextStyle? get textStyle;
  StacEdgeInsets? get padding;
  StacSize? get minimumSize;
  StacSize? get fixedSize;
  StacSize? get maximumSize;
  StacBorderSide? get side;
  StacRoundedRectangleBorder? get shape;
  bool? get enableFeedback;
  double? get iconSize;

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacButtonStyleCopyWith<StacButtonStyle> get copyWith =>
      _$StacButtonStyleCopyWithImpl<StacButtonStyle>(
          this as StacButtonStyle, _$identity);

  /// Serializes this StacButtonStyle to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacButtonStyle &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(
                    other.disabledForegroundColor, disabledForegroundColor) ||
                other.disabledForegroundColor == disabledForegroundColor) &&
            (identical(
                    other.disabledBackgroundColor, disabledBackgroundColor) ||
                other.disabledBackgroundColor == disabledBackgroundColor) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.disabledIconColor, disabledIconColor) ||
                other.disabledIconColor == disabledIconColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.minimumSize, minimumSize) ||
                other.minimumSize == minimumSize) &&
            (identical(other.fixedSize, fixedSize) ||
                other.fixedSize == fixedSize) &&
            (identical(other.maximumSize, maximumSize) ||
                other.maximumSize == maximumSize) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.iconSize, iconSize) ||
                other.iconSize == iconSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      foregroundColor,
      backgroundColor,
      disabledForegroundColor,
      disabledBackgroundColor,
      shadowColor,
      surfaceTintColor,
      iconColor,
      disabledIconColor,
      elevation,
      textStyle,
      padding,
      minimumSize,
      fixedSize,
      maximumSize,
      side,
      shape,
      enableFeedback,
      iconSize);

  @override
  String toString() {
    return 'StacButtonStyle(foregroundColor: $foregroundColor, backgroundColor: $backgroundColor, disabledForegroundColor: $disabledForegroundColor, disabledBackgroundColor: $disabledBackgroundColor, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, iconColor: $iconColor, disabledIconColor: $disabledIconColor, elevation: $elevation, textStyle: $textStyle, padding: $padding, minimumSize: $minimumSize, fixedSize: $fixedSize, maximumSize: $maximumSize, side: $side, shape: $shape, enableFeedback: $enableFeedback, iconSize: $iconSize)';
  }
}

/// @nodoc
abstract mixin class $StacButtonStyleCopyWith<$Res> {
  factory $StacButtonStyleCopyWith(
          StacButtonStyle value, $Res Function(StacButtonStyle) _then) =
      _$StacButtonStyleCopyWithImpl;
  @useResult
  $Res call(
      {String? foregroundColor,
      String? backgroundColor,
      String? disabledForegroundColor,
      String? disabledBackgroundColor,
      String? shadowColor,
      String? surfaceTintColor,
      String? iconColor,
      String? disabledIconColor,
      double? elevation,
      StacTextStyle? textStyle,
      StacEdgeInsets? padding,
      StacSize? minimumSize,
      StacSize? fixedSize,
      StacSize? maximumSize,
      StacBorderSide? side,
      StacRoundedRectangleBorder? shape,
      bool? enableFeedback,
      double? iconSize});

  $StacTextStyleCopyWith<$Res>? get textStyle;
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  $StacSizeCopyWith<$Res>? get minimumSize;
  $StacSizeCopyWith<$Res>? get fixedSize;
  $StacSizeCopyWith<$Res>? get maximumSize;
  $StacBorderSideCopyWith<$Res>? get side;
  $StacRoundedRectangleBorderCopyWith<$Res>? get shape;
}

/// @nodoc
class _$StacButtonStyleCopyWithImpl<$Res>
    implements $StacButtonStyleCopyWith<$Res> {
  _$StacButtonStyleCopyWithImpl(this._self, this._then);

  final StacButtonStyle _self;
  final $Res Function(StacButtonStyle) _then;

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foregroundColor = freezed,
    Object? backgroundColor = freezed,
    Object? disabledForegroundColor = freezed,
    Object? disabledBackgroundColor = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? iconColor = freezed,
    Object? disabledIconColor = freezed,
    Object? elevation = freezed,
    Object? textStyle = freezed,
    Object? padding = freezed,
    Object? minimumSize = freezed,
    Object? fixedSize = freezed,
    Object? maximumSize = freezed,
    Object? side = freezed,
    Object? shape = freezed,
    Object? enableFeedback = freezed,
    Object? iconSize = freezed,
  }) {
    return _then(_self.copyWith(
      foregroundColor: freezed == foregroundColor
          ? _self.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledForegroundColor: freezed == disabledForegroundColor
          ? _self.disabledForegroundColor
          : disabledForegroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledBackgroundColor: freezed == disabledBackgroundColor
          ? _self.disabledBackgroundColor
          : disabledBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconColor: freezed == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledIconColor: freezed == disabledIconColor
          ? _self.disabledIconColor
          : disabledIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      textStyle: freezed == textStyle
          ? _self.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      minimumSize: freezed == minimumSize
          ? _self.minimumSize
          : minimumSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      fixedSize: freezed == fixedSize
          ? _self.fixedSize
          : fixedSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      maximumSize: freezed == maximumSize
          ? _self.maximumSize
          : maximumSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      side: freezed == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacRoundedRectangleBorder?,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      iconSize: freezed == iconSize
          ? _self.iconSize
          : iconSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get textStyle {
    if (_self.textStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.textStyle!, (value) {
      return _then(_self.copyWith(textStyle: value));
    });
  }

  /// Create a copy of StacButtonStyle
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

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<$Res>? get minimumSize {
    if (_self.minimumSize == null) {
      return null;
    }

    return $StacSizeCopyWith<$Res>(_self.minimumSize!, (value) {
      return _then(_self.copyWith(minimumSize: value));
    });
  }

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<$Res>? get fixedSize {
    if (_self.fixedSize == null) {
      return null;
    }

    return $StacSizeCopyWith<$Res>(_self.fixedSize!, (value) {
      return _then(_self.copyWith(fixedSize: value));
    });
  }

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<$Res>? get maximumSize {
    if (_self.maximumSize == null) {
      return null;
    }

    return $StacSizeCopyWith<$Res>(_self.maximumSize!, (value) {
      return _then(_self.copyWith(maximumSize: value));
    });
  }

  /// Create a copy of StacButtonStyle
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

  /// Create a copy of StacButtonStyle
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
}

/// @nodoc
@JsonSerializable()
class _StacButtonStyle implements StacButtonStyle {
  const _StacButtonStyle(
      {this.foregroundColor,
      this.backgroundColor,
      this.disabledForegroundColor,
      this.disabledBackgroundColor,
      this.shadowColor,
      this.surfaceTintColor,
      this.iconColor,
      this.disabledIconColor,
      this.elevation,
      this.textStyle,
      this.padding,
      this.minimumSize,
      this.fixedSize,
      this.maximumSize,
      this.side,
      this.shape,
      this.enableFeedback,
      this.iconSize});
  factory _StacButtonStyle.fromJson(Map<String, dynamic> json) =>
      _$StacButtonStyleFromJson(json);

  @override
  final String? foregroundColor;
  @override
  final String? backgroundColor;
  @override
  final String? disabledForegroundColor;
  @override
  final String? disabledBackgroundColor;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final String? iconColor;
  @override
  final String? disabledIconColor;
  @override
  final double? elevation;
  @override
  final StacTextStyle? textStyle;
  @override
  final StacEdgeInsets? padding;
  @override
  final StacSize? minimumSize;
  @override
  final StacSize? fixedSize;
  @override
  final StacSize? maximumSize;
  @override
  final StacBorderSide? side;
  @override
  final StacRoundedRectangleBorder? shape;
  @override
  final bool? enableFeedback;
  @override
  final double? iconSize;

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacButtonStyleCopyWith<_StacButtonStyle> get copyWith =>
      __$StacButtonStyleCopyWithImpl<_StacButtonStyle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacButtonStyleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacButtonStyle &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(
                    other.disabledForegroundColor, disabledForegroundColor) ||
                other.disabledForegroundColor == disabledForegroundColor) &&
            (identical(
                    other.disabledBackgroundColor, disabledBackgroundColor) ||
                other.disabledBackgroundColor == disabledBackgroundColor) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.disabledIconColor, disabledIconColor) ||
                other.disabledIconColor == disabledIconColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.minimumSize, minimumSize) ||
                other.minimumSize == minimumSize) &&
            (identical(other.fixedSize, fixedSize) ||
                other.fixedSize == fixedSize) &&
            (identical(other.maximumSize, maximumSize) ||
                other.maximumSize == maximumSize) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.iconSize, iconSize) ||
                other.iconSize == iconSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      foregroundColor,
      backgroundColor,
      disabledForegroundColor,
      disabledBackgroundColor,
      shadowColor,
      surfaceTintColor,
      iconColor,
      disabledIconColor,
      elevation,
      textStyle,
      padding,
      minimumSize,
      fixedSize,
      maximumSize,
      side,
      shape,
      enableFeedback,
      iconSize);

  @override
  String toString() {
    return 'StacButtonStyle(foregroundColor: $foregroundColor, backgroundColor: $backgroundColor, disabledForegroundColor: $disabledForegroundColor, disabledBackgroundColor: $disabledBackgroundColor, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, iconColor: $iconColor, disabledIconColor: $disabledIconColor, elevation: $elevation, textStyle: $textStyle, padding: $padding, minimumSize: $minimumSize, fixedSize: $fixedSize, maximumSize: $maximumSize, side: $side, shape: $shape, enableFeedback: $enableFeedback, iconSize: $iconSize)';
  }
}

/// @nodoc
abstract mixin class _$StacButtonStyleCopyWith<$Res>
    implements $StacButtonStyleCopyWith<$Res> {
  factory _$StacButtonStyleCopyWith(
          _StacButtonStyle value, $Res Function(_StacButtonStyle) _then) =
      __$StacButtonStyleCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? foregroundColor,
      String? backgroundColor,
      String? disabledForegroundColor,
      String? disabledBackgroundColor,
      String? shadowColor,
      String? surfaceTintColor,
      String? iconColor,
      String? disabledIconColor,
      double? elevation,
      StacTextStyle? textStyle,
      StacEdgeInsets? padding,
      StacSize? minimumSize,
      StacSize? fixedSize,
      StacSize? maximumSize,
      StacBorderSide? side,
      StacRoundedRectangleBorder? shape,
      bool? enableFeedback,
      double? iconSize});

  @override
  $StacTextStyleCopyWith<$Res>? get textStyle;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  @override
  $StacSizeCopyWith<$Res>? get minimumSize;
  @override
  $StacSizeCopyWith<$Res>? get fixedSize;
  @override
  $StacSizeCopyWith<$Res>? get maximumSize;
  @override
  $StacBorderSideCopyWith<$Res>? get side;
  @override
  $StacRoundedRectangleBorderCopyWith<$Res>? get shape;
}

/// @nodoc
class __$StacButtonStyleCopyWithImpl<$Res>
    implements _$StacButtonStyleCopyWith<$Res> {
  __$StacButtonStyleCopyWithImpl(this._self, this._then);

  final _StacButtonStyle _self;
  final $Res Function(_StacButtonStyle) _then;

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? foregroundColor = freezed,
    Object? backgroundColor = freezed,
    Object? disabledForegroundColor = freezed,
    Object? disabledBackgroundColor = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? iconColor = freezed,
    Object? disabledIconColor = freezed,
    Object? elevation = freezed,
    Object? textStyle = freezed,
    Object? padding = freezed,
    Object? minimumSize = freezed,
    Object? fixedSize = freezed,
    Object? maximumSize = freezed,
    Object? side = freezed,
    Object? shape = freezed,
    Object? enableFeedback = freezed,
    Object? iconSize = freezed,
  }) {
    return _then(_StacButtonStyle(
      foregroundColor: freezed == foregroundColor
          ? _self.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledForegroundColor: freezed == disabledForegroundColor
          ? _self.disabledForegroundColor
          : disabledForegroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledBackgroundColor: freezed == disabledBackgroundColor
          ? _self.disabledBackgroundColor
          : disabledBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconColor: freezed == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledIconColor: freezed == disabledIconColor
          ? _self.disabledIconColor
          : disabledIconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      textStyle: freezed == textStyle
          ? _self.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      minimumSize: freezed == minimumSize
          ? _self.minimumSize
          : minimumSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      fixedSize: freezed == fixedSize
          ? _self.fixedSize
          : fixedSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      maximumSize: freezed == maximumSize
          ? _self.maximumSize
          : maximumSize // ignore: cast_nullable_to_non_nullable
              as StacSize?,
      side: freezed == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacRoundedRectangleBorder?,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      iconSize: freezed == iconSize
          ? _self.iconSize
          : iconSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get textStyle {
    if (_self.textStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.textStyle!, (value) {
      return _then(_self.copyWith(textStyle: value));
    });
  }

  /// Create a copy of StacButtonStyle
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

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<$Res>? get minimumSize {
    if (_self.minimumSize == null) {
      return null;
    }

    return $StacSizeCopyWith<$Res>(_self.minimumSize!, (value) {
      return _then(_self.copyWith(minimumSize: value));
    });
  }

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<$Res>? get fixedSize {
    if (_self.fixedSize == null) {
      return null;
    }

    return $StacSizeCopyWith<$Res>(_self.fixedSize!, (value) {
      return _then(_self.copyWith(fixedSize: value));
    });
  }

  /// Create a copy of StacButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacSizeCopyWith<$Res>? get maximumSize {
    if (_self.maximumSize == null) {
      return null;
    }

    return $StacSizeCopyWith<$Res>(_self.maximumSize!, (value) {
      return _then(_self.copyWith(maximumSize: value));
    });
  }

  /// Create a copy of StacButtonStyle
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

  /// Create a copy of StacButtonStyle
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
}

// dart format on
