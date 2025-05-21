// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_custom_scroll_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacCustomScrollView {
  List<Map<String, dynamic>> get slivers;
  Axis get scrollDirection;
  bool get reverse;
  bool? get primary;
  StacScrollPhysics? get physics;
  bool get shrinkWrap;
  StacDouble get anchor;
  StacDouble? get cacheExtent;
  int? get semanticChildCount;
  DragStartBehavior get dragStartBehavior;
  ScrollViewKeyboardDismissBehavior get keyboardDismissBehavior;
  String? get restorationId;
  Clip get clipBehavior;
  HitTestBehavior get hitTestBehavior;

  /// Create a copy of StacCustomScrollView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacCustomScrollViewCopyWith<StacCustomScrollView> get copyWith =>
      _$StacCustomScrollViewCopyWithImpl<StacCustomScrollView>(
          this as StacCustomScrollView, _$identity);

  /// Serializes this StacCustomScrollView to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacCustomScrollView &&
            const DeepCollectionEquality().equals(other.slivers, slivers) &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.shrinkWrap, shrinkWrap) ||
                other.shrinkWrap == shrinkWrap) &&
            (identical(other.anchor, anchor) || other.anchor == anchor) &&
            (identical(other.cacheExtent, cacheExtent) ||
                other.cacheExtent == cacheExtent) &&
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
                other.clipBehavior == clipBehavior) &&
            (identical(other.hitTestBehavior, hitTestBehavior) ||
                other.hitTestBehavior == hitTestBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(slivers),
      scrollDirection,
      reverse,
      primary,
      physics,
      shrinkWrap,
      anchor,
      cacheExtent,
      semanticChildCount,
      dragStartBehavior,
      keyboardDismissBehavior,
      restorationId,
      clipBehavior,
      hitTestBehavior);

  @override
  String toString() {
    return 'StacCustomScrollView(slivers: $slivers, scrollDirection: $scrollDirection, reverse: $reverse, primary: $primary, physics: $physics, shrinkWrap: $shrinkWrap, anchor: $anchor, cacheExtent: $cacheExtent, semanticChildCount: $semanticChildCount, dragStartBehavior: $dragStartBehavior, keyboardDismissBehavior: $keyboardDismissBehavior, restorationId: $restorationId, clipBehavior: $clipBehavior, hitTestBehavior: $hitTestBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacCustomScrollViewCopyWith<$Res> {
  factory $StacCustomScrollViewCopyWith(StacCustomScrollView value,
          $Res Function(StacCustomScrollView) _then) =
      _$StacCustomScrollViewCopyWithImpl;
  @useResult
  $Res call(
      {List<Map<String, dynamic>> slivers,
      Axis scrollDirection,
      bool reverse,
      bool? primary,
      StacScrollPhysics? physics,
      bool shrinkWrap,
      StacDouble anchor,
      StacDouble? cacheExtent,
      int? semanticChildCount,
      DragStartBehavior dragStartBehavior,
      ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
      String? restorationId,
      Clip clipBehavior,
      HitTestBehavior hitTestBehavior});
}

