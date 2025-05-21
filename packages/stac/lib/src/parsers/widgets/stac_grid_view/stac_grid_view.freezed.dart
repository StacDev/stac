// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_grid_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacGridView {
  Axis get scrollDirection;
  bool get reverse;
  bool get primary;
  StacScrollPhysics? get physics;
  bool get shrinkWrap;
  StacEdgeInsets? get padding;
  int? get crossAxisCount;
  StacDouble get mainAxisSpacing;
  StacDouble get crossAxisSpacing;
  StacDouble get childAspectRatio;
  StacDouble? get mainAxisExtent;
  bool get addAutomaticKeepAlives;
  bool get addRepaintBoundaries;
  bool get addSemanticIndexes;
  StacDouble? get cacheExtent;
  List<Map<String, dynamic>> get children;
  int? get semanticChildCount;
  DragStartBehavior get dragStartBehavior;
  ScrollViewKeyboardDismissBehavior get keyboardDismissBehavior;
  String? get restorationId;
  Clip get clipBehavior;

  /// Create a copy of StacGridView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacGridViewCopyWith<StacGridView> get copyWith =>
      _$StacGridViewCopyWithImpl<StacGridView>(
          this as StacGridView, _$identity);

  /// Serializes this StacGridView to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacGridView &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.shrinkWrap, shrinkWrap) ||
                other.shrinkWrap == shrinkWrap) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.crossAxisCount, crossAxisCount) ||
                other.crossAxisCount == crossAxisCount) &&
            (identical(other.mainAxisSpacing, mainAxisSpacing) ||
                other.mainAxisSpacing == mainAxisSpacing) &&
            (identical(other.crossAxisSpacing, crossAxisSpacing) ||
                other.crossAxisSpacing == crossAxisSpacing) &&
            (identical(other.childAspectRatio, childAspectRatio) ||
                other.childAspectRatio == childAspectRatio) &&
            (identical(other.mainAxisExtent, mainAxisExtent) ||
                other.mainAxisExtent == mainAxisExtent) &&
            (identical(other.addAutomaticKeepAlives, addAutomaticKeepAlives) ||
                other.addAutomaticKeepAlives == addAutomaticKeepAlives) &&
            (identical(other.addRepaintBoundaries, addRepaintBoundaries) ||
                other.addRepaintBoundaries == addRepaintBoundaries) &&
            (identical(other.addSemanticIndexes, addSemanticIndexes) ||
                other.addSemanticIndexes == addSemanticIndexes) &&
            (identical(other.cacheExtent, cacheExtent) ||
                other.cacheExtent == cacheExtent) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            (identical(other.semanticChildCount, semanticChildCount) ||
                other.semanticChildCount == semanticChildCount) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(
                    other.keyboardDismissBehavior, keyboardDismissBehavior) ||
                other.keyboardDismissBehavior == keyboardDismissBehavior) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        scrollDirection,
        reverse,
        primary,
        physics,
        shrinkWrap,
        padding,
        crossAxisCount,
        mainAxisSpacing,
        crossAxisSpacing,
        childAspectRatio,
        mainAxisExtent,
        addAutomaticKeepAlives,
        addRepaintBoundaries,
        addSemanticIndexes,
        cacheExtent,
        const DeepCollectionEquality().hash(children),
        semanticChildCount,
        dragStartBehavior,
        keyboardDismissBehavior,
        restorationId,
        clipBehavior
      ]);

  @override
  String toString() {
    return 'StacGridView(scrollDirection: $scrollDirection, reverse: $reverse, primary: $primary, physics: $physics, shrinkWrap: $shrinkWrap, padding: $padding, crossAxisCount: $crossAxisCount, mainAxisSpacing: $mainAxisSpacing, crossAxisSpacing: $crossAxisSpacing, childAspectRatio: $childAspectRatio, mainAxisExtent: $mainAxisExtent, addAutomaticKeepAlives: $addAutomaticKeepAlives, addRepaintBoundaries: $addRepaintBoundaries, addSemanticIndexes: $addSemanticIndexes, cacheExtent: $cacheExtent, children: $children, semanticChildCount: $semanticChildCount, dragStartBehavior: $dragStartBehavior, keyboardDismissBehavior: $keyboardDismissBehavior, restorationId: $restorationId, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacGridViewCopyWith<$Res> {
  factory $StacGridViewCopyWith(
          StacGridView value, $Res Function(StacGridView) _then) =
      _$StacGridViewCopyWithImpl;
  @useResult
  $Res call(
      {Axis scrollDirection,
      bool reverse,
      bool primary,
      StacScrollPhysics? physics,
      bool shrinkWrap,
      StacEdgeInsets? padding,
      int? crossAxisCount,
      StacDouble mainAxisSpacing,
      StacDouble crossAxisSpacing,
      StacDouble childAspectRatio,
      StacDouble? mainAxisExtent,
      bool addAutomaticKeepAlives,
      bool addRepaintBoundaries,
      bool addSemanticIndexes,
      StacDouble? cacheExtent,
      List<Map<String, dynamic>> children,
      int? semanticChildCount,
      DragStartBehavior dragStartBehavior,
      ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
      String? restorationId,
      Clip clipBehavior});

  $StacEdgeInsetsCopyWith<$Res>? get padding;
}

