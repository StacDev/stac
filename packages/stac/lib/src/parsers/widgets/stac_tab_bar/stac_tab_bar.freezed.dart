// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_tab_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacTabBar {
  List<Map<String, dynamic>> get tabs;
  int get initialIndex;
  bool get isScrollable;
  StacEdgeInsets? get padding;
  String? get indicatorColor;
  bool get automaticIndicatorColorAdjustment;
  StacDouble get indicatorWeight;
  StacEdgeInsets? get indicatorPadding;
  TabBarIndicatorSize? get indicatorSize;
  String? get labelColor;
  StacTextStyle? get labelStyle;
  StacEdgeInsets? get labelPadding;
  String? get unselectedLabelColor;
  StacTextStyle? get unselectedLabelStyle;
  DragStartBehavior get dragStartBehavior;
  bool? get enableFeedback;
  StacScrollPhysics? get physics;
  TabAlignment? get tabAlignment;
  String? get dividerColor;
  double? get dividerHeight;

  /// Create a copy of StacTabBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacTabBarCopyWith<StacTabBar> get copyWith =>
      _$StacTabBarCopyWithImpl<StacTabBar>(this as StacTabBar, _$identity);

  /// Serializes this StacTabBar to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacTabBar &&
            const DeepCollectionEquality().equals(other.tabs, tabs) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex) &&
            (identical(other.isScrollable, isScrollable) ||
                other.isScrollable == isScrollable) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.automaticIndicatorColorAdjustment,
                    automaticIndicatorColorAdjustment) ||
                other.automaticIndicatorColorAdjustment ==
                    automaticIndicatorColorAdjustment) &&
            (identical(other.indicatorWeight, indicatorWeight) ||
                other.indicatorWeight == indicatorWeight) &&
            (identical(other.indicatorPadding, indicatorPadding) ||
                other.indicatorPadding == indicatorPadding) &&
            (identical(other.indicatorSize, indicatorSize) ||
                other.indicatorSize == indicatorSize) &&
            (identical(other.labelColor, labelColor) ||
                other.labelColor == labelColor) &&
            (identical(other.labelStyle, labelStyle) ||
                other.labelStyle == labelStyle) &&
            (identical(other.labelPadding, labelPadding) ||
                other.labelPadding == labelPadding) &&
            (identical(other.unselectedLabelColor, unselectedLabelColor) ||
                other.unselectedLabelColor == unselectedLabelColor) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.tabAlignment, tabAlignment) ||
                other.tabAlignment == tabAlignment) &&
            (identical(other.dividerColor, dividerColor) ||
                other.dividerColor == dividerColor) &&
            (identical(other.dividerHeight, dividerHeight) ||
                other.dividerHeight == dividerHeight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(tabs),
        initialIndex,
        isScrollable,
        padding,
        indicatorColor,
        automaticIndicatorColorAdjustment,
        indicatorWeight,
        indicatorPadding,
        indicatorSize,
        labelColor,
        labelStyle,
        labelPadding,
        unselectedLabelColor,
        unselectedLabelStyle,
        dragStartBehavior,
        enableFeedback,
        physics,
        tabAlignment,
        dividerColor,
        dividerHeight
      ]);

  @override
  String toString() {
    return 'StacTabBar(tabs: $tabs, initialIndex: $initialIndex, isScrollable: $isScrollable, padding: $padding, indicatorColor: $indicatorColor, automaticIndicatorColorAdjustment: $automaticIndicatorColorAdjustment, indicatorWeight: $indicatorWeight, indicatorPadding: $indicatorPadding, indicatorSize: $indicatorSize, labelColor: $labelColor, labelStyle: $labelStyle, labelPadding: $labelPadding, unselectedLabelColor: $unselectedLabelColor, unselectedLabelStyle: $unselectedLabelStyle, dragStartBehavior: $dragStartBehavior, enableFeedback: $enableFeedback, physics: $physics, tabAlignment: $tabAlignment, dividerColor: $dividerColor, dividerHeight: $dividerHeight)';
  }
}

