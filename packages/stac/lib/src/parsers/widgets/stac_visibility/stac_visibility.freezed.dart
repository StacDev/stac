// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_visibility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacVisibility {
  Map<String, dynamic> get child;
  bool? get visible;
  bool? get maintainState;
  bool? get maintainAnimation;
  bool? get maintainSize;
  bool? get maintainSemantics;
  bool? get maintainInteractivity;
  Map<String, dynamic>? get replacement;

  /// Create a copy of StacVisibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacVisibilityCopyWith<StacVisibility> get copyWith =>
      _$StacVisibilityCopyWithImpl<StacVisibility>(
          this as StacVisibility, _$identity);

  /// Serializes this StacVisibility to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacVisibility &&
            const DeepCollectionEquality().equals(other.child, child) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.maintainState, maintainState) ||
                other.maintainState == maintainState) &&
            (identical(other.maintainAnimation, maintainAnimation) ||
                other.maintainAnimation == maintainAnimation) &&
            (identical(other.maintainSize, maintainSize) ||
                other.maintainSize == maintainSize) &&
            (identical(other.maintainSemantics, maintainSemantics) ||
                other.maintainSemantics == maintainSemantics) &&
            (identical(other.maintainInteractivity, maintainInteractivity) ||
                other.maintainInteractivity == maintainInteractivity) &&
            const DeepCollectionEquality()
                .equals(other.replacement, replacement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(child),
      visible,
      maintainState,
      maintainAnimation,
      maintainSize,
      maintainSemantics,
      maintainInteractivity,
      const DeepCollectionEquality().hash(replacement));

  @override
  String toString() {
    return 'StacVisibility(child: $child, visible: $visible, maintainState: $maintainState, maintainAnimation: $maintainAnimation, maintainSize: $maintainSize, maintainSemantics: $maintainSemantics, maintainInteractivity: $maintainInteractivity, replacement: $replacement)';
  }
}

/// @nodoc
abstract mixin class $StacVisibilityCopyWith<$Res> {
  factory $StacVisibilityCopyWith(
          StacVisibility value, $Res Function(StacVisibility) _then) =
      _$StacVisibilityCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic> child,
      bool? visible,
      bool? maintainState,
      bool? maintainAnimation,
      bool? maintainSize,
      bool? maintainSemantics,
      bool? maintainInteractivity,
      Map<String, dynamic>? replacement});
}

