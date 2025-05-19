// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_page_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacPageView {
  Axis get scrollDirection;
  bool get reverse;
  StacScrollPhysics? get physics;
  bool get pageSnapping;
  Map<String, dynamic>? get onPageChanged;
  DragStartBehavior get dragStartBehavior;
  bool get allowImplicitScrolling;
  String? get restorationId;
  Clip get clipBehavior;
  bool get padEnds;
  int get initialPage;
  dynamic get keepPage;
  StacDouble get viewportFraction;
  List<Map<String, dynamic>> get children;

  /// Create a copy of StacPageView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacPageViewCopyWith<StacPageView> get copyWith =>
      _$StacPageViewCopyWithImpl<StacPageView>(
          this as StacPageView, _$identity);

  /// Serializes this StacPageView to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacPageView &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.pageSnapping, pageSnapping) ||
                other.pageSnapping == pageSnapping) &&
            const DeepCollectionEquality()
                .equals(other.onPageChanged, onPageChanged) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(other.allowImplicitScrolling, allowImplicitScrolling) ||
                other.allowImplicitScrolling == allowImplicitScrolling) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.padEnds, padEnds) || other.padEnds == padEnds) &&
            (identical(other.initialPage, initialPage) ||
                other.initialPage == initialPage) &&
            const DeepCollectionEquality().equals(other.keepPage, keepPage) &&
            (identical(other.viewportFraction, viewportFraction) ||
                other.viewportFraction == viewportFraction) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scrollDirection,
      reverse,
      physics,
      pageSnapping,
      const DeepCollectionEquality().hash(onPageChanged),
      dragStartBehavior,
      allowImplicitScrolling,
      restorationId,
      clipBehavior,
      padEnds,
      initialPage,
      const DeepCollectionEquality().hash(keepPage),
      viewportFraction,
      const DeepCollectionEquality().hash(children));

  @override
  String toString() {
    return 'StacPageView(scrollDirection: $scrollDirection, reverse: $reverse, physics: $physics, pageSnapping: $pageSnapping, onPageChanged: $onPageChanged, dragStartBehavior: $dragStartBehavior, allowImplicitScrolling: $allowImplicitScrolling, restorationId: $restorationId, clipBehavior: $clipBehavior, padEnds: $padEnds, initialPage: $initialPage, keepPage: $keepPage, viewportFraction: $viewportFraction, children: $children)';
  }
}

/// @nodoc
abstract mixin class $StacPageViewCopyWith<$Res> {
  factory $StacPageViewCopyWith(
          StacPageView value, $Res Function(StacPageView) _then) =
      _$StacPageViewCopyWithImpl;
  @useResult
  $Res call(
      {Axis scrollDirection,
      bool reverse,
      StacScrollPhysics? physics,
      bool pageSnapping,
      Map<String, dynamic>? onPageChanged,
      DragStartBehavior dragStartBehavior,
      bool allowImplicitScrolling,
      String? restorationId,
      Clip clipBehavior,
      bool padEnds,
      int initialPage,
      dynamic keepPage,
      StacDouble viewportFraction,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class _$StacPageViewCopyWithImpl<$Res> implements $StacPageViewCopyWith<$Res> {
  _$StacPageViewCopyWithImpl(this._self, this._then);

  final StacPageView _self;
  final $Res Function(StacPageView) _then;

  /// Create a copy of StacPageView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? physics = freezed,
    Object? pageSnapping = null,
    Object? onPageChanged = freezed,
    Object? dragStartBehavior = null,
    Object? allowImplicitScrolling = null,
    Object? restorationId = freezed,
    Object? clipBehavior = null,
    Object? padEnds = null,
    Object? initialPage = null,
    Object? keepPage = freezed,
    Object? viewportFraction = null,
    Object? children = null,
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
      physics: freezed == physics
          ? _self.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as StacScrollPhysics?,
      pageSnapping: null == pageSnapping
          ? _self.pageSnapping
          : pageSnapping // ignore: cast_nullable_to_non_nullable
              as bool,
      onPageChanged: freezed == onPageChanged
          ? _self.onPageChanged
          : onPageChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dragStartBehavior: null == dragStartBehavior
          ? _self.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      allowImplicitScrolling: null == allowImplicitScrolling
          ? _self.allowImplicitScrolling
          : allowImplicitScrolling // ignore: cast_nullable_to_non_nullable
              as bool,
      restorationId: freezed == restorationId
          ? _self.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      padEnds: null == padEnds
          ? _self.padEnds
          : padEnds // ignore: cast_nullable_to_non_nullable
              as bool,
      initialPage: null == initialPage
          ? _self.initialPage
          : initialPage // ignore: cast_nullable_to_non_nullable
              as int,
      keepPage: freezed == keepPage
          ? _self.keepPage
          : keepPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      viewportFraction: null == viewportFraction
          ? _self.viewportFraction
          : viewportFraction // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      children: null == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacPageView implements StacPageView {
  const _StacPageView(
      {this.scrollDirection = Axis.horizontal,
      this.reverse = false,
      this.physics,
      this.pageSnapping = true,
      final Map<String, dynamic>? onPageChanged,
      this.dragStartBehavior = DragStartBehavior.start,
      this.allowImplicitScrolling = false,
      this.restorationId,
      this.clipBehavior = Clip.hardEdge,
      this.padEnds = true,
      this.initialPage = 0,
      this.keepPage = true,
      this.viewportFraction = const StacDouble(1.0),
      final List<Map<String, dynamic>> children = const []})
      : _onPageChanged = onPageChanged,
        _children = children;
  factory _StacPageView.fromJson(Map<String, dynamic> json) =>
      _$StacPageViewFromJson(json);

  @override
  @JsonKey()
  final Axis scrollDirection;
  @override
  @JsonKey()
  final bool reverse;
  @override
  final StacScrollPhysics? physics;
  @override
  @JsonKey()
  final bool pageSnapping;
  final Map<String, dynamic>? _onPageChanged;
  @override
  Map<String, dynamic>? get onPageChanged {
    final value = _onPageChanged;
    if (value == null) return null;
    if (_onPageChanged is EqualUnmodifiableMapView) return _onPageChanged;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final DragStartBehavior dragStartBehavior;
  @override
  @JsonKey()
  final bool allowImplicitScrolling;
  @override
  final String? restorationId;
  @override
  @JsonKey()
  final Clip clipBehavior;
  @override
  @JsonKey()
  final bool padEnds;
  @override
  @JsonKey()
  final int initialPage;
  @override
  @JsonKey()
  final dynamic keepPage;
  @override
  @JsonKey()
  final StacDouble viewportFraction;
  final List<Map<String, dynamic>> _children;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  /// Create a copy of StacPageView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacPageViewCopyWith<_StacPageView> get copyWith =>
      __$StacPageViewCopyWithImpl<_StacPageView>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacPageViewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacPageView &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.pageSnapping, pageSnapping) ||
                other.pageSnapping == pageSnapping) &&
            const DeepCollectionEquality()
                .equals(other._onPageChanged, _onPageChanged) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(other.allowImplicitScrolling, allowImplicitScrolling) ||
                other.allowImplicitScrolling == allowImplicitScrolling) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.padEnds, padEnds) || other.padEnds == padEnds) &&
            (identical(other.initialPage, initialPage) ||
                other.initialPage == initialPage) &&
            const DeepCollectionEquality().equals(other.keepPage, keepPage) &&
            (identical(other.viewportFraction, viewportFraction) ||
                other.viewportFraction == viewportFraction) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scrollDirection,
      reverse,
      physics,
      pageSnapping,
      const DeepCollectionEquality().hash(_onPageChanged),
      dragStartBehavior,
      allowImplicitScrolling,
      restorationId,
      clipBehavior,
      padEnds,
      initialPage,
      const DeepCollectionEquality().hash(keepPage),
      viewportFraction,
      const DeepCollectionEquality().hash(_children));

  @override
  String toString() {
    return 'StacPageView(scrollDirection: $scrollDirection, reverse: $reverse, physics: $physics, pageSnapping: $pageSnapping, onPageChanged: $onPageChanged, dragStartBehavior: $dragStartBehavior, allowImplicitScrolling: $allowImplicitScrolling, restorationId: $restorationId, clipBehavior: $clipBehavior, padEnds: $padEnds, initialPage: $initialPage, keepPage: $keepPage, viewportFraction: $viewportFraction, children: $children)';
  }
}