/// @nodoc
abstract mixin class $StacTabBarCopyWith<$Res> {
  factory $StacTabBarCopyWith(
          StacTabBar value, $Res Function(StacTabBar) _then) =
      _$StacTabBarCopyWithImpl;
  @useResult
  $Res call(
      {List<Map<String, dynamic>> tabs,
      int initialIndex,
      bool isScrollable,
      StacEdgeInsets? padding,
      String? indicatorColor,
      bool automaticIndicatorColorAdjustment,
      StacDouble indicatorWeight,
      StacEdgeInsets? indicatorPadding,
      TabBarIndicatorSize? indicatorSize,
      String? labelColor,
      StacTextStyle? labelStyle,
      StacEdgeInsets? labelPadding,
      String? unselectedLabelColor,
      StacTextStyle? unselectedLabelStyle,
      DragStartBehavior dragStartBehavior,
      bool? enableFeedback,
      StacScrollPhysics? physics,
      TabAlignment? tabAlignment,
      String? dividerColor,
      double? dividerHeight});

  $StacEdgeInsetsCopyWith<$Res>? get padding;
  $StacEdgeInsetsCopyWith<$Res>? get indicatorPadding;
  $StacTextStyleCopyWith<$Res>? get labelStyle;
  $StacEdgeInsetsCopyWith<$Res>? get labelPadding;
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle;
}

/// @nodoc
class _$StacTabBarCopyWithImpl<$Res> implements $StacTabBarCopyWith<$Res> {
  _$StacTabBarCopyWithImpl(this._self, this._then);

  final StacTabBar _self;
  final $Res Function(StacTabBar) _then;

