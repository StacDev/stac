// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_app_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacAppBar {
  Map<String, dynamic>? get leading;
  Map<String, dynamic>? get title;
  StacTextStyle? get titleTextStyle;
  StacTextStyle? get toolbarTextStyle;
  String? get shadowColor;
  String? get backgroundColor;
  String? get foregroundColor;
  String? get surfaceTintColor;
  List<Map<String, dynamic>> get actions;
  Map<String, dynamic>? get bottom;
  StacDouble? get titleSpacing;
  StacDouble get toolbarOpacity;
  StacDouble get bottomOpacity;
  StacDouble? get toolbarHeight;
  StacDouble? get leadingWidth;
  bool get primary;
  bool? get centerTitle;
  StacDouble? get elevation;
  StacDouble? get scrolledUnderElevation;

  /// Create a copy of StacAppBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacAppBarCopyWith<StacAppBar> get copyWith =>
      _$StacAppBarCopyWithImpl<StacAppBar>(this as StacAppBar, _$identity);

  /// Serializes this StacAppBar to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacAppBar &&
            const DeepCollectionEquality().equals(other.leading, leading) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            (identical(other.toolbarTextStyle, toolbarTextStyle) ||
                other.toolbarTextStyle == toolbarTextStyle) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            const DeepCollectionEquality().equals(other.bottom, bottom) &&
            (identical(other.titleSpacing, titleSpacing) ||
                other.titleSpacing == titleSpacing) &&
            (identical(other.toolbarOpacity, toolbarOpacity) ||
                other.toolbarOpacity == toolbarOpacity) &&
            (identical(other.bottomOpacity, bottomOpacity) ||
                other.bottomOpacity == bottomOpacity) &&
            (identical(other.toolbarHeight, toolbarHeight) ||
                other.toolbarHeight == toolbarHeight) &&
            (identical(other.leadingWidth, leadingWidth) ||
                other.leadingWidth == leadingWidth) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.centerTitle, centerTitle) ||
                other.centerTitle == centerTitle) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.scrolledUnderElevation, scrolledUnderElevation) ||
                other.scrolledUnderElevation == scrolledUnderElevation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(leading),
        const DeepCollectionEquality().hash(title),
        titleTextStyle,
        toolbarTextStyle,
        shadowColor,
        backgroundColor,
        foregroundColor,
        surfaceTintColor,
        const DeepCollectionEquality().hash(actions),
        const DeepCollectionEquality().hash(bottom),
        titleSpacing,
        toolbarOpacity,
        bottomOpacity,
        toolbarHeight,
        leadingWidth,
        primary,
        centerTitle,
        elevation,
        scrolledUnderElevation
      ]);

  @override
  String toString() {
    return 'StacAppBar(leading: $leading, title: $title, titleTextStyle: $titleTextStyle, toolbarTextStyle: $toolbarTextStyle, shadowColor: $shadowColor, backgroundColor: $backgroundColor, foregroundColor: $foregroundColor, surfaceTintColor: $surfaceTintColor, actions: $actions, bottom: $bottom, titleSpacing: $titleSpacing, toolbarOpacity: $toolbarOpacity, bottomOpacity: $bottomOpacity, toolbarHeight: $toolbarHeight, leadingWidth: $leadingWidth, primary: $primary, centerTitle: $centerTitle, elevation: $elevation, scrolledUnderElevation: $scrolledUnderElevation)';
  }
}

