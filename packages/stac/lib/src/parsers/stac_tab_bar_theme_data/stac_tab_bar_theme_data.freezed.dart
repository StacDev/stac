// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_tab_bar_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacTabBarThemeData {
  StacBoxDecoration? get indicator;
  String? get indicatorColor;
  TabBarIndicatorSize? get indicatorSize;
  String? get dividerColor;
  String? get labelColor;
  StacEdgeInsets? get labelPadding;
  StacTextStyle? get labelStyle;
  String? get unselectedLabelColor;
  StacTextStyle? get unselectedLabelStyle;
  String? get overlayColor;

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTabBarThemeDataCopyWith<StacTabBarThemeData> get copyWith =>
      _$StacTabBarThemeDataCopyWithImpl<StacTabBarThemeData>(
          this as StacTabBarThemeData, _$identity);

  /// Serializes this StacTabBarThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTabBarThemeData &&
            (identical(other.indicator, indicator) ||
                other.indicator == indicator) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.indicatorSize, indicatorSize) ||
                other.indicatorSize == indicatorSize) &&
            (identical(other.dividerColor, dividerColor) ||
                other.dividerColor == dividerColor) &&
            (identical(other.labelColor, labelColor) ||
                other.labelColor == labelColor) &&
            (identical(other.labelPadding, labelPadding) ||
                other.labelPadding == labelPadding) &&
            (identical(other.labelStyle, labelStyle) ||
                other.labelStyle == labelStyle) &&
            (identical(other.unselectedLabelColor, unselectedLabelColor) ||
                other.unselectedLabelColor == unselectedLabelColor) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      indicator,
      indicatorColor,
      indicatorSize,
      dividerColor,
      labelColor,
      labelPadding,
      labelStyle,
      unselectedLabelColor,
      unselectedLabelStyle,
      overlayColor);

  @override
  String toString() {
    return 'StacTabBarThemeData(indicator: $indicator, indicatorColor: $indicatorColor, indicatorSize: $indicatorSize, dividerColor: $dividerColor, labelColor: $labelColor, labelPadding: $labelPadding, labelStyle: $labelStyle, unselectedLabelColor: $unselectedLabelColor, unselectedLabelStyle: $unselectedLabelStyle, overlayColor: $overlayColor)';
  }
}

/// @nodoc
abstract mixin class $StacTabBarThemeDataCopyWith<$Res> {
  factory $StacTabBarThemeDataCopyWith(
          StacTabBarThemeData value, $Res Function(StacTabBarThemeData) _then) =
      _$StacTabBarThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {StacBoxDecoration? indicator,
      String? indicatorColor,
      TabBarIndicatorSize? indicatorSize,
      String? dividerColor,
      String? labelColor,
      StacEdgeInsets? labelPadding,
      StacTextStyle? labelStyle,
      String? unselectedLabelColor,
      StacTextStyle? unselectedLabelStyle,
      String? overlayColor});

  $StacBoxDecorationCopyWith<$Res>? get indicator;
  $StacEdgeInsetsCopyWith<$Res>? get labelPadding;
  $StacTextStyleCopyWith<$Res>? get labelStyle;
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle;
}

