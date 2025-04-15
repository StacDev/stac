// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_safe_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSafeArea {
  Map<String, dynamic>? get child;
  bool get left;
  bool get top;
  bool get right;
  bool get bottom;
  StacEdgeInsets get minimum;
  bool get maintainBottomViewPadding;

  /// Create a copy of StacSafeArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSafeAreaCopyWith<StacSafeArea> get copyWith =>
      _$StacSafeAreaCopyWithImpl<StacSafeArea>(
          this as StacSafeArea, _$identity);

  /// Serializes this StacSafeArea to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSafeArea &&
            const DeepCollectionEquality().equals(other.child, child) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.maintainBottomViewPadding,
                    maintainBottomViewPadding) ||
                other.maintainBottomViewPadding == maintainBottomViewPadding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(child),
      left,
      top,
      right,
      bottom,
      minimum,
      maintainBottomViewPadding);

  @override
  String toString() {
    return 'StacSafeArea(child: $child, left: $left, top: $top, right: $right, bottom: $bottom, minimum: $minimum, maintainBottomViewPadding: $maintainBottomViewPadding)';
  }
}

/// @nodoc
abstract mixin class $StacSafeAreaCopyWith<$Res> {
  factory $StacSafeAreaCopyWith(
          StacSafeArea value, $Res Function(StacSafeArea) _then) =
      _$StacSafeAreaCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? child,
      bool left,
      bool top,
      bool right,
      bool bottom,
      StacEdgeInsets minimum,
      bool maintainBottomViewPadding});

  $StacEdgeInsetsCopyWith<$Res> get minimum;
}

/// @nodoc
class _$StacSafeAreaCopyWithImpl<$Res> implements $StacSafeAreaCopyWith<$Res> {
  _$StacSafeAreaCopyWithImpl(this._self, this._then);

  final StacSafeArea _self;
  final $Res Function(StacSafeArea) _then;

  /// Create a copy of StacSafeArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = freezed,
    Object? left = null,
    Object? top = null,
    Object? right = null,
    Object? bottom = null,
    Object? minimum = null,
    Object? maintainBottomViewPadding = null,
  }) {
    return _then(_self.copyWith(
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      left: null == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as bool,
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as bool,
      right: null == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as bool,
      bottom: null == bottom
          ? _self.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as bool,
      minimum: null == minimum
          ? _self.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets,
      maintainBottomViewPadding: null == maintainBottomViewPadding
          ? _self.maintainBottomViewPadding
          : maintainBottomViewPadding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacSafeArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res> get minimum {
    return $StacEdgeInsetsCopyWith<$Res>(_self.minimum, (value) {
      return _then(_self.copyWith(minimum: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacSafeArea implements StacSafeArea {
  const _StacSafeArea(
      {final Map<String, dynamic>? child,
      this.left = true,
      this.top = true,
      this.right = true,
      this.bottom = true,
      this.minimum = const StacEdgeInsets(),
      this.maintainBottomViewPadding = false})
      : _child = child;
  factory _StacSafeArea.fromJson(Map<String, dynamic> json) =>
      _$StacSafeAreaFromJson(json);

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
  final bool left;
  @override
  @JsonKey()
  final bool top;
  @override
  @JsonKey()
  final bool right;
  @override
  @JsonKey()
  final bool bottom;
  @override
  @JsonKey()
  final StacEdgeInsets minimum;
  @override
  @JsonKey()
  final bool maintainBottomViewPadding;

  /// Create a copy of StacSafeArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSafeAreaCopyWith<_StacSafeArea> get copyWith =>
      __$StacSafeAreaCopyWithImpl<_StacSafeArea>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSafeAreaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSafeArea &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.maintainBottomViewPadding,
                    maintainBottomViewPadding) ||
                other.maintainBottomViewPadding == maintainBottomViewPadding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_child),
      left,
      top,
      right,
      bottom,
      minimum,
      maintainBottomViewPadding);

  @override
  String toString() {
    return 'StacSafeArea(child: $child, left: $left, top: $top, right: $right, bottom: $bottom, minimum: $minimum, maintainBottomViewPadding: $maintainBottomViewPadding)';
  }
}

/// @nodoc
abstract mixin class _$StacSafeAreaCopyWith<$Res>
    implements $StacSafeAreaCopyWith<$Res> {
  factory _$StacSafeAreaCopyWith(
          _StacSafeArea value, $Res Function(_StacSafeArea) _then) =
      __$StacSafeAreaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? child,
      bool left,
      bool top,
      bool right,
      bool bottom,
      StacEdgeInsets minimum,
      bool maintainBottomViewPadding});

  @override
  $StacEdgeInsetsCopyWith<$Res> get minimum;
}

/// @nodoc
class __$StacSafeAreaCopyWithImpl<$Res>
    implements _$StacSafeAreaCopyWith<$Res> {
  __$StacSafeAreaCopyWithImpl(this._self, this._then);

  final _StacSafeArea _self;
  final $Res Function(_StacSafeArea) _then;

  /// Create a copy of StacSafeArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? child = freezed,
    Object? left = null,
    Object? top = null,
    Object? right = null,
    Object? bottom = null,
    Object? minimum = null,
    Object? maintainBottomViewPadding = null,
  }) {
    return _then(_StacSafeArea(
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      left: null == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as bool,
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as bool,
      right: null == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as bool,
      bottom: null == bottom
          ? _self.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as bool,
      minimum: null == minimum
          ? _self.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets,
      maintainBottomViewPadding: null == maintainBottomViewPadding
          ? _self.maintainBottomViewPadding
          : maintainBottomViewPadding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacSafeArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res> get minimum {
    return $StacEdgeInsetsCopyWith<$Res>(_self.minimum, (value) {
      return _then(_self.copyWith(minimum: value));
    });
  }
}

// dart format on
