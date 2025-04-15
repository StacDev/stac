// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_list_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacListView {
  Axis get scrollDirection;
  bool get reverse;
  bool? get primary;
  StacScrollPhysics? get physics;
  bool get shrinkWrap;
  StacEdgeInsets? get padding;
  bool get addAutomaticKeepAlives;
  bool get addRepaintBoundaries;
  bool get addSemanticIndexes;
  double? get cacheExtent;
  List<Map<String, dynamic>> get children;
  Map<String, dynamic>? get separator;
  int? get semanticChildCount;
  DragStartBehavior get dragStartBehavior;
  ScrollViewKeyboardDismissBehavior get keyboardDismissBehavior;
  String? get restorationId;
  Clip get clipBehavior;

  /// Create a copy of StacListView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacListViewCopyWith<StacListView> get copyWith =>
      _$StacListViewCopyWithImpl<StacListView>(
          this as StacListView, _$identity);

  /// Serializes this StacListView to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacListView &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.shrinkWrap, shrinkWrap) ||
                other.shrinkWrap == shrinkWrap) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.addAutomaticKeepAlives, addAutomaticKeepAlives) ||
                other.addAutomaticKeepAlives == addAutomaticKeepAlives) &&
            (identical(other.addRepaintBoundaries, addRepaintBoundaries) ||
                other.addRepaintBoundaries == addRepaintBoundaries) &&
            (identical(other.addSemanticIndexes, addSemanticIndexes) ||
                other.addSemanticIndexes == addSemanticIndexes) &&
            (identical(other.cacheExtent, cacheExtent) ||
                other.cacheExtent == cacheExtent) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            const DeepCollectionEquality().equals(other.separator, separator) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      scrollDirection,
      reverse,
      primary,
      physics,
      shrinkWrap,
      padding,
      addAutomaticKeepAlives,
      addRepaintBoundaries,
      addSemanticIndexes,
      cacheExtent,
      const DeepCollectionEquality().hash(children),
      const DeepCollectionEquality().hash(separator),
      semanticChildCount,
      dragStartBehavior,
      keyboardDismissBehavior,
      restorationId,
      clipBehavior);

  @override
  String toString() {
    return 'StacListView(scrollDirection: $scrollDirection, reverse: $reverse, primary: $primary, physics: $physics, shrinkWrap: $shrinkWrap, padding: $padding, addAutomaticKeepAlives: $addAutomaticKeepAlives, addRepaintBoundaries: $addRepaintBoundaries, addSemanticIndexes: $addSemanticIndexes, cacheExtent: $cacheExtent, children: $children, separator: $separator, semanticChildCount: $semanticChildCount, dragStartBehavior: $dragStartBehavior, keyboardDismissBehavior: $keyboardDismissBehavior, restorationId: $restorationId, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacListViewCopyWith<$Res> {
  factory $StacListViewCopyWith(
          StacListView value, $Res Function(StacListView) _then) =
      _$StacListViewCopyWithImpl;
  @useResult
  $Res call(
      {Axis scrollDirection,
      bool reverse,
      bool? primary,
      StacScrollPhysics? physics,
      bool shrinkWrap,
      StacEdgeInsets? padding,
      bool addAutomaticKeepAlives,
      bool addRepaintBoundaries,
      bool addSemanticIndexes,
      double? cacheExtent,
      List<Map<String, dynamic>> children,
      Map<String, dynamic>? separator,
      int? semanticChildCount,
      DragStartBehavior dragStartBehavior,
      ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
      String? restorationId,
      Clip clipBehavior});

  $StacEdgeInsetsCopyWith<$Res>? get padding;
}

/// @nodoc
class _$StacListViewCopyWithImpl<$Res> implements $StacListViewCopyWith<$Res> {
  _$StacListViewCopyWithImpl(this._self, this._then);

  final StacListView _self;
  final $Res Function(StacListView) _then;

  /// Create a copy of StacListView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? primary = freezed,
    Object? physics = freezed,
    Object? shrinkWrap = null,
    Object? padding = freezed,
    Object? addAutomaticKeepAlives = null,
    Object? addRepaintBoundaries = null,
    Object? addSemanticIndexes = null,
    Object? cacheExtent = freezed,
    Object? children = null,
    Object? separator = freezed,
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
      primary: freezed == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
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
              as double?,
      children: null == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      separator: freezed == separator
          ? _self.separator
          : separator // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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

  /// Create a copy of StacListView
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
class _StacListView implements StacListView {
  const _StacListView(
      {this.scrollDirection = Axis.vertical,
      this.reverse = false,
      this.primary,
      this.physics,
      this.shrinkWrap = false,
      this.padding,
      this.addAutomaticKeepAlives = true,
      this.addRepaintBoundaries = true,
      this.addSemanticIndexes = true,
      this.cacheExtent,
      final List<Map<String, dynamic>> children = const [],
      final Map<String, dynamic>? separator,
      this.semanticChildCount,
      this.dragStartBehavior = DragStartBehavior.start,
      this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
      this.restorationId,
      this.clipBehavior = Clip.hardEdge})
      : _children = children,
        _separator = separator;
  factory _StacListView.fromJson(Map<String, dynamic> json) =>
      _$StacListViewFromJson(json);

