// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_list_tile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacListTile {
  Map<String, dynamic>? get onTap;
  Map<String, dynamic>? get onLongPress;
  Map<String, dynamic>? get leading;
  Map<String, dynamic>? get title;
  Map<String, dynamic>? get subtitle;
  Map<String, dynamic>? get trailing;
  bool get isThreeLine;
  bool? get dense;
  ListTileStyle? get style;
  String? get selectedColor;
  String? get iconColor;
  String? get textColor;
  StacEdgeInsets? get contentPadding;
  bool get enabled;
  bool get selected;
  String? get focusColor;
  String? get hoverColor;
  bool get autofocus;
  String? get tileColor;
  String? get selectedTileColor;
  bool? get enableFeedback;
  StacDouble? get horizontalTitleGap;
  StacDouble? get minVerticalPadding;
  StacDouble? get minLeadingWidth;

  /// Create a copy of StacListTile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacListTileCopyWith<StacListTile> get copyWith =>
      _$StacListTileCopyWithImpl<StacListTile>(
          this as StacListTile, _$identity);

  /// Serializes this StacListTile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacListTile &&
            const DeepCollectionEquality().equals(other.onTap, onTap) &&
            const DeepCollectionEquality()
                .equals(other.onLongPress, onLongPress) &&
            const DeepCollectionEquality().equals(other.leading, leading) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.trailing, trailing) &&
            (identical(other.isThreeLine, isThreeLine) ||
                other.isThreeLine == isThreeLine) &&
            (identical(other.dense, dense) || other.dense == dense) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.tileColor, tileColor) ||
                other.tileColor == tileColor) &&
            (identical(other.selectedTileColor, selectedTileColor) ||
                other.selectedTileColor == selectedTileColor) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.horizontalTitleGap, horizontalTitleGap) ||
                other.horizontalTitleGap == horizontalTitleGap) &&
            (identical(other.minVerticalPadding, minVerticalPadding) ||
                other.minVerticalPadding == minVerticalPadding) &&
            (identical(other.minLeadingWidth, minLeadingWidth) ||
                other.minLeadingWidth == minLeadingWidth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(onTap),
        const DeepCollectionEquality().hash(onLongPress),
        const DeepCollectionEquality().hash(leading),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(subtitle),
        const DeepCollectionEquality().hash(trailing),
        isThreeLine,
        dense,
        style,
        selectedColor,
        iconColor,
        textColor,
        contentPadding,
        enabled,
        selected,
        focusColor,
        hoverColor,
        autofocus,
        tileColor,
        selectedTileColor,
        enableFeedback,
        horizontalTitleGap,
        minVerticalPadding,
        minLeadingWidth
      ]);

  @override
  String toString() {
    return 'StacListTile(onTap: $onTap, onLongPress: $onLongPress, leading: $leading, title: $title, subtitle: $subtitle, trailing: $trailing, isThreeLine: $isThreeLine, dense: $dense, style: $style, selectedColor: $selectedColor, iconColor: $iconColor, textColor: $textColor, contentPadding: $contentPadding, enabled: $enabled, selected: $selected, focusColor: $focusColor, hoverColor: $hoverColor, autofocus: $autofocus, tileColor: $tileColor, selectedTileColor: $selectedTileColor, enableFeedback: $enableFeedback, horizontalTitleGap: $horizontalTitleGap, minVerticalPadding: $minVerticalPadding, minLeadingWidth: $minLeadingWidth)';
  }
}

/// @nodoc
abstract mixin class $StacListTileCopyWith<$Res> {
  factory $StacListTileCopyWith(
          StacListTile value, $Res Function(StacListTile) _then) =
      _$StacListTileCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? onTap,
      Map<String, dynamic>? onLongPress,
      Map<String, dynamic>? leading,
      Map<String, dynamic>? title,
      Map<String, dynamic>? subtitle,
      Map<String, dynamic>? trailing,
      bool isThreeLine,
      bool? dense,
      ListTileStyle? style,
      String? selectedColor,
      String? iconColor,
      String? textColor,
      StacEdgeInsets? contentPadding,
      bool enabled,
      bool selected,
      String? focusColor,
      String? hoverColor,
      bool autofocus,
      String? tileColor,
      String? selectedTileColor,
      bool? enableFeedback,
      StacDouble? horizontalTitleGap,
      StacDouble? minVerticalPadding,
      StacDouble? minLeadingWidth});

  $StacEdgeInsetsCopyWith<$Res>? get contentPadding;
}

