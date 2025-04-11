// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_list_tile_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacListTileThemeData {
  bool? get dense;
  StacBorder? get shape;
  ListTileStyle? get style;
  String? get selectedColor;
  String? get iconColor;
  String? get textColor;
  StacTextStyle? get titleTextStyle;
  StacTextStyle? get subtitleTextStyle;
  StacTextStyle? get leadingAndTrailingTextStyle;
  StacEdgeInsets? get contentPadding;
  String? get tileColor;
  String? get selectedTileColor;
  double? get horizontalTitleGap;
  double? get minVerticalPadding;
  double? get minLeadingWidth;
  bool? get enableFeedback;
  StacVisualDensity? get visualDensity;
  ListTileTitleAlignment? get titleAlignment;
  List<StacShadow>? get shadows;

  /// Create a copy of StacListTileThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacListTileThemeDataCopyWith<StacListTileThemeData> get copyWith =>
      _$StacListTileThemeDataCopyWithImpl<StacListTileThemeData>(
          this as StacListTileThemeData, _$identity);

  /// Serializes this StacListTileThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacListTileThemeData &&
            (identical(other.dense, dense) || other.dense == dense) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            (identical(other.subtitleTextStyle, subtitleTextStyle) ||
                other.subtitleTextStyle == subtitleTextStyle) &&
            (identical(other.leadingAndTrailingTextStyle,
                    leadingAndTrailingTextStyle) ||
                other.leadingAndTrailingTextStyle ==
                    leadingAndTrailingTextStyle) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            (identical(other.tileColor, tileColor) ||
                other.tileColor == tileColor) &&
            (identical(other.selectedTileColor, selectedTileColor) ||
                other.selectedTileColor == selectedTileColor) &&
            (identical(other.horizontalTitleGap, horizontalTitleGap) ||
                other.horizontalTitleGap == horizontalTitleGap) &&
            (identical(other.minVerticalPadding, minVerticalPadding) ||
                other.minVerticalPadding == minVerticalPadding) &&
            (identical(other.minLeadingWidth, minLeadingWidth) ||
                other.minLeadingWidth == minLeadingWidth) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.visualDensity, visualDensity) ||
                other.visualDensity == visualDensity) &&
            (identical(other.titleAlignment, titleAlignment) ||
                other.titleAlignment == titleAlignment) &&
            const DeepCollectionEquality().equals(other.shadows, shadows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dense,
        shape,
        style,
        selectedColor,
        iconColor,
        textColor,
        titleTextStyle,
        subtitleTextStyle,
        leadingAndTrailingTextStyle,
        contentPadding,
        tileColor,
        selectedTileColor,
        horizontalTitleGap,
        minVerticalPadding,
        minLeadingWidth,
        enableFeedback,
        visualDensity,
        titleAlignment,
        const DeepCollectionEquality().hash(shadows)
      ]);

  @override
  String toString() {
    return 'StacListTileThemeData(dense: $dense, shape: $shape, style: $style, selectedColor: $selectedColor, iconColor: $iconColor, textColor: $textColor, titleTextStyle: $titleTextStyle, subtitleTextStyle: $subtitleTextStyle, leadingAndTrailingTextStyle: $leadingAndTrailingTextStyle, contentPadding: $contentPadding, tileColor: $tileColor, selectedTileColor: $selectedTileColor, horizontalTitleGap: $horizontalTitleGap, minVerticalPadding: $minVerticalPadding, minLeadingWidth: $minLeadingWidth, enableFeedback: $enableFeedback, visualDensity: $visualDensity, titleAlignment: $titleAlignment, shadows: $shadows)';
  }
}

/// @nodoc
abstract mixin class $StacListTileThemeDataCopyWith<$Res> {
  factory $StacListTileThemeDataCopyWith(StacListTileThemeData value,
          $Res Function(StacListTileThemeData) _then) =
      _$StacListTileThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {bool? dense,
      StacBorder? shape,
      ListTileStyle? style,
      String? selectedColor,
      String? iconColor,
      String? textColor,
      StacTextStyle? titleTextStyle,
      StacTextStyle? subtitleTextStyle,
      StacTextStyle? leadingAndTrailingTextStyle,
      StacEdgeInsets? contentPadding,
      String? tileColor,
      String? selectedTileColor,
      double? horizontalTitleGap,
      double? minVerticalPadding,
      double? minLeadingWidth,
      bool? enableFeedback,
      StacVisualDensity? visualDensity,
      ListTileTitleAlignment? titleAlignment,
      List<StacShadow>? shadows});

  $StacBorderCopyWith<$Res>? get shape;
  $StacTextStyleCopyWith<$Res>? get titleTextStyle;
  $StacTextStyleCopyWith<$Res>? get subtitleTextStyle;
  $StacTextStyleCopyWith<$Res>? get leadingAndTrailingTextStyle;
  $StacEdgeInsetsCopyWith<$Res>? get contentPadding;
  $StacVisualDensityCopyWith<$Res>? get visualDensity;
}