/// @nodoc
abstract mixin class $StacAppBarCopyWith<$Res> {
  factory $StacAppBarCopyWith(
          StacAppBar value, $Res Function(StacAppBar) _then) =
      _$StacAppBarCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? leading,
      Map<String, dynamic>? title,
      StacTextStyle? titleTextStyle,
      StacTextStyle? toolbarTextStyle,
      String? shadowColor,
      String? backgroundColor,
      String? foregroundColor,
      String? surfaceTintColor,
      List<Map<String, dynamic>> actions,
      Map<String, dynamic>? bottom,
      StacDouble? titleSpacing,
      StacDouble toolbarOpacity,
      StacDouble bottomOpacity,
      StacDouble? toolbarHeight,
      StacDouble? leadingWidth,
      bool primary,
      bool? centerTitle,
      StacDouble? elevation,
      StacDouble? scrolledUnderElevation});

  $StacTextStyleCopyWith<$Res>? get titleTextStyle;
  $StacTextStyleCopyWith<$Res>? get toolbarTextStyle;
}

/// @nodoc
class _$StacAppBarCopyWithImpl<$Res> implements $StacAppBarCopyWith<$Res> {
  _$StacAppBarCopyWithImpl(this._self, this._then);

  final StacAppBar _self;
  final $Res Function(StacAppBar) _then;