/// @nodoc
class _$StacListTileCopyWithImpl<$Res> implements $StacListTileCopyWith<$Res> {
  _$StacListTileCopyWithImpl(this._self, this._then);

  final StacListTile _self;
  final $Res Function(StacListTile) _then;

  /// Create a copy of StacListTile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onTap = freezed,
    Object? onLongPress = freezed,
    Object? leading = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? trailing = freezed,
    Object? isThreeLine = null,
    Object? dense = freezed,
    Object? style = freezed,
    Object? selectedColor = freezed,
    Object? iconColor = freezed,
    Object? textColor = freezed,
    Object? contentPadding = freezed,
    Object? enabled = null,
    Object? selected = null,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? autofocus = null,
    Object? tileColor = freezed,
    Object? selectedTileColor = freezed,
    Object? enableFeedback = freezed,
    Object? horizontalTitleGap = freezed,
    Object? minVerticalPadding = freezed,
    Object? minLeadingWidth = freezed,
  }) {
    return _then(_self.copyWith(
      onTap: freezed == onTap
          ? _self.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onLongPress: freezed == onLongPress
          ? _self.onLongPress
          : onLongPress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      leading: freezed == leading
          ? _self.leading
          : leading // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      subtitle: freezed == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      trailing: freezed == trailing
          ? _self.trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isThreeLine: null == isThreeLine
          ? _self.isThreeLine
          : isThreeLine // ignore: cast_nullable_to_non_nullable
              as bool,
      dense: freezed == dense
          ? _self.dense
          : dense // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      contentPadding: freezed == contentPadding
          ? _self.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      selected: null == selected
          ? _self.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      tileColor: freezed == tileColor
          ? _self.tileColor
          : tileColor // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTileColor: freezed == selectedTileColor
          ? _self.selectedTileColor
          : selectedTileColor // ignore: cast_nullable_to_non_nullable
              as String?,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      horizontalTitleGap: freezed == horizontalTitleGap
          ? _self.horizontalTitleGap
          : horizontalTitleGap // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      minVerticalPadding: freezed == minVerticalPadding
          ? _self.minVerticalPadding
          : minVerticalPadding // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      minLeadingWidth: freezed == minLeadingWidth
          ? _self.minLeadingWidth
          : minLeadingWidth // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
    ));
  }

  /// Create a copy of StacListTile
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
}

/// @nodoc
@JsonSerializable()
class _StacListTile implements StacListTile {
  const _StacListTile(
      {final Map<String, dynamic>? onTap,
      final Map<String, dynamic>? onLongPress,
      final Map<String, dynamic>? leading,
      final Map<String, dynamic>? title,
      final Map<String, dynamic>? subtitle,
      final Map<String, dynamic>? trailing,
      this.isThreeLine = false,
      this.dense,
      this.style,
      this.selectedColor,
      this.iconColor,
      this.textColor,
      this.contentPadding,
      this.enabled = true,
      this.selected = false,
      this.focusColor,
      this.hoverColor,
      this.autofocus = false,
      this.tileColor,
      this.selectedTileColor,
      this.enableFeedback,
      this.horizontalTitleGap,
      this.minVerticalPadding,
      this.minLeadingWidth})
      : _onTap = onTap,
        _onLongPress = onLongPress,
        _leading = leading,
        _title = title,
        _subtitle = subtitle,
        _trailing = trailing;
  factory _StacListTile.fromJson(Map<String, dynamic> json) =>
      _$StacListTileFromJson(json);

