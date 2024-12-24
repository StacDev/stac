// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_tab_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiTabBar _$MiraiTabBarFromJson(Map<String, dynamic> json) {
  return _MiraiTabBar.fromJson(json);
}

/// @nodoc
mixin _$MiraiTabBar {
  List<Map<String, dynamic>> get tabs => throw _privateConstructorUsedError;
  int get initialIndex => throw _privateConstructorUsedError;
  bool get isScrollable => throw _privateConstructorUsedError;
  MiraiEdgeInsets? get padding => throw _privateConstructorUsedError;
  String? get indicatorColor => throw _privateConstructorUsedError;
  bool get automaticIndicatorColorAdjustment =>
      throw _privateConstructorUsedError;
  double get indicatorWeight => throw _privateConstructorUsedError;
  MiraiEdgeInsets? get indicatorPadding => throw _privateConstructorUsedError;
  TabBarIndicatorSize? get indicatorSize => throw _privateConstructorUsedError;
  String? get labelColor => throw _privateConstructorUsedError;
  MiraiTextStyle? get labelStyle => throw _privateConstructorUsedError;
  MiraiEdgeInsets? get labelPadding => throw _privateConstructorUsedError;
  String? get unselectedLabelColor => throw _privateConstructorUsedError;
  MiraiTextStyle? get unselectedLabelStyle =>
      throw _privateConstructorUsedError;
  DragStartBehavior get dragStartBehavior => throw _privateConstructorUsedError;
  bool? get enableFeedback => throw _privateConstructorUsedError;
  MiraiScrollPhysics? get physics => throw _privateConstructorUsedError;
  TabAlignment? get tabAlignment => throw _privateConstructorUsedError;

  /// Serializes this MiraiTabBar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiTabBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiTabBarCopyWith<MiraiTabBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiTabBarCopyWith<$Res> {
  factory $MiraiTabBarCopyWith(
          MiraiTabBar value, $Res Function(MiraiTabBar) then) =
      _$MiraiTabBarCopyWithImpl<$Res, MiraiTabBar>;
  @useResult
  $Res call(
      {List<Map<String, dynamic>> tabs,
      int initialIndex,
      bool isScrollable,
      MiraiEdgeInsets? padding,
      String? indicatorColor,
      bool automaticIndicatorColorAdjustment,
      double indicatorWeight,
      MiraiEdgeInsets? indicatorPadding,
      TabBarIndicatorSize? indicatorSize,
      String? labelColor,
      MiraiTextStyle? labelStyle,
      MiraiEdgeInsets? labelPadding,
      String? unselectedLabelColor,
      MiraiTextStyle? unselectedLabelStyle,
      DragStartBehavior dragStartBehavior,
      bool? enableFeedback,
      MiraiScrollPhysics? physics,
      TabAlignment? tabAlignment});

  $MiraiEdgeInsetsCopyWith<$Res>? get padding;
  $MiraiEdgeInsetsCopyWith<$Res>? get indicatorPadding;
  $MiraiTextStyleCopyWith<$Res>? get labelStyle;
  $MiraiEdgeInsetsCopyWith<$Res>? get labelPadding;
  $MiraiTextStyleCopyWith<$Res>? get unselectedLabelStyle;
}