/// @nodoc
class _$StacVisibilityCopyWithImpl<$Res>
    implements $StacVisibilityCopyWith<$Res> {
  _$StacVisibilityCopyWithImpl(this._self, this._then);

  final StacVisibility _self;
  final $Res Function(StacVisibility) _then;

  /// Create a copy of StacVisibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? visible = freezed,
    Object? maintainState = freezed,
    Object? maintainAnimation = freezed,
    Object? maintainSize = freezed,
    Object? maintainSemantics = freezed,
    Object? maintainInteractivity = freezed,
    Object? replacement = freezed,
  }) {
    return _then(_self.copyWith(
      child: null == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      visible: freezed == visible
          ? _self.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainState: freezed == maintainState
          ? _self.maintainState
          : maintainState // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainAnimation: freezed == maintainAnimation
          ? _self.maintainAnimation
          : maintainAnimation // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainSize: freezed == maintainSize
          ? _self.maintainSize
          : maintainSize // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainSemantics: freezed == maintainSemantics
          ? _self.maintainSemantics
          : maintainSemantics // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainInteractivity: freezed == maintainInteractivity
          ? _self.maintainInteractivity
          : maintainInteractivity // ignore: cast_nullable_to_non_nullable
              as bool?,
      replacement: freezed == replacement
          ? _self.replacement
          : replacement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacVisibility implements StacVisibility {
  const _StacVisibility(
      {required final Map<String, dynamic> child,
      this.visible,
      this.maintainState,
      this.maintainAnimation,
      this.maintainSize,
      this.maintainSemantics,
      this.maintainInteractivity,
      final Map<String, dynamic>? replacement})
      : _child = child,
        _replacement = replacement;
  factory _StacVisibility.fromJson(Map<String, dynamic> json) =>
      _$StacVisibilityFromJson(json);

  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  @override
  final bool? visible;
  @override
  final bool? maintainState;
  @override
  final bool? maintainAnimation;
  @override
  final bool? maintainSize;
  @override
  final bool? maintainSemantics;
  @override
  final bool? maintainInteractivity;
  final Map<String, dynamic>? _replacement;
  @override
  Map<String, dynamic>? get replacement {
    final value = _replacement;
    if (value == null) return null;
    if (_replacement is EqualUnmodifiableMapView) return _replacement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacVisibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacVisibilityCopyWith<_StacVisibility> get copyWith =>
      __$StacVisibilityCopyWithImpl<_StacVisibility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacVisibilityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacVisibility &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.maintainState, maintainState) ||
                other.maintainState == maintainState) &&
            (identical(other.maintainAnimation, maintainAnimation) ||
                other.maintainAnimation == maintainAnimation) &&
            (identical(other.maintainSize, maintainSize) ||
                other.maintainSize == maintainSize) &&
            (identical(other.maintainSemantics, maintainSemantics) ||
                other.maintainSemantics == maintainSemantics) &&
            (identical(other.maintainInteractivity, maintainInteractivity) ||
                other.maintainInteractivity == maintainInteractivity) &&
            const DeepCollectionEquality()
                .equals(other._replacement, _replacement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_child),
      visible,
      maintainState,
      maintainAnimation,
      maintainSize,
      maintainSemantics,
      maintainInteractivity,
      const DeepCollectionEquality().hash(_replacement));

  @override
  String toString() {
    return 'StacVisibility(child: $child, visible: $visible, maintainState: $maintainState, maintainAnimation: $maintainAnimation, maintainSize: $maintainSize, maintainSemantics: $maintainSemantics, maintainInteractivity: $maintainInteractivity, replacement: $replacement)';
  }
}

/// @nodoc
abstract mixin class _$StacVisibilityCopyWith<$Res>
    implements $StacVisibilityCopyWith<$Res> {
  factory _$StacVisibilityCopyWith(
          _StacVisibility value, $Res Function(_StacVisibility) _then) =
      __$StacVisibilityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> child,
      bool? visible,
      bool? maintainState,
      bool? maintainAnimation,
      bool? maintainSize,
      bool? maintainSemantics,
      bool? maintainInteractivity,
      Map<String, dynamic>? replacement});
}

/// @nodoc
class __$StacVisibilityCopyWithImpl<$Res>
    implements _$StacVisibilityCopyWith<$Res> {
  __$StacVisibilityCopyWithImpl(this._self, this._then);

  final _StacVisibility _self;
  final $Res Function(_StacVisibility) _then;

  /// Create a copy of StacVisibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? child = null,
    Object? visible = freezed,
    Object? maintainState = freezed,
    Object? maintainAnimation = freezed,
    Object? maintainSize = freezed,
    Object? maintainSemantics = freezed,
    Object? maintainInteractivity = freezed,
    Object? replacement = freezed,
  }) {
    return _then(_StacVisibility(
      child: null == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      visible: freezed == visible
          ? _self.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainState: freezed == maintainState
          ? _self.maintainState
          : maintainState // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainAnimation: freezed == maintainAnimation
          ? _self.maintainAnimation
          : maintainAnimation // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainSize: freezed == maintainSize
          ? _self.maintainSize
          : maintainSize // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainSemantics: freezed == maintainSemantics
          ? _self.maintainSemantics
          : maintainSemantics // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainInteractivity: freezed == maintainInteractivity
          ? _self.maintainInteractivity
          : maintainInteractivity // ignore: cast_nullable_to_non_nullable
              as bool?,
      replacement: freezed == replacement
          ? _self._replacement
          : replacement // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
