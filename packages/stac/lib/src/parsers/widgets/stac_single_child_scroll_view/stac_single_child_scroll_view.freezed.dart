// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_single_child_scroll_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSingleChildScrollView {
  Axis get scrollDirection;
  bool get reverse;
  StacEdgeInsets? get padding;
  bool? get primary;
  StacScrollPhysics? get physics;
  Map<String, dynamic>? get child;
  DragStartBehavior get dragStartBehavior;
  Clip get clipBehavior;
  String? get restorationId;
  ScrollViewKeyboardDismissBehavior get keyboardDismissBehavior;

  /// Create a copy of StacSingleChildScrollView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSingleChildScrollViewCopyWith<StacSingleChildScrollView> get copyWith =>
      _$StacSingleChildScrollViewCopyWithImpl<StacSingleChildScrollView>(
          this as StacSingleChildScrollView, _$identity);

  /// Serializes this StacSingleChildScrollView to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSingleChildScrollView &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId) &&
            (identical(
                    other.keyboardDismissBehavior, keyboardDismissBehavior) ||
                other.keyboardDismissBehavior == keyboardDismissBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scrollDirection,
      reverse,
      padding,
      primary,
      physics,
      const DeepCollectionEquality().hash(child),
      dragStartBehavior,
      clipBehavior,
      restorationId,
      keyboardDismissBehavior);

  @override
  String toString() {
    return 'StacSingleChildScrollView(scrollDirection: $scrollDirection, reverse: $reverse, padding: $padding, primary: $primary, physics: $physics, child: $child, dragStartBehavior: $dragStartBehavior, clipBehavior: $clipBehavior, restorationId: $restorationId, keyboardDismissBehavior: $keyboardDismissBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacSingleChildScrollViewCopyWith<$Res> {
  factory $StacSingleChildScrollViewCopyWith(StacSingleChildScrollView value,
          $Res Function(StacSingleChildScrollView) _then) =
      _$StacSingleChildScrollViewCopyWithImpl;
  @useResult
  $Res call(
      {Axis scrollDirection,
      bool reverse,
      StacEdgeInsets? padding,
      bool? primary,
      StacScrollPhysics? physics,
      Map<String, dynamic>? child,
      DragStartBehavior dragStartBehavior,
      Clip clipBehavior,
      String? restorationId,
      ScrollViewKeyboardDismissBehavior keyboardDismissBehavior});

  $StacEdgeInsetsCopyWith<$Res>? get padding;
}

/// @nodoc
class _$StacSingleChildScrollViewCopyWithImpl<$Res>
    implements $StacSingleChildScrollViewCopyWith<$Res> {
  _$StacSingleChildScrollViewCopyWithImpl(this._self, this._then);

  final StacSingleChildScrollView _self;
  final $Res Function(StacSingleChildScrollView) _then;

  /// Create a copy of StacSingleChildScrollView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? padding = freezed,
    Object? primary = freezed,
    Object? physics = freezed,
    Object? child = freezed,
    Object? dragStartBehavior = null,
    Object? clipBehavior = null,
    Object? restorationId = freezed,
    Object? keyboardDismissBehavior = null,
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
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      primary: freezed == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
      physics: freezed == physics
          ? _self.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as StacScrollPhysics?,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dragStartBehavior: null == dragStartBehavior
          ? _self.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      restorationId: freezed == restorationId
          ? _self.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
      keyboardDismissBehavior: null == keyboardDismissBehavior
          ? _self.keyboardDismissBehavior
          : keyboardDismissBehavior // ignore: cast_nullable_to_non_nullable
              as ScrollViewKeyboardDismissBehavior,
    ));
  }

  /// Create a copy of StacSingleChildScrollView
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
class _StacSingleChildScrollView implements StacSingleChildScrollView {
  const _StacSingleChildScrollView(
      {this.scrollDirection = Axis.vertical,
      this.reverse = false,
      this.padding,
      this.primary,
      this.physics,
      final Map<String, dynamic>? child,
      this.dragStartBehavior = DragStartBehavior.start,
      this.clipBehavior = Clip.hardEdge,
      this.restorationId,
      this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual})
      : _child = child;
  factory _StacSingleChildScrollView.fromJson(Map<String, dynamic> json) =>
      _$StacSingleChildScrollViewFromJson(json);