  @override
  @JsonKey()
  final Axis scrollDirection;
  @override
  @JsonKey()
  final bool reverse;
  @override
  final bool? primary;
  @override
  final StacScrollPhysics? physics;
  @override
  @JsonKey()
  final bool shrinkWrap;
  @override
  final StacEdgeInsets? padding;
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
  final double? cacheExtent;
  final List<Map<String, dynamic>> _children;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  final Map<String, dynamic>? _separator;
  @override
  Map<String, dynamic>? get separator {
    final value = _separator;
    if (value == null) return null;
    if (_separator is EqualUnmodifiableMapView) return _separator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
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

  /// Create a copy of StacListView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacListViewCopyWith<_StacListView> get copyWith =>
      __$StacListViewCopyWithImpl<_StacListView>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacListViewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacListView &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.shrinkWrap, shrinkWrap) ||
                other.shrinkWrap == shrinkWrap) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.addAutomaticKeepAlives, addAutomaticKeepAlives) ||
                other.addAutomaticKeepAlives == addAutomaticKeepAlives) &&
            (identical(other.addRepaintBoundaries, addRepaintBoundaries) ||
                other.addRepaintBoundaries == addRepaintBoundaries) &&
            (identical(other.addSemanticIndexes, addSemanticIndexes) ||
                other.addSemanticIndexes == addSemanticIndexes) &&
            (identical(other.cacheExtent, cacheExtent) ||
                other.cacheExtent == cacheExtent) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            const DeepCollectionEquality()
                .equals(other._separator, _separator) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      scrollDirection,
      reverse,
      primary,
      physics,
      shrinkWrap,
      padding,
      addAutomaticKeepAlives,
      addRepaintBoundaries,
      addSemanticIndexes,
      cacheExtent,
      const DeepCollectionEquality().hash(_children),
      const DeepCollectionEquality().hash(_separator),
      semanticChildCount,
      dragStartBehavior,
      keyboardDismissBehavior,
      restorationId,
      clipBehavior);

  @override
  String toString() {
    return 'StacListView(scrollDirection: $scrollDirection, reverse: $reverse, primary: $primary, physics: $physics, shrinkWrap: $shrinkWrap, padding: $padding, addAutomaticKeepAlives: $addAutomaticKeepAlives, addRepaintBoundaries: $addRepaintBoundaries, addSemanticIndexes: $addSemanticIndexes, cacheExtent: $cacheExtent, children: $children, separator: $separator, semanticChildCount: $semanticChildCount, dragStartBehavior: $dragStartBehavior, keyboardDismissBehavior: $keyboardDismissBehavior, restorationId: $restorationId, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacListViewCopyWith<$Res>
    implements $StacListViewCopyWith<$Res> {
  factory _$StacListViewCopyWith(
          _StacListView value, $Res Function(_StacListView) _then) =
      __$StacListViewCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Axis scrollDirection,
      bool reverse,
      bool? primary,
      StacScrollPhysics? physics,
      bool shrinkWrap,
      StacEdgeInsets? padding,
      bool addAutomaticKeepAlives,
      bool addRepaintBoundaries,
      bool addSemanticIndexes,
      double? cacheExtent,
      List<Map<String, dynamic>> children,
      Map<String, dynamic>? separator,
      int? semanticChildCount,
      DragStartBehavior dragStartBehavior,
      ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
      String? restorationId,
      Clip clipBehavior});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
}

/// @nodoc
class __$StacListViewCopyWithImpl<$Res>
    implements _$StacListViewCopyWith<$Res> {
  __$StacListViewCopyWithImpl(this._self, this._then);

  final _StacListView _self;
  final $Res Function(_StacListView) _then;

  /// Create a copy of StacListView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? primary = freezed,
    Object? physics = freezed,
    Object? shrinkWrap = null,
    Object? padding = freezed,
    Object? addAutomaticKeepAlives = null,
    Object? addRepaintBoundaries = null,
    Object? addSemanticIndexes = null,
    Object? cacheExtent = freezed,
    Object? children = null,
    Object? separator = freezed,
    Object? semanticChildCount = freezed,
    Object? dragStartBehavior = null,
    Object? keyboardDismissBehavior = null,
    Object? restorationId = freezed,
    Object? clipBehavior = null,
  }) {
    return _then(_StacListView(
      scrollDirection: null == scrollDirection
          ? _self.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as Axis,
      reverse: null == reverse
          ? _self.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      primary: freezed == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
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
              as double?,
      children: null == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      separator: freezed == separator
          ? _self._separator
          : separator // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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

  /// Create a copy of StacListView
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