/// @nodoc
class _$StacListTileThemeDataCopyWithImpl<$Res>
    implements $StacListTileThemeDataCopyWith<$Res> {
  _$StacListTileThemeDataCopyWithImpl(this._self, this._then);

  final StacListTileThemeData _self;
  final $Res Function(StacListTileThemeData) _then;

  /// Create a copy of StacListTileThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dense = freezed,
    Object? shape = freezed,
    Object? style = freezed,
    Object? selectedColor = freezed,
    Object? iconColor = freezed,
    Object? textColor = freezed,
    Object? titleTextStyle = freezed,
    Object? subtitleTextStyle = freezed,
    Object? leadingAndTrailingTextStyle = freezed,
    Object? contentPadding = freezed,
    Object? tileColor = freezed,
    Object? selectedTileColor = freezed,
    Object? horizontalTitleGap = freezed,
    Object? minVerticalPadding = freezed,
    Object? minLeadingWidth = freezed,
    Object? enableFeedback = freezed,
    Object? visualDensity = freezed,
    Object? titleAlignment = freezed,
    Object? shadows = freezed,
  }) {
    return _then(_self.copyWith(
      dense: freezed == dense
          ? _self.dense
          : dense // ignore: cast_nullable_to_non_nullable
              as bool?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as ListTileStyle?,
      selectedColor: freezed == selectedColor
          ? _self.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconColor: freezed == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _self.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      titleTextStyle: freezed == titleTextStyle
          ? _self.titleTextStyle
          : titleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      subtitleTextStyle: freezed == subtitleTextStyle
          ? _self.subtitleTextStyle
          : subtitleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      leadingAndTrailingTextStyle: freezed == leadingAndTrailingTextStyle
          ? _self.leadingAndTrailingTextStyle
          : leadingAndTrailingTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      contentPadding: freezed == contentPadding
          ? _self.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      tileColor: freezed == tileColor
          ? _self.tileColor
          : tileColor // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTileColor: freezed == selectedTileColor
          ? _self.selectedTileColor
          : selectedTileColor // ignore: cast_nullable_to_non_nullable
              as String?,
      horizontalTitleGap: freezed == horizontalTitleGap
          ? _self.horizontalTitleGap
          : horizontalTitleGap // ignore: cast_nullable_to_non_nullable
              as double?,
      minVerticalPadding: freezed == minVerticalPadding
          ? _self.minVerticalPadding
          : minVerticalPadding // ignore: cast_nullable_to_non_nullable
              as double?,
      minLeadingWidth: freezed == minLeadingWidth
          ? _self.minLeadingWidth
          : minLeadingWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      visualDensity: freezed == visualDensity
          ? _self.visualDensity
          : visualDensity // ignore: cast_nullable_to_non_nullable
              as StacVisualDensity?,
      titleAlignment: freezed == titleAlignment
          ? _self.titleAlignment
          : titleAlignment // ignore: cast_nullable_to_non_nullable
              as ListTileTitleAlignment?,
      shadows: freezed == shadows
          ? _self.shadows
          : shadows // ignore: cast_nullable_to_non_nullable
              as List<StacShadow>?,
    ));
  }

  /// Create a copy of StacListTileThemeData
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

  /// Create a copy of StacListTileThemeData
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

  /// Create a copy of StacListTileThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get subtitleTextStyle {
    if (_self.subtitleTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.subtitleTextStyle!, (value) {
      return _then(_self.copyWith(subtitleTextStyle: value));
    });
  }

  /// Create a copy of StacListTileThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get leadingAndTrailingTextStyle {
    if (_self.leadingAndTrailingTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.leadingAndTrailingTextStyle!,
        (value) {
      return _then(_self.copyWith(leadingAndTrailingTextStyle: value));
    });
  }

  /// Create a copy of StacListTileThemeData
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

  /// Create a copy of StacListTileThemeData
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
}

/// @nodoc
@JsonSerializable()
class _StacListTileThemeData implements StacListTileThemeData {
  const _StacListTileThemeData(
      {this.dense,
      this.shape,
      this.style,
      this.selectedColor,
      this.iconColor,
      this.textColor,
      this.titleTextStyle,
      this.subtitleTextStyle,
      this.leadingAndTrailingTextStyle,
      this.contentPadding,
      this.tileColor,
      this.selectedTileColor,
      this.horizontalTitleGap,
      this.minVerticalPadding,
      this.minLeadingWidth,
      this.enableFeedback,
      this.visualDensity,
      this.titleAlignment,
      final List<StacShadow>? shadows})
      : _shadows = shadows;
  factory _StacListTileThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacListTileThemeDataFromJson(json);

