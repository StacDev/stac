// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_dialog_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDialogTheme {
  String? get backgroundColor;
  double? get elevation;
  String? get shadowColor;
  String? get surfaceTintColor;
  StacBorder? get shape;
  StacAlignmentGeometry? get alignment;
  StacTextStyle? get titleTextStyle;
  StacTextStyle? get contentTextStyle;
  StacEdgeInsets? get actionsPadding;
  String? get iconColor;

  /// Create a copy of StacDialogTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDialogThemeCopyWith<StacDialogTheme> get copyWith =>
      _$StacDialogThemeCopyWithImpl<StacDialogTheme>(
          this as StacDialogTheme, _$identity);

  /// Serializes this StacDialogTheme to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDialogTheme &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            (identical(other.contentTextStyle, contentTextStyle) ||
                other.contentTextStyle == contentTextStyle) &&
            (identical(other.actionsPadding, actionsPadding) ||
                other.actionsPadding == actionsPadding) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      shape,
      alignment,
      titleTextStyle,
      contentTextStyle,
      actionsPadding,
      iconColor);

  @override
  String toString() {
    return 'StacDialogTheme(backgroundColor: $backgroundColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, shape: $shape, alignment: $alignment, titleTextStyle: $titleTextStyle, contentTextStyle: $contentTextStyle, actionsPadding: $actionsPadding, iconColor: $iconColor)';
  }
}

/// @nodoc
abstract mixin class $StacDialogThemeCopyWith<$Res> {
  factory $StacDialogThemeCopyWith(
          StacDialogTheme value, $Res Function(StacDialogTheme) _then) =
      _$StacDialogThemeCopyWithImpl;
  @useResult
  $Res call(
      {String? backgroundColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacBorder? shape,
      StacAlignmentGeometry? alignment,
      StacTextStyle? titleTextStyle,
      StacTextStyle? contentTextStyle,
      StacEdgeInsets? actionsPadding,
      String? iconColor});

  $StacBorderCopyWith<$Res>? get shape;
  $StacAlignmentGeometryCopyWith<$Res>? get alignment;
  $StacTextStyleCopyWith<$Res>? get titleTextStyle;
  $StacTextStyleCopyWith<$Res>? get contentTextStyle;
  $StacEdgeInsetsCopyWith<$Res>? get actionsPadding;
}

/// @nodoc
class _$StacDialogThemeCopyWithImpl<$Res>
    implements $StacDialogThemeCopyWith<$Res> {
  _$StacDialogThemeCopyWithImpl(this._self, this._then);

  final StacDialogTheme _self;
  final $Res Function(StacDialogTheme) _then;

  /// Create a copy of StacDialogTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? alignment = freezed,
    Object? titleTextStyle = freezed,
    Object? contentTextStyle = freezed,
    Object? actionsPadding = freezed,
    Object? iconColor = freezed,
  }) {
    return _then(_self.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentGeometry?,
      titleTextStyle: freezed == titleTextStyle
          ? _self.titleTextStyle
          : titleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      contentTextStyle: freezed == contentTextStyle
          ? _self.contentTextStyle
          : contentTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      actionsPadding: freezed == actionsPadding
          ? _self.actionsPadding
          : actionsPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      iconColor: freezed == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StacDialogTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacDialogTheme
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

  /// Create a copy of StacDialogTheme
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

  /// Create a copy of StacDialogTheme
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

  /// Create a copy of StacDialogTheme
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
}

/// @nodoc
@JsonSerializable()
class _StacDialogTheme implements StacDialogTheme {
  const _StacDialogTheme(
      {this.backgroundColor,
      this.elevation,
      this.shadowColor,
      this.surfaceTintColor,
      this.shape,
      this.alignment,
      this.titleTextStyle,
      this.contentTextStyle,
      this.actionsPadding,
      this.iconColor});
  factory _StacDialogTheme.fromJson(Map<String, dynamic> json) =>
      _$StacDialogThemeFromJson(json);

  @override
  final String? backgroundColor;
  @override
  final double? elevation;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final StacBorder? shape;
  @override
  final StacAlignmentGeometry? alignment;
  @override
  final StacTextStyle? titleTextStyle;
  @override
  final StacTextStyle? contentTextStyle;
  @override
  final StacEdgeInsets? actionsPadding;
  @override
  final String? iconColor;

  /// Create a copy of StacDialogTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDialogThemeCopyWith<_StacDialogTheme> get copyWith =>
      __$StacDialogThemeCopyWithImpl<_StacDialogTheme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDialogThemeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDialogTheme &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            (identical(other.contentTextStyle, contentTextStyle) ||
                other.contentTextStyle == contentTextStyle) &&
            (identical(other.actionsPadding, actionsPadding) ||
                other.actionsPadding == actionsPadding) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      shape,
      alignment,
      titleTextStyle,
      contentTextStyle,
      actionsPadding,
      iconColor);

  @override
  String toString() {
    return 'StacDialogTheme(backgroundColor: $backgroundColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, shape: $shape, alignment: $alignment, titleTextStyle: $titleTextStyle, contentTextStyle: $contentTextStyle, actionsPadding: $actionsPadding, iconColor: $iconColor)';
  }
}

/// @nodoc
abstract mixin class _$StacDialogThemeCopyWith<$Res>
    implements $StacDialogThemeCopyWith<$Res> {
  factory _$StacDialogThemeCopyWith(
          _StacDialogTheme value, $Res Function(_StacDialogTheme) _then) =
      __$StacDialogThemeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? backgroundColor,
      double? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacBorder? shape,
      StacAlignmentGeometry? alignment,
      StacTextStyle? titleTextStyle,
      StacTextStyle? contentTextStyle,
      StacEdgeInsets? actionsPadding,
      String? iconColor});

  @override
  $StacBorderCopyWith<$Res>? get shape;
  @override
  $StacAlignmentGeometryCopyWith<$Res>? get alignment;
  @override
  $StacTextStyleCopyWith<$Res>? get titleTextStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get contentTextStyle;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get actionsPadding;
}

/// @nodoc
class __$StacDialogThemeCopyWithImpl<$Res>
    implements _$StacDialogThemeCopyWith<$Res> {
  __$StacDialogThemeCopyWithImpl(this._self, this._then);

  final _StacDialogTheme _self;
  final $Res Function(_StacDialogTheme) _then;

  /// Create a copy of StacDialogTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? alignment = freezed,
    Object? titleTextStyle = freezed,
    Object? contentTextStyle = freezed,
    Object? actionsPadding = freezed,
    Object? iconColor = freezed,
  }) {
    return _then(_StacDialogTheme(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentGeometry?,
      titleTextStyle: freezed == titleTextStyle
          ? _self.titleTextStyle
          : titleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      contentTextStyle: freezed == contentTextStyle
          ? _self.contentTextStyle
          : contentTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      actionsPadding: freezed == actionsPadding
          ? _self.actionsPadding
          : actionsPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      iconColor: freezed == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StacDialogTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacDialogTheme
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

  /// Create a copy of StacDialogTheme
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

  /// Create a copy of StacDialogTheme
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

  /// Create a copy of StacDialogTheme
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
}

// dart format on