  /// Create a copy of StacTabBar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabs = null,
    Object? initialIndex = null,
    Object? isScrollable = null,
    Object? padding = freezed,
    Object? indicatorColor = freezed,
    Object? automaticIndicatorColorAdjustment = null,
    Object? indicatorWeight = null,
    Object? indicatorPadding = freezed,
    Object? indicatorSize = freezed,
    Object? labelColor = freezed,
    Object? labelStyle = freezed,
    Object? labelPadding = freezed,
    Object? unselectedLabelColor = freezed,
    Object? unselectedLabelStyle = freezed,
    Object? dragStartBehavior = null,
    Object? enableFeedback = freezed,
    Object? physics = freezed,
    Object? tabAlignment = freezed,
    Object? dividerColor = freezed,
    Object? dividerHeight = freezed,
  }) {
    return _then(_self.copyWith(
      tabs: null == tabs
          ? _self.tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      initialIndex: null == initialIndex
          ? _self.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isScrollable: null == isScrollable
          ? _self.isScrollable
          : isScrollable // ignore: cast_nullable_to_non_nullable
              as bool,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      automaticIndicatorColorAdjustment: null ==
              automaticIndicatorColorAdjustment
          ? _self.automaticIndicatorColorAdjustment
          : automaticIndicatorColorAdjustment // ignore: cast_nullable_to_non_nullable
              as bool,
      indicatorWeight: null == indicatorWeight
          ? _self.indicatorWeight
          : indicatorWeight // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      indicatorPadding: freezed == indicatorPadding
          ? _self.indicatorPadding
          : indicatorPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      indicatorSize: freezed == indicatorSize
          ? _self.indicatorSize
          : indicatorSize // ignore: cast_nullable_to_non_nullable
              as TabBarIndicatorSize?,
      labelColor: freezed == labelColor
          ? _self.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelStyle: freezed == labelStyle
          ? _self.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      labelPadding: freezed == labelPadding
          ? _self.labelPadding
          : labelPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      unselectedLabelColor: freezed == unselectedLabelColor
          ? _self.unselectedLabelColor
          : unselectedLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _self.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      dragStartBehavior: null == dragStartBehavior
          ? _self.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      physics: freezed == physics
          ? _self.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as StacScrollPhysics?,
      tabAlignment: freezed == tabAlignment
          ? _self.tabAlignment
          : tabAlignment // ignore: cast_nullable_to_non_nullable
              as TabAlignment?,
      dividerColor: freezed == dividerColor
          ? _self.dividerColor
          : dividerColor // ignore: cast_nullable_to_non_nullable
              as String?,
      dividerHeight: freezed == dividerHeight
          ? _self.dividerHeight
          : dividerHeight // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of StacTabBar
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

  /// Create a copy of StacTabBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get indicatorPadding {
    if (_self.indicatorPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.indicatorPadding!, (value) {
      return _then(_self.copyWith(indicatorPadding: value));
    });
  }

  /// Create a copy of StacTabBar
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

  /// Create a copy of StacTabBar
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

  /// Create a copy of StacTabBar
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
class _StacTabBar implements StacTabBar {
  const _StacTabBar(
      {required final List<Map<String, dynamic>> tabs,
      this.initialIndex = 0,
      this.isScrollable = false,
      this.padding,
      this.indicatorColor,
      this.automaticIndicatorColorAdjustment = true,
      this.indicatorWeight = const StacDouble(2.0),
      this.indicatorPadding,
      this.indicatorSize,
      this.labelColor,
      this.labelStyle,
      this.labelPadding,
      this.unselectedLabelColor,
      this.unselectedLabelStyle,
      this.dragStartBehavior = DragStartBehavior.start,
      this.enableFeedback,
      this.physics,
      this.tabAlignment,
      this.dividerColor,
      this.dividerHeight})
      : _tabs = tabs;
  factory _StacTabBar.fromJson(Map<String, dynamic> json) =>
      _$StacTabBarFromJson(json);

  final List<Map<String, dynamic>> _tabs;
  @override
  List<Map<String, dynamic>> get tabs {
    if (_tabs is EqualUnmodifiableListView) return _tabs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tabs);
  }

  @override
  @JsonKey()
  final int initialIndex;
  @override
  @JsonKey()
  final bool isScrollable;
  @override
  final StacEdgeInsets? padding;
  @override
  final String? indicatorColor;
  @override
  @JsonKey()
  final bool automaticIndicatorColorAdjustment;
  @override
  @JsonKey()
  final StacDouble indicatorWeight;
  @override
  final StacEdgeInsets? indicatorPadding;
  @override
  final TabBarIndicatorSize? indicatorSize;
  @override
  final String? labelColor;
  @override
  final StacTextStyle? labelStyle;
  @override
  final StacEdgeInsets? labelPadding;
  @override
  final String? unselectedLabelColor;
  @override
  final StacTextStyle? unselectedLabelStyle;
  @override
  @JsonKey()
  final DragStartBehavior dragStartBehavior;
  @override
  final bool? enableFeedback;
  @override
  final StacScrollPhysics? physics;
  @override
  final TabAlignment? tabAlignment;
  @override
  final String? dividerColor;
  @override
  final double? dividerHeight;

  /// Create a copy of StacTabBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacTabBarCopyWith<_StacTabBar> get copyWith =>
      __$StacTabBarCopyWithImpl<_StacTabBar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacTabBarToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacTabBar &&
            const DeepCollectionEquality().equals(other._tabs, _tabs) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex) &&
            (identical(other.isScrollable, isScrollable) ||
                other.isScrollable == isScrollable) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.indicatorColor, indicatorColor) ||
                other.indicatorColor == indicatorColor) &&
            (identical(other.automaticIndicatorColorAdjustment,
                    automaticIndicatorColorAdjustment) ||
                other.automaticIndicatorColorAdjustment ==
                    automaticIndicatorColorAdjustment) &&
            (identical(other.indicatorWeight, indicatorWeight) ||
                other.indicatorWeight == indicatorWeight) &&
            (identical(other.indicatorPadding, indicatorPadding) ||
                other.indicatorPadding == indicatorPadding) &&
            (identical(other.indicatorSize, indicatorSize) ||
                other.indicatorSize == indicatorSize) &&
            (identical(other.labelColor, labelColor) ||
                other.labelColor == labelColor) &&
            (identical(other.labelStyle, labelStyle) ||
                other.labelStyle == labelStyle) &&
            (identical(other.labelPadding, labelPadding) ||
                other.labelPadding == labelPadding) &&
            (identical(other.unselectedLabelColor, unselectedLabelColor) ||
                other.unselectedLabelColor == unselectedLabelColor) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.tabAlignment, tabAlignment) ||
                other.tabAlignment == tabAlignment) &&
            (identical(other.dividerColor, dividerColor) ||
                other.dividerColor == dividerColor) &&
            (identical(other.dividerHeight, dividerHeight) ||
                other.dividerHeight == dividerHeight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_tabs),
        initialIndex,
        isScrollable,
        padding,
        indicatorColor,
        automaticIndicatorColorAdjustment,
        indicatorWeight,
        indicatorPadding,
        indicatorSize,
        labelColor,
        labelStyle,
        labelPadding,
        unselectedLabelColor,
        unselectedLabelStyle,
        dragStartBehavior,
        enableFeedback,
        physics,
        tabAlignment,
        dividerColor,
        dividerHeight
      ]);

  @override
  String toString() {
    return 'StacTabBar(tabs: $tabs, initialIndex: $initialIndex, isScrollable: $isScrollable, padding: $padding, indicatorColor: $indicatorColor, automaticIndicatorColorAdjustment: $automaticIndicatorColorAdjustment, indicatorWeight: $indicatorWeight, indicatorPadding: $indicatorPadding, indicatorSize: $indicatorSize, labelColor: $labelColor, labelStyle: $labelStyle, labelPadding: $labelPadding, unselectedLabelColor: $unselectedLabelColor, unselectedLabelStyle: $unselectedLabelStyle, dragStartBehavior: $dragStartBehavior, enableFeedback: $enableFeedback, physics: $physics, tabAlignment: $tabAlignment, dividerColor: $dividerColor, dividerHeight: $dividerHeight)';
  }
}