  @override
  @JsonKey()
  final Axis scrollDirection;
  @override
  @JsonKey()
  final bool reverse;
  @override
  final StacEdgeInsets? padding;
  @override
  final bool? primary;
  @override
  final StacScrollPhysics? physics;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final DragStartBehavior dragStartBehavior;
  @override
  @JsonKey()
  final Clip clipBehavior;
  @override
  final String? restorationId;
  @override
  @JsonKey()
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

  /// Create a copy of StacSingleChildScrollView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSingleChildScrollViewCopyWith<_StacSingleChildScrollView>
      get copyWith =>
          __$StacSingleChildScrollViewCopyWithImpl<_StacSingleChildScrollView>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSingleChildScrollViewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSingleChildScrollView &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId) &&
            (identical(
                    other.keyboardDismissBehavior, keyboardDismissBehavior) ||
                other.keyboardDismissBehavior == keyboardDismissBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scrollDirection,
      reverse,
      padding,
      primary,
      physics,
      const DeepCollectionEquality().hash(_child),
      dragStartBehavior,
      clipBehavior,
      restorationId,
      keyboardDismissBehavior);

  @override
  String toString() {
    return 'StacSingleChildScrollView(scrollDirection: $scrollDirection, reverse: $reverse, padding: $padding, primary: $primary, physics: $physics, child: $child, dragStartBehavior: $dragStartBehavior, clipBehavior: $clipBehavior, restorationId: $restorationId, keyboardDismissBehavior: $keyboardDismissBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacSingleChildScrollViewCopyWith<$Res>
    implements $StacSingleChildScrollViewCopyWith<$Res> {
  factory _$StacSingleChildScrollViewCopyWith(_StacSingleChildScrollView value,
          $Res Function(_StacSingleChildScrollView) _then) =
      __$StacSingleChildScrollViewCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Axis scrollDirection,
      bool reverse,
      StacEdgeInsets? padding,
      bool? primary,
      StacScrollPhysics? physics,
      Map<String, dynamic>? child,
      DragStartBehavior dragStartBehavior,
      Clip clipBehavior,
      String? restorationId,
      ScrollViewKeyboardDismissBehavior keyboardDismissBehavior});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
}

/// @nodoc
class __$StacSingleChildScrollViewCopyWithImpl<$Res>
    implements _$StacSingleChildScrollViewCopyWith<$Res> {
  __$StacSingleChildScrollViewCopyWithImpl(this._self, this._then);

  final _StacSingleChildScrollView _self;
  final $Res Function(_StacSingleChildScrollView) _then;

  /// Create a copy of StacSingleChildScrollView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? padding = freezed,
    Object? primary = freezed,
    Object? physics = freezed,
    Object? child = freezed,
    Object? dragStartBehavior = null,
    Object? clipBehavior = null,
    Object? restorationId = freezed,
    Object? keyboardDismissBehavior = null,
  }) {
    return _then(_StacSingleChildScrollView(
      scrollDirection: null == scrollDirection
          ? _self.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as Axis,
      reverse: null == reverse
          ? _self.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      primary: freezed == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
      physics: freezed == physics
          ? _self.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as StacScrollPhysics?,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dragStartBehavior: null == dragStartBehavior
          ? _self.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      restorationId: freezed == restorationId
          ? _self.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
      keyboardDismissBehavior: null == keyboardDismissBehavior
          ? _self.keyboardDismissBehavior
          : keyboardDismissBehavior // ignore: cast_nullable_to_non_nullable
              as ScrollViewKeyboardDismissBehavior,
    ));
  }

  /// Create a copy of StacSingleChildScrollView
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
