// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_expanded.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacExpanded {
  int get flex;
  Map<String, dynamic>? get child;

  /// Create a copy of StacExpanded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacExpandedCopyWith<StacExpanded> get copyWith =>
      _$StacExpandedCopyWithImpl<StacExpanded>(
          this as StacExpanded, _$identity);

  /// Serializes this StacExpanded to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacExpanded &&
            (identical(other.flex, flex) || other.flex == flex) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, flex, const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacExpanded(flex: $flex, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacExpandedCopyWith<$Res> {
  factory $StacExpandedCopyWith(
          StacExpanded value, $Res Function(StacExpanded) _then) =
      _$StacExpandedCopyWithImpl;
  @useResult
  $Res call({int flex, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacExpandedCopyWithImpl<$Res> implements $StacExpandedCopyWith<$Res> {
  _$StacExpandedCopyWithImpl(this._self, this._then);

  final StacExpanded _self;
  final $Res Function(StacExpanded) _then;

  /// Create a copy of StacExpanded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flex = null,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      flex: null == flex
          ? _self.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacExpanded implements StacExpanded {
  const _StacExpanded({this.flex = 1, final Map<String, dynamic>? child})
      : _child = child;
  factory _StacExpanded.fromJson(Map<String, dynamic> json) =>
      _$StacExpandedFromJson(json);

  @override
  @JsonKey()
  final int flex;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacExpanded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacExpandedCopyWith<_StacExpanded> get copyWith =>
      __$StacExpandedCopyWithImpl<_StacExpanded>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacExpandedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacExpanded &&
            (identical(other.flex, flex) || other.flex == flex) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, flex, const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacExpanded(flex: $flex, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacExpandedCopyWith<$Res>
    implements $StacExpandedCopyWith<$Res> {
  factory _$StacExpandedCopyWith(
          _StacExpanded value, $Res Function(_StacExpanded) _then) =
      __$StacExpandedCopyWithImpl;
  @override
  @useResult
  $Res call({int flex, Map<String, dynamic>? child});
}

/// @nodoc
class __$StacExpandedCopyWithImpl<$Res>
    implements _$StacExpandedCopyWith<$Res> {
  __$StacExpandedCopyWithImpl(this._self, this._then);

  final _StacExpanded _self;
  final $Res Function(_StacExpanded) _then;

  /// Create a copy of StacExpanded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? flex = null,
    Object? child = freezed,
  }) {
    return _then(_StacExpanded(
      flex: null == flex
          ? _self.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