  /// Create a copy of StacAppBar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leading = freezed,
    Object? title = freezed,
    Object? titleTextStyle = freezed,
    Object? toolbarTextStyle = freezed,
    Object? shadowColor = freezed,
    Object? backgroundColor = freezed,
    Object? foregroundColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? actions = null,
    Object? bottom = freezed,
    Object? titleSpacing = freezed,
    Object? toolbarOpacity = null,
    Object? bottomOpacity = null,
    Object? toolbarHeight = freezed,
    Object? leadingWidth = freezed,
    Object? primary = null,
    Object? centerTitle = freezed,
    Object? elevation = freezed,
    Object? scrolledUnderElevation = freezed,
  }) {
    return _then(_self.copyWith(
      leading: freezed == leading
          ? _self.leading
          : leading // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      titleTextStyle: freezed == titleTextStyle
          ? _self.titleTextStyle
          : titleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      toolbarTextStyle: freezed == toolbarTextStyle
          ? _self.toolbarTextStyle
          : toolbarTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      foregroundColor: freezed == foregroundColor
          ? _self.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: null == actions
          ? _self.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      bottom: freezed == bottom
          ? _self.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      titleSpacing: freezed == titleSpacing
          ? _self.titleSpacing
          : titleSpacing // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      toolbarOpacity: null == toolbarOpacity
          ? _self.toolbarOpacity
          : toolbarOpacity // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      bottomOpacity: null == bottomOpacity
          ? _self.bottomOpacity
          : bottomOpacity // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      toolbarHeight: freezed == toolbarHeight
          ? _self.toolbarHeight
          : toolbarHeight // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      leadingWidth: freezed == leadingWidth
          ? _self.leadingWidth
          : leadingWidth // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      primary: null == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool,
      centerTitle: freezed == centerTitle
          ? _self.centerTitle
          : centerTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      scrolledUnderElevation: freezed == scrolledUnderElevation
          ? _self.scrolledUnderElevation
          : scrolledUnderElevation // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
    ));
  }

  /// Create a copy of StacAppBar
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

  /// Create a copy of StacAppBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get toolbarTextStyle {
    if (_self.toolbarTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.toolbarTextStyle!, (value) {
      return _then(_self.copyWith(toolbarTextStyle: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacAppBar implements StacAppBar {
  const _StacAppBar(
      {final Map<String, dynamic>? leading,
      final Map<String, dynamic>? title,
      this.titleTextStyle,
      this.toolbarTextStyle,
      this.shadowColor,
      this.backgroundColor,
      this.foregroundColor,
      this.surfaceTintColor,
      final List<Map<String, dynamic>> actions = const [],
      final Map<String, dynamic>? bottom,
      this.titleSpacing,
      this.toolbarOpacity = const StacDouble(1.0),
      this.bottomOpacity = const StacDouble(1.0),
      this.toolbarHeight,
      this.leadingWidth,
      this.primary = true,
      this.centerTitle,
      this.elevation,
      this.scrolledUnderElevation})
      : _leading = leading,
        _title = title,
        _actions = actions,
        _bottom = bottom;
  factory _StacAppBar.fromJson(Map<String, dynamic> json) =>
      _$StacAppBarFromJson(json);

  final Map<String, dynamic>? _leading;
  @override
  Map<String, dynamic>? get leading {
    final value = _leading;
    if (value == null) return null;
    if (_leading is EqualUnmodifiableMapView) return _leading;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

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
  final StacTextStyle? titleTextStyle;
  @override
  final StacTextStyle? toolbarTextStyle;
  @override
  final String? shadowColor;
  @override
  final String? backgroundColor;
  @override
  final String? foregroundColor;
  @override
  final String? surfaceTintColor;
  final List<Map<String, dynamic>> _actions;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  final Map<String, dynamic>? _bottom;
  @override
  Map<String, dynamic>? get bottom {
    final value = _bottom;
    if (value == null) return null;
    if (_bottom is EqualUnmodifiableMapView) return _bottom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacDouble? titleSpacing;
  @override
  @JsonKey()
  final StacDouble toolbarOpacity;
  @override
  @JsonKey()
  final StacDouble bottomOpacity;
  @override
  final StacDouble? toolbarHeight;
  @override
  final StacDouble? leadingWidth;
  @override
  @JsonKey()
  final bool primary;
  @override
  final bool? centerTitle;
  @override
  final StacDouble? elevation;
  @override
  final StacDouble? scrolledUnderElevation;

  /// Create a copy of StacAppBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacAppBarCopyWith<_StacAppBar> get copyWith =>
      __$StacAppBarCopyWithImpl<_StacAppBar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacAppBarToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacAppBar &&
            const DeepCollectionEquality().equals(other._leading, _leading) &&
            const DeepCollectionEquality().equals(other._title, _title) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            (identical(other.toolbarTextStyle, toolbarTextStyle) ||
                other.toolbarTextStyle == toolbarTextStyle) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            const DeepCollectionEquality().equals(other._bottom, _bottom) &&
            (identical(other.titleSpacing, titleSpacing) ||
                other.titleSpacing == titleSpacing) &&
            (identical(other.toolbarOpacity, toolbarOpacity) ||
                other.toolbarOpacity == toolbarOpacity) &&
            (identical(other.bottomOpacity, bottomOpacity) ||
                other.bottomOpacity == bottomOpacity) &&
            (identical(other.toolbarHeight, toolbarHeight) ||
                other.toolbarHeight == toolbarHeight) &&
            (identical(other.leadingWidth, leadingWidth) ||
                other.leadingWidth == leadingWidth) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.centerTitle, centerTitle) ||
                other.centerTitle == centerTitle) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.scrolledUnderElevation, scrolledUnderElevation) ||
                other.scrolledUnderElevation == scrolledUnderElevation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_leading),
        const DeepCollectionEquality().hash(_title),
        titleTextStyle,
        toolbarTextStyle,
        shadowColor,
        backgroundColor,
        foregroundColor,
        surfaceTintColor,
        const DeepCollectionEquality().hash(_actions),
        const DeepCollectionEquality().hash(_bottom),
        titleSpacing,
        toolbarOpacity,
        bottomOpacity,
        toolbarHeight,
        leadingWidth,
        primary,
        centerTitle,
        elevation,
        scrolledUnderElevation
      ]);

  @override
  String toString() {
    return 'StacAppBar(leading: $leading, title: $title, titleTextStyle: $titleTextStyle, toolbarTextStyle: $toolbarTextStyle, shadowColor: $shadowColor, backgroundColor: $backgroundColor, foregroundColor: $foregroundColor, surfaceTintColor: $surfaceTintColor, actions: $actions, bottom: $bottom, titleSpacing: $titleSpacing, toolbarOpacity: $toolbarOpacity, bottomOpacity: $bottomOpacity, toolbarHeight: $toolbarHeight, leadingWidth: $leadingWidth, primary: $primary, centerTitle: $centerTitle, elevation: $elevation, scrolledUnderElevation: $scrolledUnderElevation)';
  }
}

