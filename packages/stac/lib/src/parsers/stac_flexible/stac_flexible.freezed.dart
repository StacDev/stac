// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_flexible.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacFlexible {
  Map<String, dynamic>? get child;
  int get flex;
  FlexFit get fit;

  /// Create a copy of StacFlexible
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacFlexibleCopyWith<StacFlexible> get copyWith =>
      _$StacFlexibleCopyWithImpl<StacFlexible>(
          this as StacFlexible, _$identity);

  /// Serializes this StacFlexible to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacFlexible &&
            const DeepCollectionEquality().equals(other.child, child) &&
            (identical(other.flex, flex) || other.flex == flex) &&
            (identical(other.fit, fit) || other.fit == fit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(child), flex, fit);

  @override
  String toString() {
    return 'StacFlexible(child: $child, flex: $flex, fit: $fit)';
  }
}

/// @nodoc
abstract mixin class $StacFlexibleCopyWith<$Res> {
  factory $StacFlexibleCopyWith(
          StacFlexible value, $Res Function(StacFlexible) _then) =
      _$StacFlexibleCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic>? child, int flex, FlexFit fit});
}

/// @nodoc
class _$StacFlexibleCopyWithImpl<$Res> implements $StacFlexibleCopyWith<$Res> {
  _$StacFlexibleCopyWithImpl(this._self, this._then);

  final StacFlexible _self;
  final $Res Function(StacFlexible) _then;

  /// Create a copy of StacFlexible
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = freezed,
    Object? flex = null,
    Object? fit = null,
  }) {
    return _then(_self.copyWith(
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      flex: null == flex
          ? _self.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
      fit: null == fit
          ? _self.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as FlexFit,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacFlexible implements StacFlexible {
  const _StacFlexible(
      {final Map<String, dynamic>? child,
      this.flex = 1,
      this.fit = FlexFit.loose})
      : _child = child;
  factory _StacFlexible.fromJson(Map<String, dynamic> json) =>
      _$StacFlexibleFromJson(json);

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
  final int flex;
  @override
  @JsonKey()
  final FlexFit fit;

  /// Create a copy of StacFlexible
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacFlexibleCopyWith<_StacFlexible> get copyWith =>
      __$StacFlexibleCopyWithImpl<_StacFlexible>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacFlexibleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacFlexible &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.flex, flex) || other.flex == flex) &&
            (identical(other.fit, fit) || other.fit == fit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_child), flex, fit);

  @override
  String toString() {
    return 'StacFlexible(child: $child, flex: $flex, fit: $fit)';
  }
}

/// @nodoc
abstract mixin class _$StacFlexibleCopyWith<$Res>
    implements $StacFlexibleCopyWith<$Res> {
  factory _$StacFlexibleCopyWith(
          _StacFlexible value, $Res Function(_StacFlexible) _then) =
      __$StacFlexibleCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String, dynamic>? child, int flex, FlexFit fit});
}

/// @nodoc
class __$StacFlexibleCopyWithImpl<$Res>
    implements _$StacFlexibleCopyWith<$Res> {
  __$StacFlexibleCopyWithImpl(this._self, this._then);

  final _StacFlexible _self;
  final $Res Function(_StacFlexible) _then;

  /// Create a copy of StacFlexible
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? child = freezed,
    Object? flex = null,
    Object? fit = null,
  }) {
    return _then(_StacFlexible(
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      flex: null == flex
          ? _self.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
      fit: null == fit
          ? _self.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as FlexFit,
    ));
  }
}

// dart format on