/// @nodoc
class _$StacCustomScrollViewCopyWithImpl<$Res>
    implements $StacCustomScrollViewCopyWith<$Res> {
  _$StacCustomScrollViewCopyWithImpl(this._self, this._then);

  final StacCustomScrollView _self;
  final $Res Function(StacCustomScrollView) _then;

  /// Create a copy of StacCustomScrollView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slivers = null,
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? primary = freezed,
    Object? physics = freezed,
    Object? shrinkWrap = null,
    Object? anchor = null,
    Object? cacheExtent = freezed,
    Object? semanticChildCount = freezed,
    Object? dragStartBehavior = null,
    Object? keyboardDismissBehavior = null,
    Object? restorationId = freezed,
    Object? clipBehavior = null,
    Object? hitTestBehavior = null,
  }) {
    return _then(_self.copyWith(
      slivers: null == slivers
          ? _self.slivers
          : slivers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
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
      anchor: null == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      cacheExtent: freezed == cacheExtent
          ? _self.cacheExtent
          : cacheExtent // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
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
      hitTestBehavior: null == hitTestBehavior
          ? _self.hitTestBehavior
          : hitTestBehavior // ignore: cast_nullable_to_non_nullable
              as HitTestBehavior,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacCustomScrollView implements StacCustomScrollView {
  const _StacCustomScrollView(
      {final List<Map<String, dynamic>> slivers = const [],
      this.scrollDirection = Axis.vertical,
      this.reverse = false,
      this.primary,
      this.physics,
      this.shrinkWrap = false,
      this.anchor = StacDouble.zero,
      this.cacheExtent,
      this.semanticChildCount,
      this.dragStartBehavior = DragStartBehavior.start,
      this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
      this.restorationId,
      this.clipBehavior = Clip.hardEdge,
      this.hitTestBehavior = HitTestBehavior.opaque})
      : _slivers = slivers;
  factory _StacCustomScrollView.fromJson(Map<String, dynamic> json) =>
      _$StacCustomScrollViewFromJson(json);

  final List<Map<String, dynamic>> _slivers;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get slivers {
    if (_slivers is EqualUnmodifiableListView) return _slivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slivers);
  }

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
  @JsonKey()
  final StacDouble anchor;
  @override
  final StacDouble? cacheExtent;
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
  @override
  @JsonKey()
  final HitTestBehavior hitTestBehavior;

  /// Create a copy of StacCustomScrollView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacCustomScrollViewCopyWith<_StacCustomScrollView> get copyWith =>
      __$StacCustomScrollViewCopyWithImpl<_StacCustomScrollView>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacCustomScrollViewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacCustomScrollView &&
            const DeepCollectionEquality().equals(other._slivers, _slivers) &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.shrinkWrap, shrinkWrap) ||
                other.shrinkWrap == shrinkWrap) &&
            (identical(other.anchor, anchor) || other.anchor == anchor) &&
            (identical(other.cacheExtent, cacheExtent) ||
                other.cacheExtent == cacheExtent) &&
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
                other.clipBehavior == clipBehavior) &&
            (identical(other.hitTestBehavior, hitTestBehavior) ||
                other.hitTestBehavior == hitTestBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_slivers),
      scrollDirection,
      reverse,
      primary,
      physics,
      shrinkWrap,
      anchor,
      cacheExtent,
      semanticChildCount,
      dragStartBehavior,
      keyboardDismissBehavior,
      restorationId,
      clipBehavior,
      hitTestBehavior);

  @override
  String toString() {
    return 'StacCustomScrollView(slivers: $slivers, scrollDirection: $scrollDirection, reverse: $reverse, primary: $primary, physics: $physics, shrinkWrap: $shrinkWrap, anchor: $anchor, cacheExtent: $cacheExtent, semanticChildCount: $semanticChildCount, dragStartBehavior: $dragStartBehavior, keyboardDismissBehavior: $keyboardDismissBehavior, restorationId: $restorationId, clipBehavior: $clipBehavior, hitTestBehavior: $hitTestBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacCustomScrollViewCopyWith<$Res>
    implements $StacCustomScrollViewCopyWith<$Res> {
  factory _$StacCustomScrollViewCopyWith(_StacCustomScrollView value,
          $Res Function(_StacCustomScrollView) _then) =
      __$StacCustomScrollViewCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>> slivers,
      Axis scrollDirection,
      bool reverse,
      bool? primary,
      StacScrollPhysics? physics,
      bool shrinkWrap,
      StacDouble anchor,
      StacDouble? cacheExtent,
      int? semanticChildCount,
      DragStartBehavior dragStartBehavior,
      ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
      String? restorationId,
      Clip clipBehavior,
      HitTestBehavior hitTestBehavior});
}

/// @nodoc
class __$StacCustomScrollViewCopyWithImpl<$Res>
    implements _$StacCustomScrollViewCopyWith<$Res> {
  __$StacCustomScrollViewCopyWithImpl(this._self, this._then);

  final _StacCustomScrollView _self;
  final $Res Function(_StacCustomScrollView) _then;

  /// Create a copy of StacCustomScrollView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? slivers = null,
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? primary = freezed,
    Object? physics = freezed,
    Object? shrinkWrap = null,
    Object? anchor = null,
    Object? cacheExtent = freezed,
    Object? semanticChildCount = freezed,
    Object? dragStartBehavior = null,
    Object? keyboardDismissBehavior = null,
    Object? restorationId = freezed,
    Object? clipBehavior = null,
    Object? hitTestBehavior = null,
  }) {
    return _then(_StacCustomScrollView(
      slivers: null == slivers
          ? _self._slivers
          : slivers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
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
      anchor: null == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      cacheExtent: freezed == cacheExtent
          ? _self.cacheExtent
          : cacheExtent // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
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
      hitTestBehavior: null == hitTestBehavior
          ? _self.hitTestBehavior
          : hitTestBehavior // ignore: cast_nullable_to_non_nullable
              as HitTestBehavior,
    ));
  }
}

// dart format on