  @override
  final bool? dense;
  @override
  final StacBorder? shape;
  @override
  final ListTileStyle? style;
  @override
  final String? selectedColor;
  @override
  final String? iconColor;
  @override
  final String? textColor;
  @override
  final StacTextStyle? titleTextStyle;
  @override
  final StacTextStyle? subtitleTextStyle;
  @override
  final StacTextStyle? leadingAndTrailingTextStyle;
  @override
  final StacEdgeInsets? contentPadding;
  @override
  final String? tileColor;
  @override
  final String? selectedTileColor;
  @override
  final double? horizontalTitleGap;
  @override
  final double? minVerticalPadding;
  @override
  final double? minLeadingWidth;
  @override
  final bool? enableFeedback;
  @override
  final StacVisualDensity? visualDensity;
  @override
  final ListTileTitleAlignment? titleAlignment;
  final List<StacShadow>? _shadows;
  @override
  List<StacShadow>? get shadows {
    final value = _shadows;
    if (value == null) return null;
    if (_shadows is EqualUnmodifiableListView) return _shadows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of StacListTileThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacListTileThemeDataCopyWith<_StacListTileThemeData> get copyWith =>
      __$StacListTileThemeDataCopyWithImpl<_StacListTileThemeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacListTileThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacListTileThemeData &&
            (identical(other.dense, dense) || other.dense == dense) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            (identical(other.subtitleTextStyle, subtitleTextStyle) ||
                other.subtitleTextStyle == subtitleTextStyle) &&
            (identical(other.leadingAndTrailingTextStyle,
                    leadingAndTrailingTextStyle) ||
                other.leadingAndTrailingTextStyle ==
                    leadingAndTrailingTextStyle) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            (identical(other.tileColor, tileColor) ||
                other.tileColor == tileColor) &&
            (identical(other.selectedTileColor, selectedTileColor) ||
                other.selectedTileColor == selectedTileColor) &&
            (identical(other.horizontalTitleGap, horizontalTitleGap) ||
                other.horizontalTitleGap == horizontalTitleGap) &&
            (identical(other.minVerticalPadding, minVerticalPadding) ||
                other.minVerticalPadding == minVerticalPadding) &&
            (identical(other.minLeadingWidth, minLeadingWidth) ||
                other.minLeadingWidth == minLeadingWidth) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.visualDensity, visualDensity) ||
                other.visualDensity == visualDensity) &&
            (identical(other.titleAlignment, titleAlignment) ||
                other.titleAlignment == titleAlignment) &&
            const DeepCollectionEquality().equals(other._shadows, _shadows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dense,
        shape,
        style,
        selectedColor,
        iconColor,
        textColor,
        titleTextStyle,
        subtitleTextStyle,
        leadingAndTrailingTextStyle,
        contentPadding,
        tileColor,
        selectedTileColor,
        horizontalTitleGap,
        minVerticalPadding,
        minLeadingWidth,
        enableFeedback,
        visualDensity,
        titleAlignment,
        const DeepCollectionEquality().hash(_shadows)
      ]);

  @override
  String toString() {
    return 'StacListTileThemeData(dense: $dense, shape: $shape, style: $style, selectedColor: $selectedColor, iconColor: $iconColor, textColor: $textColor, titleTextStyle: $titleTextStyle, subtitleTextStyle: $subtitleTextStyle, leadingAndTrailingTextStyle: $leadingAndTrailingTextStyle, contentPadding: $contentPadding, tileColor: $tileColor, selectedTileColor: $selectedTileColor, horizontalTitleGap: $horizontalTitleGap, minVerticalPadding: $minVerticalPadding, minLeadingWidth: $minLeadingWidth, enableFeedback: $enableFeedback, visualDensity: $visualDensity, titleAlignment: $titleAlignment, shadows: $shadows)';
  }
}