/// @nodoc
abstract mixin class _$StacAppBarCopyWith<$Res>
    implements $StacAppBarCopyWith<$Res> {
  factory _$StacAppBarCopyWith(
          _StacAppBar value, $Res Function(_StacAppBar) _then) =
      __$StacAppBarCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? leading,
      Map<String, dynamic>? title,
      StacTextStyle? titleTextStyle,
      StacTextStyle? toolbarTextStyle,
      String? shadowColor,
      String? backgroundColor,
      String? foregroundColor,
      String? surfaceTintColor,
      List<Map<String, dynamic>> actions,
      Map<String, dynamic>? bottom,
      StacDouble? titleSpacing,
      StacDouble toolbarOpacity,
      StacDouble bottomOpacity,
      StacDouble? toolbarHeight,
      StacDouble? leadingWidth,
      bool primary,
      bool? centerTitle,
      StacDouble? elevation,
      StacDouble? scrolledUnderElevation});

  @override
  $StacTextStyleCopyWith<$Res>? get titleTextStyle;
  @override
  $StacTextStyleCopyWith<$Res>? get toolbarTextStyle;
}

/// @nodoc
class __$StacAppBarCopyWithImpl<$Res> implements _$StacAppBarCopyWith<$Res> {
  __$StacAppBarCopyWithImpl(this._self, this._then);

  final _StacAppBar _self;
  final $Res Function(_StacAppBar) _then;

  /// Create a copy of StacAppBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? leading = freezed,
    Object? title = freezed,
    Object? titleTextStyle = freezed,
    Object? toolbarTextStyle = freezed,
    Object? shadowColor = freezed,
    Object? backgroundColor = freezed,
    Object? foregroundColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? actions = null,
    Object? bottom = freezed,
    Object? titleSpacing = freezed,
    Object? toolbarOpacity = null,
    Object? bottomOpacity = null,
    Object? toolbarHeight = freezed,
    Object? leadingWidth = freezed,
    Object? primary = null,
    Object? centerTitle = freezed,
    Object? elevation = freezed,
    Object? scrolledUnderElevation = freezed,
  }) {
    return _then(_StacAppBar(
      leading: freezed == leading
          ? _self._leading
          : leading // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      title: freezed == title
          ? _self._title
          : title // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      titleTextStyle: freezed == titleTextStyle
          ? _self.titleTextStyle
          : titleTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      toolbarTextStyle: freezed == toolbarTextStyle
          ? _self.toolbarTextStyle
          : toolbarTextStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      foregroundColor: freezed == foregroundColor
          ? _self.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: null == actions
          ? _self._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      bottom: freezed == bottom
          ? _self._bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      titleSpacing: freezed == titleSpacing
          ? _self.titleSpacing
          : titleSpacing // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      toolbarOpacity: null == toolbarOpacity
          ? _self.toolbarOpacity
          : toolbarOpacity // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      bottomOpacity: null == bottomOpacity
          ? _self.bottomOpacity
          : bottomOpacity // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      toolbarHeight: freezed == toolbarHeight
          ? _self.toolbarHeight
          : toolbarHeight // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      leadingWidth: freezed == leadingWidth
          ? _self.leadingWidth
          : leadingWidth // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      primary: null == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool,
      centerTitle: freezed == centerTitle
          ? _self.centerTitle
          : centerTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      scrolledUnderElevation: freezed == scrolledUnderElevation
          ? _self.scrolledUnderElevation
          : scrolledUnderElevation // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
    ));
  }

  /// Create a copy of StacAppBar
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

  /// Create a copy of StacAppBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get toolbarTextStyle {
    if (_self.toolbarTextStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.toolbarTextStyle!, (value) {
      return _then(_self.copyWith(toolbarTextStyle: value));
    });
  }
}

// dart format on