/// @nodoc
class _$MiraiTabBarCopyWithImpl<$Res, $Val extends MiraiTabBar>
    implements $MiraiTabBarCopyWith<$Res> {
  _$MiraiTabBarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiTabBar
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
  }) {
    return _then(_value.copyWith(
      tabs: null == tabs
          ? _value.tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      initialIndex: null == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isScrollable: null == isScrollable
          ? _value.isScrollable
          : isScrollable // ignore: cast_nullable_to_non_nullable
              as bool,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      indicatorColor: freezed == indicatorColor
          ? _value.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      automaticIndicatorColorAdjustment: null ==
              automaticIndicatorColorAdjustment
          ? _value.automaticIndicatorColorAdjustment
          : automaticIndicatorColorAdjustment // ignore: cast_nullable_to_non_nullable
              as bool,
      indicatorWeight: null == indicatorWeight
          ? _value.indicatorWeight
          : indicatorWeight // ignore: cast_nullable_to_non_nullable
              as double,
      indicatorPadding: freezed == indicatorPadding
          ? _value.indicatorPadding
          : indicatorPadding // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      indicatorSize: freezed == indicatorSize
          ? _value.indicatorSize
          : indicatorSize // ignore: cast_nullable_to_non_nullable
              as TabBarIndicatorSize?,
      labelColor: freezed == labelColor
          ? _value.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelStyle: freezed == labelStyle
          ? _value.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as MiraiTextStyle?,
      labelPadding: freezed == labelPadding
          ? _value.labelPadding
          : labelPadding // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      unselectedLabelColor: freezed == unselectedLabelColor
          ? _value.unselectedLabelColor
          : unselectedLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _value.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as MiraiTextStyle?,
      dragStartBehavior: null == dragStartBehavior
          ? _value.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      enableFeedback: freezed == enableFeedback
          ? _value.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      physics: freezed == physics
          ? _value.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as MiraiScrollPhysics?,
      tabAlignment: freezed == tabAlignment
          ? _value.tabAlignment
          : tabAlignment // ignore: cast_nullable_to_non_nullable
              as TabAlignment?,
    ) as $Val);
  }

  /// Create a copy of MiraiTabBar
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

  /// Create a copy of MiraiTabBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiEdgeInsetsCopyWith<$Res>? get indicatorPadding {
    if (_value.indicatorPadding == null) {
      return null;
    }

    return $MiraiEdgeInsetsCopyWith<$Res>(_value.indicatorPadding!, (value) {
      return _then(_value.copyWith(indicatorPadding: value) as $Val);
    });
  }

  /// Create a copy of MiraiTabBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiTextStyleCopyWith<$Res>? get labelStyle {
    if (_value.labelStyle == null) {
      return null;
    }

    return $MiraiTextStyleCopyWith<$Res>(_value.labelStyle!, (value) {
      return _then(_value.copyWith(labelStyle: value) as $Val);
    });
  }

  /// Create a copy of MiraiTabBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiEdgeInsetsCopyWith<$Res>? get labelPadding {
    if (_value.labelPadding == null) {
      return null;
    }

    return $MiraiEdgeInsetsCopyWith<$Res>(_value.labelPadding!, (value) {
      return _then(_value.copyWith(labelPadding: value) as $Val);
    });
  }

  /// Create a copy of MiraiTabBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiTextStyleCopyWith<$Res>? get unselectedLabelStyle {
    if (_value.unselectedLabelStyle == null) {
      return null;
    }

    return $MiraiTextStyleCopyWith<$Res>(_value.unselectedLabelStyle!, (value) {
      return _then(_value.copyWith(unselectedLabelStyle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiTabBarImplCopyWith<$Res>
    implements $MiraiTabBarCopyWith<$Res> {
  factory _$$MiraiTabBarImplCopyWith(
          _$MiraiTabBarImpl value, $Res Function(_$MiraiTabBarImpl) then) =
      __$$MiraiTabBarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>> tabs,
      int initialIndex,
      bool isScrollable,
      MiraiEdgeInsets? padding,
      String? indicatorColor,
      bool automaticIndicatorColorAdjustment,
      double indicatorWeight,
      MiraiEdgeInsets? indicatorPadding,
      TabBarIndicatorSize? indicatorSize,
      String? labelColor,
      MiraiTextStyle? labelStyle,
      MiraiEdgeInsets? labelPadding,
      String? unselectedLabelColor,
      MiraiTextStyle? unselectedLabelStyle,
      DragStartBehavior dragStartBehavior,
      bool? enableFeedback,
      MiraiScrollPhysics? physics,
      TabAlignment? tabAlignment});

  @override
  $MiraiEdgeInsetsCopyWith<$Res>? get padding;
  @override
  $MiraiEdgeInsetsCopyWith<$Res>? get indicatorPadding;
  @override
  $MiraiTextStyleCopyWith<$Res>? get labelStyle;
  @override
  $MiraiEdgeInsetsCopyWith<$Res>? get labelPadding;
  @override
  $MiraiTextStyleCopyWith<$Res>? get unselectedLabelStyle;
}

/// @nodoc
class __$$MiraiTabBarImplCopyWithImpl<$Res>
    extends _$MiraiTabBarCopyWithImpl<$Res, _$MiraiTabBarImpl>
    implements _$$MiraiTabBarImplCopyWith<$Res> {
  __$$MiraiTabBarImplCopyWithImpl(
      _$MiraiTabBarImpl _value, $Res Function(_$MiraiTabBarImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiTabBar
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
  }) {
    return _then(_$MiraiTabBarImpl(
      tabs: null == tabs
          ? _value._tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      initialIndex: null == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isScrollable: null == isScrollable
          ? _value.isScrollable
          : isScrollable // ignore: cast_nullable_to_non_nullable
              as bool,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      indicatorColor: freezed == indicatorColor
          ? _value.indicatorColor
          : indicatorColor // ignore: cast_nullable_to_non_nullable
              as String?,
      automaticIndicatorColorAdjustment: null ==
              automaticIndicatorColorAdjustment
          ? _value.automaticIndicatorColorAdjustment
          : automaticIndicatorColorAdjustment // ignore: cast_nullable_to_non_nullable
              as bool,
      indicatorWeight: null == indicatorWeight
          ? _value.indicatorWeight
          : indicatorWeight // ignore: cast_nullable_to_non_nullable
              as double,
      indicatorPadding: freezed == indicatorPadding
          ? _value.indicatorPadding
          : indicatorPadding // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      indicatorSize: freezed == indicatorSize
          ? _value.indicatorSize
          : indicatorSize // ignore: cast_nullable_to_non_nullable
              as TabBarIndicatorSize?,
      labelColor: freezed == labelColor
          ? _value.labelColor
          : labelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      labelStyle: freezed == labelStyle
          ? _value.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as MiraiTextStyle?,
      labelPadding: freezed == labelPadding
          ? _value.labelPadding
          : labelPadding // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      unselectedLabelColor: freezed == unselectedLabelColor
          ? _value.unselectedLabelColor
          : unselectedLabelColor // ignore: cast_nullable_to_non_nullable
              as String?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _value.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as MiraiTextStyle?,
      dragStartBehavior: null == dragStartBehavior
          ? _value.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      enableFeedback: freezed == enableFeedback
          ? _value.enableFeedback
          : enableFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      physics: freezed == physics
          ? _value.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as MiraiScrollPhysics?,
      tabAlignment: freezed == tabAlignment
          ? _value.tabAlignment
          : tabAlignment // ignore: cast_nullable_to_non_nullable
              as TabAlignment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiTabBarImpl implements _MiraiTabBar {
  const _$MiraiTabBarImpl(
      {required final List<Map<String, dynamic>> tabs,
      this.initialIndex = 0,
      this.isScrollable = false,
      this.padding,
      this.indicatorColor,
      this.automaticIndicatorColorAdjustment = true,
      this.indicatorWeight = 2.0,
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
      this.tabAlignment})
      : _tabs = tabs;

  factory _$MiraiTabBarImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiTabBarImplFromJson(json);

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
  final MiraiEdgeInsets? padding;
  @override
  final String? indicatorColor;
  @override
  @JsonKey()
  final bool automaticIndicatorColorAdjustment;
  @override
  @JsonKey()
  final double indicatorWeight;
  @override
  final MiraiEdgeInsets? indicatorPadding;
  @override
  final TabBarIndicatorSize? indicatorSize;
  @override
  final String? labelColor;
  @override
  final MiraiTextStyle? labelStyle;
  @override
  final MiraiEdgeInsets? labelPadding;
  @override
  final String? unselectedLabelColor;
  @override
  final MiraiTextStyle? unselectedLabelStyle;
  @override
  @JsonKey()
  final DragStartBehavior dragStartBehavior;
  @override
  final bool? enableFeedback;
  @override
  final MiraiScrollPhysics? physics;
  @override
  final TabAlignment? tabAlignment;

  @override
  String toString() {
    return 'MiraiTabBar(tabs: $tabs, initialIndex: $initialIndex, isScrollable: $isScrollable, padding: $padding, indicatorColor: $indicatorColor, automaticIndicatorColorAdjustment: $automaticIndicatorColorAdjustment, indicatorWeight: $indicatorWeight, indicatorPadding: $indicatorPadding, indicatorSize: $indicatorSize, labelColor: $labelColor, labelStyle: $labelStyle, labelPadding: $labelPadding, unselectedLabelColor: $unselectedLabelColor, unselectedLabelStyle: $unselectedLabelStyle, dragStartBehavior: $dragStartBehavior, enableFeedback: $enableFeedback, physics: $physics, tabAlignment: $tabAlignment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiTabBarImpl &&
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
                other.tabAlignment == tabAlignment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
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
      tabAlignment);

  /// Create a copy of MiraiTabBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiTabBarImplCopyWith<_$MiraiTabBarImpl> get copyWith =>
      __$$MiraiTabBarImplCopyWithImpl<_$MiraiTabBarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiTabBarImplToJson(
      this,
    );
  }
}

abstract class _MiraiTabBar implements MiraiTabBar {
  const factory _MiraiTabBar(
      {required final List<Map<String, dynamic>> tabs,
      final int initialIndex,
      final bool isScrollable,
      final MiraiEdgeInsets? padding,
      final String? indicatorColor,
      final bool automaticIndicatorColorAdjustment,
      final double indicatorWeight,
      final MiraiEdgeInsets? indicatorPadding,
      final TabBarIndicatorSize? indicatorSize,
      final String? labelColor,
      final MiraiTextStyle? labelStyle,
      final MiraiEdgeInsets? labelPadding,
      final String? unselectedLabelColor,
      final MiraiTextStyle? unselectedLabelStyle,
      final DragStartBehavior dragStartBehavior,
      final bool? enableFeedback,
      final MiraiScrollPhysics? physics,
      final TabAlignment? tabAlignment}) = _$MiraiTabBarImpl;

  factory _MiraiTabBar.fromJson(Map<String, dynamic> json) =
      _$MiraiTabBarImpl.fromJson;

  @override
  List<Map<String, dynamic>> get tabs;
  @override
  int get initialIndex;
  @override
  bool get isScrollable;
  @override
  MiraiEdgeInsets? get padding;
  @override
  String? get indicatorColor;
  @override
  bool get automaticIndicatorColorAdjustment;
  @override
  double get indicatorWeight;
  @override
  MiraiEdgeInsets? get indicatorPadding;
  @override
  TabBarIndicatorSize? get indicatorSize;
  @override
  String? get labelColor;
  @override
  MiraiTextStyle? get labelStyle;
  @override
  MiraiEdgeInsets? get labelPadding;
  @override
  String? get unselectedLabelColor;
  @override
  MiraiTextStyle? get unselectedLabelStyle;
  @override
  DragStartBehavior get dragStartBehavior;
  @override
  bool? get enableFeedback;
  @override
  MiraiScrollPhysics? get physics;
  @override
  TabAlignment? get tabAlignment;

  /// Create a copy of MiraiTabBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiTabBarImplCopyWith<_$MiraiTabBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