/// @nodoc
class _$StacGridViewCopyWithImpl<$Res> implements $StacGridViewCopyWith<$Res> {
  _$StacGridViewCopyWithImpl(this._self, this._then);

  final StacGridView _self;
  final $Res Function(StacGridView) _then;

  /// Create a copy of StacGridView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? primary = null,
    Object? physics = freezed,
    Object? shrinkWrap = null,
    Object? padding = freezed,
    Object? crossAxisCount = freezed,
    Object? mainAxisSpacing = null,
    Object? crossAxisSpacing = null,
    Object? childAspectRatio = null,
    Object? mainAxisExtent = freezed,
    Object? addAutomaticKeepAlives = null,
    Object? addRepaintBoundaries = null,
    Object? addSemanticIndexes = null,
    Object? cacheExtent = freezed,
    Object? children = null,
    Object? semanticChildCount = freezed,
    Object? dragStartBehavior = null,
    Object? keyboardDismissBehavior = null,
    Object? restorationId = freezed,
    Object? clipBehavior = null,
  }) {
    return _then(_self.copyWith(
      scrollDirection: null == scrollDirection
          ? _self.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as Axis,
      reverse: null == reverse
          ? _self.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      primary: null == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool,
      physics: freezed == physics
          ? _self.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as StacScrollPhysics?,
      shrinkWrap: null == shrinkWrap
          ? _self.shrinkWrap
          : shrinkWrap // ignore: cast_nullable_to_non_nullable
              as bool,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      crossAxisCount: freezed == crossAxisCount
          ? _self.crossAxisCount
          : crossAxisCount // ignore: cast_nullable_to_non_nullable
              as int?,
      mainAxisSpacing: null == mainAxisSpacing
          ? _self.mainAxisSpacing
          : mainAxisSpacing // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      crossAxisSpacing: null == crossAxisSpacing
          ? _self.crossAxisSpacing
          : crossAxisSpacing // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      childAspectRatio: null == childAspectRatio
          ? _self.childAspectRatio
          : childAspectRatio // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      mainAxisExtent: freezed == mainAxisExtent
          ? _self.mainAxisExtent
          : mainAxisExtent // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      addAutomaticKeepAlives: null == addAutomaticKeepAlives
          ? _self.addAutomaticKeepAlives
          : addAutomaticKeepAlives // ignore: cast_nullable_to_non_nullable
              as bool,
      addRepaintBoundaries: null == addRepaintBoundaries
          ? _self.addRepaintBoundaries
          : addRepaintBoundaries // ignore: cast_nullable_to_non_nullable
              as bool,
      addSemanticIndexes: null == addSemanticIndexes
          ? _self.addSemanticIndexes
          : addSemanticIndexes // ignore: cast_nullable_to_non_nullable
              as bool,
      cacheExtent: freezed == cacheExtent
          ? _self.cacheExtent
          : cacheExtent // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      children: null == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      semanticChildCount: freezed == semanticChildCount
          ? _self.semanticChildCount
          : semanticChildCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dragStartBehavior: null == dragStartBehavior
          ? _self.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      keyboardDismissBehavior: null == keyboardDismissBehavior
          ? _self.keyboardDismissBehavior
          : keyboardDismissBehavior // ignore: cast_nullable_to_non_nullable
              as ScrollViewKeyboardDismissBehavior,
      restorationId: freezed == restorationId
          ? _self.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ));
  }

  /// Create a copy of StacGridView
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
}

/// @nodoc
@JsonSerializable()
class _StacGridView implements StacGridView {
  const _StacGridView(
      {this.scrollDirection = Axis.vertical,
      this.reverse = false,
      this.primary = false,
      this.physics,
      this.shrinkWrap = false,
      this.padding,
      this.crossAxisCount,
      this.mainAxisSpacing = StacDouble.zero,
      this.crossAxisSpacing = StacDouble.zero,
      this.childAspectRatio = const StacDouble(1.0),
      this.mainAxisExtent,
      this.addAutomaticKeepAlives = true,
      this.addRepaintBoundaries = true,
      this.addSemanticIndexes = true,
      this.cacheExtent,
      final List<Map<String, dynamic>> children = const [],
      this.semanticChildCount,
      this.dragStartBehavior = DragStartBehavior.start,
      this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
      this.restorationId,
      this.clipBehavior = Clip.hardEdge})
      : _children = children;
  factory _StacGridView.fromJson(Map<String, dynamic> json) =>
      _$StacGridViewFromJson(json);