/// @nodoc
abstract mixin class _$StacTabBarCopyWith<$Res>
    implements $StacTabBarCopyWith<$Res> {
  factory _$StacTabBarCopyWith(
          _StacTabBar value, $Res Function(_StacTabBar) _then) =
      __$StacTabBarCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>> tabs,
      int initialIndex,
      bool isScrollable,
      StacEdgeInsets? padding,
      String? indicatorColor,
      bool automaticIndicatorColorAdjustment,
      StacDouble indicatorWeight,
      StacEdgeInsets? indicatorPadding,
      TabBarIndicatorSize? indicatorSize,
      String? labelColor,
      StacTextStyle? labelStyle,
      StacEdgeInsets? labelPadding,
      String? unselectedLabelColor,
      StacTextStyle? unselectedLabelStyle,
      DragStartBehavior dragStartBehavior,
      bool? enableFeedback,
      StacScrollPhysics? physics,
      TabAlignment? tabAlignment,
      String? dividerColor,
      double? dividerHeight});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get indicatorPadding;
  @override
  $StacTextStyleCopyWith<$Res>? get labelStyle;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get labelPadding;
  @override
  $StacTextStyleCopyWith<$Res>? get unselectedLabelStyle;
}

/// @nodoc
class __$StacTabBarCopyWithImpl<$Res> implements _$StacTabBarCopyWith<$Res> {
  __$StacTabBarCopyWithImpl(this._self, this._then);

  final _StacTabBar _self;
  final $Res Function(_StacTabBar) _then;

  /// Create a copy of StacTabBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tabs = null,
    Object? initialIndex = null,
    Object? isScrollable = null,
    Object? padding = freezed,
    Object? indicatorColor = freezed,
    Object? automaticIndicatorColorAdjustment = null,
    Object? indicatorWeight = null,
    Object? indicatorPadding = freezed,
    Object? indicatorSize = freezed,
    Object? labelColor = freezed,
    Object? labelStyle = freezed,
    Object? labelPadding = freezed,
    Object? unselectedLabelColor = freezed,
    Object? unselectedLabelStyle = freezed,
    Object? dragStartBehavior = null,
    Object? enableFeedback = freezed,
    Object? physics = freezed,
    Object? tabAlignment = freezed,
    Object? dividerColor = freezed,
    Object? dividerHeight = freezed,
  }) {
    return _then(_StacTabBar(
      tabs: null == tabs
          ? _self._tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      initialIndex: null == initialIndex
          ? _self.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isScrollable: null == isScrollable
          ? _self.isScrollable
          : isScrollable // ignore: cast_nullable_to_non_nullable
              as bool,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      indicatorColor: freezed == indicatorColor
          ? _self.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      automaticIndicatorColorAdjustment: null ==
              automaticIndicatorColorAdjustment
          ? _self.automaticIndicatorColorAdjustment
          : automaticIndicatorColorAdjustment // ignore: cast_nullable_to_non_nullable
              as bool,
      indicatorWeight: null == indicatorWeight
          ? _self.indicatorWeight
          : indicatorWeight // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      indicatorPadding: freezed == indicatorPadding
          ? _self.indicatorPadding
          : indicatorPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      indicatorSize: freezed == indicatorSize
          ? _self.indicatorSize
          : indicatorSize // ignore: cast_nullable_to_non_nullable
              as TabBarIndicatorSize?,
      labelColor: freezed == labelColor
          ? _self.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelStyle: freezed == labelStyle
          ? _self.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      labelPadding: freezed == labelPadding
          ? _self.labelPadding
          : labelPadding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      unselectedLabelColor: freezed == unselectedLabelColor
          ? _self.unselectedLabelColor
          : unselectedLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _self.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      dragStartBehavior: null == dragStartBehavior
          ? _self.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      enableFeedback: freezed == enableFeedback
          ? _self.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      physics: freezed == physics
          ? _self.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as StacScrollPhysics?,
      tabAlignment: freezed == tabAlignment
          ? _self.tabAlignment
          : tabAlignment // ignore: cast_nullable_to_non_nullable
              as TabAlignment?,
      dividerColor: freezed == dividerColor
          ? _self.dividerColor
          : dividerColor // ignore: cast_nullable_to_non_nullable
              as String?,
      dividerHeight: freezed == dividerHeight
          ? _self.dividerHeight
          : dividerHeight // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of StacTabBar
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

  /// Create a copy of StacTabBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get indicatorPadding {
    if (_self.indicatorPadding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.indicatorPadding!, (value) {
      return _then(_self.copyWith(indicatorPadding: value));
    });
  }

  /// Create a copy of StacTabBar
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

  /// Create a copy of StacTabBar
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

  /// Create a copy of StacTabBar
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