/// @nodoc
abstract mixin class _$StacPageViewCopyWith<$Res>
    implements $StacPageViewCopyWith<$Res> {
  factory _$StacPageViewCopyWith(
          _StacPageView value, $Res Function(_StacPageView) _then) =
      __$StacPageViewCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Axis scrollDirection,
      bool reverse,
      StacScrollPhysics? physics,
      bool pageSnapping,
      Map<String, dynamic>? onPageChanged,
      DragStartBehavior dragStartBehavior,
      bool allowImplicitScrolling,
      String? restorationId,
      Clip clipBehavior,
      bool padEnds,
      int initialPage,
      dynamic keepPage,
      StacDouble viewportFraction,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class __$StacPageViewCopyWithImpl<$Res>
    implements _$StacPageViewCopyWith<$Res> {
  __$StacPageViewCopyWithImpl(this._self, this._then);

  final _StacPageView _self;
  final $Res Function(_StacPageView) _then;

  /// Create a copy of StacPageView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? physics = freezed,
    Object? pageSnapping = null,
    Object? onPageChanged = freezed,
    Object? dragStartBehavior = null,
    Object? allowImplicitScrolling = null,
    Object? restorationId = freezed,
    Object? clipBehavior = null,
    Object? padEnds = null,
    Object? initialPage = null,
    Object? keepPage = freezed,
    Object? viewportFraction = null,
    Object? children = null,
  }) {
    return _then(_StacPageView(
      scrollDirection: null == scrollDirection
          ? _self.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as Axis,
      reverse: null == reverse
          ? _self.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      physics: freezed == physics
          ? _self.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as StacScrollPhysics?,
      pageSnapping: null == pageSnapping
          ? _self.pageSnapping
          : pageSnapping // ignore: cast_nullable_to_non_nullable
              as bool,
      onPageChanged: freezed == onPageChanged
          ? _self._onPageChanged
          : onPageChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dragStartBehavior: null == dragStartBehavior
          ? _self.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      allowImplicitScrolling: null == allowImplicitScrolling
          ? _self.allowImplicitScrolling
          : allowImplicitScrolling // ignore: cast_nullable_to_non_nullable
              as bool,
      restorationId: freezed == restorationId
          ? _self.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      padEnds: null == padEnds
          ? _self.padEnds
          : padEnds // ignore: cast_nullable_to_non_nullable
              as bool,
      initialPage: null == initialPage
          ? _self.initialPage
          : initialPage // ignore: cast_nullable_to_non_nullable
              as int,
      keepPage: freezed == keepPage
          ? _self.keepPage
          : keepPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      viewportFraction: null == viewportFraction
          ? _self.viewportFraction
          : viewportFraction // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      children: null == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

// dart format on