  @override
  @JsonKey()
  final Axis scrollDirection;
  @override
  @JsonKey()
  final bool reverse;
  @override
  @JsonKey()
  final bool primary;
  @override
  final StacScrollPhysics? physics;
  @override
  @JsonKey()
  final bool shrinkWrap;
  @override
  final StacEdgeInsets? padding;
  @override
  final int? crossAxisCount;
  @override
  @JsonKey()
  final StacDouble mainAxisSpacing;
  @override
  @JsonKey()
  final StacDouble crossAxisSpacing;
  @override
  @JsonKey()
  final StacDouble childAspectRatio;
  @override
  final StacDouble? mainAxisExtent;
  @override
  @JsonKey()
  final bool addAutomaticKeepAlives;
  @override
  @JsonKey()
  final bool addRepaintBoundaries;
  @override
  @JsonKey()
  final bool addSemanticIndexes;
  @override
  final StacDouble? cacheExtent;
  final List<Map<String, dynamic>> _children;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  final int? semanticChildCount;
  @override
  @JsonKey()
  final DragStartBehavior dragStartBehavior;
  @override
  @JsonKey()
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  @override
  final String? restorationId;
  @override
  @JsonKey()
  final Clip clipBehavior;

  /// Create a copy of StacGridView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacGridViewCopyWith<_StacGridView> get copyWith =>
      __$StacGridViewCopyWithImpl<_StacGridView>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacGridViewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacGridView &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.shrinkWrap, shrinkWrap) ||
                other.shrinkWrap == shrinkWrap) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.crossAxisCount, crossAxisCount) ||
                other.crossAxisCount == crossAxisCount) &&
            (identical(other.mainAxisSpacing, mainAxisSpacing) ||
                other.mainAxisSpacing == mainAxisSpacing) &&
            (identical(other.crossAxisSpacing, crossAxisSpacing) ||
                other.crossAxisSpacing == crossAxisSpacing) &&
            (identical(other.childAspectRatio, childAspectRatio) ||
                other.childAspectRatio == childAspectRatio) &&
            (identical(other.mainAxisExtent, mainAxisExtent) ||
                other.mainAxisExtent == mainAxisExtent) &&
            (identical(other.addAutomaticKeepAlives, addAutomaticKeepAlives) ||
                other.addAutomaticKeepAlives == addAutomaticKeepAlives) &&
            (identical(other.addRepaintBoundaries, addRepaintBoundaries) ||
                other.addRepaintBoundaries == addRepaintBoundaries) &&
            (identical(other.addSemanticIndexes, addSemanticIndexes) ||
                other.addSemanticIndexes == addSemanticIndexes) &&
            (identical(other.cacheExtent, cacheExtent) ||
                other.cacheExtent == cacheExtent) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.semanticChildCount, semanticChildCount) ||
                other.semanticChildCount == semanticChildCount) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(
                    other.keyboardDismissBehavior, keyboardDismissBehavior) ||
                other.keyboardDismissBehavior == keyboardDismissBehavior) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        scrollDirection,
        reverse,
        primary,
        physics,
        shrinkWrap,
        padding,
        crossAxisCount,
        mainAxisSpacing,
        crossAxisSpacing,
        childAspectRatio,
        mainAxisExtent,
        addAutomaticKeepAlives,
        addRepaintBoundaries,
        addSemanticIndexes,
        cacheExtent,
        const DeepCollectionEquality().hash(_children),
        semanticChildCount,
        dragStartBehavior,
        keyboardDismissBehavior,
        restorationId,
        clipBehavior
      ]);

  @override
  String toString() {
    return 'StacGridView(scrollDirection: $scrollDirection, reverse: $reverse, primary: $primary, physics: $physics, shrinkWrap: $shrinkWrap, padding: $padding, crossAxisCount: $crossAxisCount, mainAxisSpacing: $mainAxisSpacing, crossAxisSpacing: $crossAxisSpacing, childAspectRatio: $childAspectRatio, mainAxisExtent: $mainAxisExtent, addAutomaticKeepAlives: $addAutomaticKeepAlives, addRepaintBoundaries: $addRepaintBoundaries, addSemanticIndexes: $addSemanticIndexes, cacheExtent: $cacheExtent, children: $children, semanticChildCount: $semanticChildCount, dragStartBehavior: $dragStartBehavior, keyboardDismissBehavior: $keyboardDismissBehavior, restorationId: $restorationId, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacGridViewCopyWith<$Res>
    implements $StacGridViewCopyWith<$Res> {
  factory _$StacGridViewCopyWith(
          _StacGridView value, $Res Function(_StacGridView) _then) =
      __$StacGridViewCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Axis scrollDirection,
      bool reverse,
      bool primary,
      StacScrollPhysics? physics,
      bool shrinkWrap,
      StacEdgeInsets? padding,
      int? crossAxisCount,
      StacDouble mainAxisSpacing,
      StacDouble crossAxisSpacing,
      StacDouble childAspectRatio,
      StacDouble? mainAxisExtent,
      bool addAutomaticKeepAlives,
      bool addRepaintBoundaries,
      bool addSemanticIndexes,
      StacDouble? cacheExtent,
      List<Map<String, dynamic>> children,
      int? semanticChildCount,
      DragStartBehavior dragStartBehavior,
      ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
      String? restorationId,
      Clip clipBehavior});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
}