  final Map<String, dynamic>? _onTap;
  @override
  Map<String, dynamic>? get onTap {
    final value = _onTap;
    if (value == null) return null;
    if (_onTap is EqualUnmodifiableMapView) return _onTap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onLongPress;
  @override
  Map<String, dynamic>? get onLongPress {
    final value = _onLongPress;
    if (value == null) return null;
    if (_onLongPress is EqualUnmodifiableMapView) return _onLongPress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

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

  final Map<String, dynamic>? _subtitle;
  @override
  Map<String, dynamic>? get subtitle {
    final value = _subtitle;
    if (value == null) return null;
    if (_subtitle is EqualUnmodifiableMapView) return _subtitle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _trailing;
  @override
  Map<String, dynamic>? get trailing {
    final value = _trailing;
    if (value == null) return null;
    if (_trailing is EqualUnmodifiableMapView) return _trailing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool isThreeLine;
  @override
  final bool? dense;
  @override
  final ListTileStyle? style;
  @override
  final String? selectedColor;
  @override
  final String? iconColor;
  @override
  final String? textColor;
  @override
  final StacEdgeInsets? contentPadding;
  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final bool selected;
  @override
  final String? focusColor;
  @override
  final String? hoverColor;
  @override
  @JsonKey()
  final bool autofocus;
  @override
  final String? tileColor;
  @override
  final String? selectedTileColor;
  @override
  final bool? enableFeedback;
  @override
  final StacDouble? horizontalTitleGap;
  @override
  final StacDouble? minVerticalPadding;
  @override
  final StacDouble? minLeadingWidth;

  /// Create a copy of StacListTile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacListTileCopyWith<_StacListTile> get copyWith =>
      __$StacListTileCopyWithImpl<_StacListTile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacListTileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacListTile &&
            const DeepCollectionEquality().equals(other._onTap, _onTap) &&
            const DeepCollectionEquality()
                .equals(other._onLongPress, _onLongPress) &&
            const DeepCollectionEquality().equals(other._leading, _leading) &&
            const DeepCollectionEquality().equals(other._title, _title) &&
            const DeepCollectionEquality().equals(other._subtitle, _subtitle) &&
            const DeepCollectionEquality().equals(other._trailing, _trailing) &&
            (identical(other.isThreeLine, isThreeLine) ||
                other.isThreeLine == isThreeLine) &&
            (identical(other.dense, dense) || other.dense == dense) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.tileColor, tileColor) ||
                other.tileColor == tileColor) &&
            (identical(other.selectedTileColor, selectedTileColor) ||
                other.selectedTileColor == selectedTileColor) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.horizontalTitleGap, horizontalTitleGap) ||
                other.horizontalTitleGap == horizontalTitleGap) &&
            (identical(other.minVerticalPadding, minVerticalPadding) ||
                other.minVerticalPadding == minVerticalPadding) &&
            (identical(other.minLeadingWidth, minLeadingWidth) ||
                other.minLeadingWidth == minLeadingWidth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_onTap),
        const DeepCollectionEquality().hash(_onLongPress),
        const DeepCollectionEquality().hash(_leading),
        const DeepCollectionEquality().hash(_title),
        const DeepCollectionEquality().hash(_subtitle),
        const DeepCollectionEquality().hash(_trailing),
        isThreeLine,
        dense,
        style,
        selectedColor,
        iconColor,
        textColor,
        contentPadding,
        enabled,
        selected,
        focusColor,
        hoverColor,
        autofocus,
        tileColor,
        selectedTileColor,
        enableFeedback,
        horizontalTitleGap,
        minVerticalPadding,
        minLeadingWidth
      ]);

  @override
  String toString() {
    return 'StacListTile(onTap: $onTap, onLongPress: $onLongPress, leading: $leading, title: $title, subtitle: $subtitle, trailing: $trailing, isThreeLine: $isThreeLine, dense: $dense, style: $style, selectedColor: $selectedColor, iconColor: $iconColor, textColor: $textColor, contentPadding: $contentPadding, enabled: $enabled, selected: $selected, focusColor: $focusColor, hoverColor: $hoverColor, autofocus: $autofocus, tileColor: $tileColor, selectedTileColor: $selectedTileColor, enableFeedback: $enableFeedback, horizontalTitleGap: $horizontalTitleGap, minVerticalPadding: $minVerticalPadding, minLeadingWidth: $minLeadingWidth)';
  }
}

