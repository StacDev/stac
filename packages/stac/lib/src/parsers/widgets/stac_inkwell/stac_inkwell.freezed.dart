// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_inkwell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacInkWell {
  Map<String, dynamic>? get onTap;
  Map<String, dynamic>? get child;

  /// Create a copy of StacInkWell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacInkWellCopyWith<StacInkWell> get copyWith =>
      _$StacInkWellCopyWithImpl<StacInkWell>(this as StacInkWell, _$identity);

  /// Serializes this StacInkWell to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacInkWell &&
            const DeepCollectionEquality().equals(other.onTap, onTap) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(onTap),
      const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacInkWell(onTap: $onTap, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacInkWellCopyWith<$Res> {
  factory $StacInkWellCopyWith(
          StacInkWell value, $Res Function(StacInkWell) _then) =
      _$StacInkWellCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic>? onTap, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacInkWellCopyWithImpl<$Res> implements $StacInkWellCopyWith<$Res> {
  _$StacInkWellCopyWithImpl(this._self, this._then);

  final StacInkWell _self;
  final $Res Function(StacInkWell) _then;

  /// Create a copy of StacInkWell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onTap = freezed,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      onTap: freezed == onTap
          ? _self.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacInkWell implements StacInkWell {
  const _StacInkWell(
      {required final Map<String, dynamic>? onTap,
      required final Map<String, dynamic>? child})
      : _onTap = onTap,
        _child = child;
  factory _StacInkWell.fromJson(Map<String, dynamic> json) =>
      _$StacInkWellFromJson(json);

  final Map<String, dynamic>? _onTap;
  @override
  Map<String, dynamic>? get onTap {
    final value = _onTap;
    if (value == null) return null;
    if (_onTap is EqualUnmodifiableMapView) return _onTap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacInkWell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacInkWellCopyWith<_StacInkWell> get copyWith =>
      __$StacInkWellCopyWithImpl<_StacInkWell>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacInkWellToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacInkWell &&
            const DeepCollectionEquality().equals(other._onTap, _onTap) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_onTap),
      const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacInkWell(onTap: $onTap, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacInkWellCopyWith<$Res>
    implements $StacInkWellCopyWith<$Res> {
  factory _$StacInkWellCopyWith(
          _StacInkWell value, $Res Function(_StacInkWell) _then) =
      __$StacInkWellCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String, dynamic>? onTap, Map<String, dynamic>? child});
}

/// @nodoc
class __$StacInkWellCopyWithImpl<$Res> implements _$StacInkWellCopyWith<$Res> {
  __$StacInkWellCopyWithImpl(this._self, this._then);

  final _StacInkWell _self;
  final $Res Function(_StacInkWell) _then;

  /// Create a copy of StacInkWell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? onTap = freezed,
    Object? child = freezed,
  }) {
    return _then(_StacInkWell(
      onTap: freezed == onTap
          ? _self._onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