/// @nodoc
class __$StacGridViewCopyWithImpl<$Res>
    implements _$StacGridViewCopyWith<$Res> {
  __$StacGridViewCopyWithImpl(this._self, this._then);

  final _StacGridView _self;
  final $Res Function(_StacGridView) _then;

  /// Create a copy of StacGridView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? primary = null,
    Object? physics = freezed,
    Object? shrinkWrap = null,
    Object? padding = freezed,
    Object? crossAxisCount = freezed,
    Object? mainAxisSpacing = null,
    Object? crossAxisSpacing = null,
    Object? childAspectRatio = null,
    Object? mainAxisExtent = freezed,
    Object? addAutomaticKeepAlives = null,
    Object? addRepaintBoundaries = null,
    Object? addSemanticIndexes = null,
    Object? cacheExtent = freezed,
    Object? children = null,
    Object? semanticChildCount = freezed,
    Object? dragStartBehavior = null,
    Object? keyboardDismissBehavior = null,
    Object? restorationId = freezed,
    Object? clipBehavior = null,
  }) {
    return _then(_StacGridView(
      scrollDirection: null == scrollDirection
          ? _self.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as Axis,
      reverse: null == reverse
          ? _self.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      primary: null == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool,
      physics: freezed == physics
          ? _self.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as StacScrollPhysics?,
      shrinkWrap: null == shrinkWrap
          ? _self.shrinkWrap
          : shrinkWrap // ignore: cast_nullable_to_non_nullable
              as bool,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      crossAxisCount: freezed == crossAxisCount
          ? _self.crossAxisCount
          : crossAxisCount // ignore: cast_nullable_to_non_nullable
              as int?,
      mainAxisSpacing: null == mainAxisSpacing
          ? _self.mainAxisSpacing
          : mainAxisSpacing // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      crossAxisSpacing: null == crossAxisSpacing
          ? _self.crossAxisSpacing
          : crossAxisSpacing // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      childAspectRatio: null == childAspectRatio
          ? _self.childAspectRatio
          : childAspectRatio // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      mainAxisExtent: freezed == mainAxisExtent
          ? _self.mainAxisExtent
          : mainAxisExtent // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      addAutomaticKeepAlives: null == addAutomaticKeepAlives
          ? _self.addAutomaticKeepAlives
          : addAutomaticKeepAlives // ignore: cast_nullable_to_non_nullable
              as bool,
      addRepaintBoundaries: null == addRepaintBoundaries
          ? _self.addRepaintBoundaries
          : addRepaintBoundaries // ignore: cast_nullable_to_non_nullable
              as bool,
      addSemanticIndexes: null == addSemanticIndexes
          ? _self.addSemanticIndexes
          : addSemanticIndexes // ignore: cast_nullable_to_non_nullable
              as bool,
      cacheExtent: freezed == cacheExtent
          ? _self.cacheExtent
          : cacheExtent // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      children: null == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      semanticChildCount: freezed == semanticChildCount
          ? _self.semanticChildCount
          : semanticChildCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dragStartBehavior: null == dragStartBehavior
          ? _self.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      keyboardDismissBehavior: null == keyboardDismissBehavior
          ? _self.keyboardDismissBehavior
          : keyboardDismissBehavior // ignore: cast_nullable_to_non_nullable
              as ScrollViewKeyboardDismissBehavior,
      restorationId: freezed == restorationId
          ? _self.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ));
  }

  /// Create a copy of StacGridView
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
}

// dart format on