/// @nodoc
abstract mixin class _$StacListTileCopyWith<$Res>
    implements $StacListTileCopyWith<$Res> {
  factory _$StacListTileCopyWith(
          _StacListTile value, $Res Function(_StacListTile) _then) =
      __$StacListTileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? onTap,
      Map<String, dynamic>? onLongPress,
      Map<String, dynamic>? leading,
      Map<String, dynamic>? title,
      Map<String, dynamic>? subtitle,
      Map<String, dynamic>? trailing,
      bool isThreeLine,
      bool? dense,
      ListTileStyle? style,
      String? selectedColor,
      String? iconColor,
      String? textColor,
      StacEdgeInsets? contentPadding,
      bool enabled,
      bool selected,
      String? focusColor,
      String? hoverColor,
      bool autofocus,
      String? tileColor,
      String? selectedTileColor,
      bool? enableFeedback,
      StacDouble? horizontalTitleGap,
      StacDouble? minVerticalPadding,
      StacDouble? minLeadingWidth});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get contentPadding;
}

/// @nodoc
class __$StacListTileCopyWithImpl<$Res>
    implements _$StacListTileCopyWith<$Res> {
  __$StacListTileCopyWithImpl(this._self, this._then);

  final _StacListTile _self;
  final $Res Function(_StacListTile) _then;

  /// Create a copy of StacListTile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? onTap = freezed,
    Object? onLongPress = freezed,
    Object? leading = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? trailing = freezed,
    Object? isThreeLine = null,
    Object? dense = freezed,
    Object? style = freezed,
    Object? selectedColor = freezed,
    Object? iconColor = freezed,
    Object? textColor = freezed,
    Object? contentPadding = freezed,
    Object? enabled = null,
    Object? selected = null,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? autofocus = null,
    Object? tileColor = freezed,
    Object? selectedTileColor = freezed,
    Object? enableFeedback = freezed,
    Object? horizontalTitleGap = freezed,
    Object? minVerticalPadding = freezed,
    Object? minLeadingWidth = freezed,
  }) {
    return _then(_StacListTile(
      onTap: freezed == onTap
          ? _self._onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onLongPress: freezed == onLongPress
          ? _self._onLongPress
          : onLongPress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      leading: freezed == leading
          ? _self._leading
          : leading // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      title: freezed == title
          ? _self._title
          : title // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      subtitle: freezed == subtitle
          ? _self._subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      trailing: freezed == trailing
          ? _self._trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isThreeLine: null == isThreeLine
          ? _self.isThreeLine
          : isThreeLine // ignore: cast_nullable_to_non_nullable
              as bool,
      dense: freezed == dense
          ? _self.dense
          : dense // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      contentPadding: freezed == contentPadding
          ? _self.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      selected: null == selected
          ? _self.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      tileColor: freezed == tileColor
          ? _self.tileColor
          : tileColor // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTileColor: freezed == selectedTileColor
          ? _self.selectedTileColor
          : selectedTileColor // ignore: cast_nullable_to_non_nullable
              as String?,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      horizontalTitleGap: freezed == horizontalTitleGap
          ? _self.horizontalTitleGap
          : horizontalTitleGap // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      minVerticalPadding: freezed == minVerticalPadding
          ? _self.minVerticalPadding
          : minVerticalPadding // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      minLeadingWidth: freezed == minLeadingWidth
          ? _self.minLeadingWidth
          : minLeadingWidth // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
    ));
  }

  /// Create a copy of StacListTile
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
}

// dart format on