/// @nodoc
class _$StacTabBarThemeDataCopyWithImpl<$Res>
    implements $StacTabBarThemeDataCopyWith<$Res> {
  _$StacTabBarThemeDataCopyWithImpl(this._self, this._then);

  final StacTabBarThemeData _self;
  final $Res Function(StacTabBarThemeData) _then;

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicator = freezed,
    Object? indicatorColor = freezed,
    Object? indicatorSize = freezed,
    Object? dividerColor = freezed,
    Object? labelColor = freezed,
    Object? labelPadding = freezed,
    Object? labelStyle = freezed,
    Object? unselectedLabelColor = freezed,
    Object? unselectedLabelStyle = freezed,
    Object? overlayColor = freezed,
  }) {
    return _then(_self.copyWith(
      indicator: freezed == indicator
          ? _self.indicator
          : indicator // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorSize: freezed == indicatorSize
          ? _self.indicatorSize
          : indicatorSize // ignore: cast_nullable_to_non_nullable
              as TabBarIndicatorSize?,
      dividerColor: freezed == dividerColor
          ? _self.dividerColor
          : dividerColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelColor: freezed == labelColor
          ? _self.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelPadding: freezed == labelPadding
          ? _self.labelPadding
          : labelPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      labelStyle: freezed == labelStyle
          ? _self.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      unselectedLabelColor: freezed == unselectedLabelColor
          ? _self.unselectedLabelColor
          : unselectedLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _self.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxDecorationCopyWith<$Res>? get indicator {
    if (_self.indicator == null) {
      return null;
    }

    return $StacBoxDecorationCopyWith<$Res>(_self.indicator!, (value) {
      return _then(_self.copyWith(indicator: value));
    });
  }

  /// Create a copy of StacTabBarThemeData
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

  /// Create a copy of StacTabBarThemeData
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

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle {
    if (_self.unselectedLabelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.unselectedLabelStyle!, (value) {
      return _then(_self.copyWith(unselectedLabelStyle: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacTabBarThemeData implements StacTabBarThemeData {
  const _StacTabBarThemeData(
      {this.indicator,
      this.indicatorColor,
      this.indicatorSize,
      this.dividerColor,
      this.labelColor,
      this.labelPadding,
      this.labelStyle,
      this.unselectedLabelColor,
      this.unselectedLabelStyle,
      this.overlayColor});
  factory _StacTabBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacTabBarThemeDataFromJson(json);

  @override
  final StacBoxDecoration? indicator;
  @override
  final String? indicatorColor;
  @override
  final TabBarIndicatorSize? indicatorSize;
  @override
  final String? dividerColor;
  @override
  final String? labelColor;
  @override
  final StacEdgeInsets? labelPadding;
  @override
  final StacTextStyle? labelStyle;
  @override
  final String? unselectedLabelColor;
  @override
  final StacTextStyle? unselectedLabelStyle;
  @override
  final String? overlayColor;

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTabBarThemeDataCopyWith<_StacTabBarThemeData> get copyWith =>
      __$StacTabBarThemeDataCopyWithImpl<_StacTabBarThemeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTabBarThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTabBarThemeData &&
            (identical(other.indicator, indicator) ||
                other.indicator == indicator) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.indicatorSize, indicatorSize) ||
                other.indicatorSize == indicatorSize) &&
            (identical(other.dividerColor, dividerColor) ||
                other.dividerColor == dividerColor) &&
            (identical(other.labelColor, labelColor) ||
                other.labelColor == labelColor) &&
            (identical(other.labelPadding, labelPadding) ||
                other.labelPadding == labelPadding) &&
            (identical(other.labelStyle, labelStyle) ||
                other.labelStyle == labelStyle) &&
            (identical(other.unselectedLabelColor, unselectedLabelColor) ||
                other.unselectedLabelColor == unselectedLabelColor) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      indicator,
      indicatorColor,
      indicatorSize,
      dividerColor,
      labelColor,
      labelPadding,
      labelStyle,
      unselectedLabelColor,
      unselectedLabelStyle,
      overlayColor);

  @override
  String toString() {
    return 'StacTabBarThemeData(indicator: $indicator, indicatorColor: $indicatorColor, indicatorSize: $indicatorSize, dividerColor: $dividerColor, labelColor: $labelColor, labelPadding: $labelPadding, labelStyle: $labelStyle, unselectedLabelColor: $unselectedLabelColor, unselectedLabelStyle: $unselectedLabelStyle, overlayColor: $overlayColor)';
  }
}

/// @nodoc
abstract mixin class _$StacTabBarThemeDataCopyWith<$Res>
    implements $StacTabBarThemeDataCopyWith<$Res> {
  factory _$StacTabBarThemeDataCopyWith(_StacTabBarThemeData value,
          $Res Function(_StacTabBarThemeData) _then) =
      __$StacTabBarThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacBoxDecoration? indicator,
      String? indicatorColor,
      TabBarIndicatorSize? indicatorSize,
      String? dividerColor,
      String? labelColor,
      StacEdgeInsets? labelPadding,
      StacTextStyle? labelStyle,
      String? unselectedLabelColor,
      StacTextStyle? unselectedLabelStyle,
      String? overlayColor});

  @override
  $StacBoxDecorationCopyWith<$Res>? get indicator;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get labelPadding;
  @override
  $StacTextStyleCopyWith<$Res>? get labelStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle;
}

/// @nodoc
class __$StacTabBarThemeDataCopyWithImpl<$Res>
    implements _$StacTabBarThemeDataCopyWith<$Res> {
  __$StacTabBarThemeDataCopyWithImpl(this._self, this._then);

  final _StacTabBarThemeData _self;
  final $Res Function(_StacTabBarThemeData) _then;

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? indicator = freezed,
    Object? indicatorColor = freezed,
    Object? indicatorSize = freezed,
    Object? dividerColor = freezed,
    Object? labelColor = freezed,
    Object? labelPadding = freezed,
    Object? labelStyle = freezed,
    Object? unselectedLabelColor = freezed,
    Object? unselectedLabelStyle = freezed,
    Object? overlayColor = freezed,
  }) {
    return _then(_StacTabBarThemeData(
      indicator: freezed == indicator
          ? _self.indicator
          : indicator // ignore: cast_nullable_to_non_nullable
              as StacBoxDecoration?,
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorSize: freezed == indicatorSize
          ? _self.indicatorSize
          : indicatorSize // ignore: cast_nullable_to_non_nullable
              as TabBarIndicatorSize?,
      dividerColor: freezed == dividerColor
          ? _self.dividerColor
          : dividerColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelColor: freezed == labelColor
          ? _self.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelPadding: freezed == labelPadding
          ? _self.labelPadding
          : labelPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      labelStyle: freezed == labelStyle
          ? _self.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      unselectedLabelColor: freezed == unselectedLabelColor
          ? _self.unselectedLabelColor
          : unselectedLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _self.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBoxDecorationCopyWith<$Res>? get indicator {
    if (_self.indicator == null) {
      return null;
    }

    return $StacBoxDecorationCopyWith<$Res>(_self.indicator!, (value) {
      return _then(_self.copyWith(indicator: value));
    });
  }

  /// Create a copy of StacTabBarThemeData
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

  /// Create a copy of StacTabBarThemeData
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

  /// Create a copy of StacTabBarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle {
    if (_self.unselectedLabelStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.unselectedLabelStyle!, (value) {
      return _then(_self.copyWith(unselectedLabelStyle: value));
    });
  }
}

// dart format on