/// @nodoc
abstract mixin class _$StacListTileThemeDataCopyWith<$Res>
    implements $StacListTileThemeDataCopyWith<$Res> {
  factory _$StacListTileThemeDataCopyWith(_StacListTileThemeData value,
          $Res Function(_StacListTileThemeData) _then) =
      __$StacListTileThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? dense,
      StacBorder? shape,
      ListTileStyle? style,
      String? selectedColor,
      String? iconColor,
      String? textColor,
      StacTextStyle? titleTextStyle,
      StacTextStyle? subtitleTextStyle,
      StacTextStyle? leadingAndTrailingTextStyle,
      StacEdgeInsets? contentPadding,
      String? tileColor,
      String? selectedTileColor,
      double? horizontalTitleGap,
      double? minVerticalPadding,
      double? minLeadingWidth,
      bool? enableFeedback,
      StacVisualDensity? visualDensity,
      ListTileTitleAlignment? titleAlignment,
      List<StacShadow>? shadows});

  @override
  $StacBorderCopyWith<$Res>? get shape;
  @override
  $StacTextStyleCopyWith<$Res>? get titleTextStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get subtitleTextStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get leadingAndTrailingTextStyle;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get contentPadding;
  @override
  $StacVisualDensityCopyWith<$Res>? get visualDensity;
}

/// @nodoc
class __$StacListTileThemeDataCopyWithImpl<$Res>
    implements _$StacListTileThemeDataCopyWith<$Res> {
  __$StacListTileThemeDataCopyWithImpl(this._self, this._then);

  final _StacListTileThemeData _self;
  final $Res Function(_StacListTileThemeData) _then;

  /// Create a copy of StacListTileThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dense = freezed,
    Object? shape = freezed,
    Object? style = freezed,
    Object? selectedColor = freezed,
    Object? iconColor = freezed,
    Object? textColor = freezed,
    Object? titleTextStyle = freezed,
    Object? subtitleTextStyle = freezed,
    Object? leadingAndTrailingTextStyle = freezed,
    Object? contentPadding = freezed,
    Object? tileColor = freezed,
    Object? selectedTileColor = freezed,
    Object? horizontalTitleGap = freezed,
    Object? minVerticalPadding = freezed,
    Object? minLeadingWidth = freezed,
    Object? enableFeedback = freezed,
    Object? visualDensity = freezed,
    Object? titleAlignment = freezed,
    Object? shadows = freezed,
  }) {
    return _then(_StacListTileThemeData(
      dense: freezed == dense
          ? _self.dense
          : dense // ignore: cast_nullable_to_non_nullable
              as bool?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as ListTileStyle?,
      selectedColor: freezed == selectedColor
          ? _self.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconColor: freezed == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _self.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      titleTextStyle: freezed == titleTextStyle
          ? _self.titleTextStyle
          : titleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      subtitleTextStyle: freezed == subtitleTextStyle
          ? _self.subtitleTextStyle
          : subtitleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      leadingAndTrailingTextStyle: freezed == leadingAndTrailingTextStyle
          ? _self.leadingAndTrailingTextStyle
          : leadingAndTrailingTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      contentPadding: freezed == contentPadding
          ? _self.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      tileColor: freezed == tileColor
          ? _self.tileColor
          : tileColor // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTileColor: freezed == selectedTileColor
          ? _self.selectedTileColor
          : selectedTileColor // ignore: cast_nullable_to_non_nullable
              as String?,
      horizontalTitleGap: freezed == horizontalTitleGap
          ? _self.horizontalTitleGap
          : horizontalTitleGap // ignore: cast_nullable_to_non_nullable
              as double?,
      minVerticalPadding: freezed == minVerticalPadding
          ? _self.minVerticalPadding
          : minVerticalPadding // ignore: cast_nullable_to_non_nullable
              as double?,
      minLeadingWidth: freezed == minLeadingWidth
          ? _self.minLeadingWidth
          : minLeadingWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      visualDensity: freezed == visualDensity
          ? _self.visualDensity
          : visualDensity // ignore: cast_nullable_to_non_nullable
              as StacVisualDensity?,
      titleAlignment: freezed == titleAlignment
          ? _self.titleAlignment
          : titleAlignment // ignore: cast_nullable_to_non_nullable
              as ListTileTitleAlignment?,
      shadows: freezed == shadows
          ? _self._shadows
          : shadows // ignore: cast_nullable_to_non_nullable
              as List<StacShadow>?,
    ));
  }

  /// Create a copy of StacListTileThemeData
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

  /// Create a copy of StacListTileThemeData
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

  /// Create a copy of StacListTileThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get subtitleTextStyle {
    if (_self.subtitleTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.subtitleTextStyle!, (value) {
      return _then(_self.copyWith(subtitleTextStyle: value));
    });
  }

  /// Create a copy of StacListTileThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get leadingAndTrailingTextStyle {
    if (_self.leadingAndTrailingTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.leadingAndTrailingTextStyle!,
        (value) {
      return _then(_self.copyWith(leadingAndTrailingTextStyle: value));
    });
  }

  /// Create a copy of StacListTileThemeData
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

  /// Create a copy of StacListTileThemeData
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
}

// dart format on
