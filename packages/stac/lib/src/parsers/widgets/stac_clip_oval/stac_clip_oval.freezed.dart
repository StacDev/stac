// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_clip_oval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacClipOval {
  Clip get clipBehavior;
  Map<String, dynamic>? get child;

  /// Create a copy of StacClipOval
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacClipOvalCopyWith<StacClipOval> get copyWith =>
      _$StacClipOvalCopyWithImpl<StacClipOval>(
          this as StacClipOval, _$identity);

  /// Serializes this StacClipOval to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacClipOval &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, clipBehavior, const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacClipOval(clipBehavior: $clipBehavior, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacClipOvalCopyWith<$Res> {
  factory $StacClipOvalCopyWith(
          StacClipOval value, $Res Function(StacClipOval) _then) =
      _$StacClipOvalCopyWithImpl;
  @useResult
  $Res call({Clip clipBehavior, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacClipOvalCopyWithImpl<$Res> implements $StacClipOvalCopyWith<$Res> {
  _$StacClipOvalCopyWithImpl(this._self, this._then);

  final StacClipOval _self;
  final $Res Function(StacClipOval) _then;

  /// Create a copy of StacClipOval
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clipBehavior = null,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacClipOval implements StacClipOval {
  const _StacClipOval(
      {this.clipBehavior = Clip.antiAlias, final Map<String, dynamic>? child})
      : _child = child;
  factory _StacClipOval.fromJson(Map<String, dynamic> json) =>
      _$StacClipOvalFromJson(json);

  @override
  @JsonKey()
  final Clip clipBehavior;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacClipOval
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacClipOvalCopyWith<_StacClipOval> get copyWith =>
      __$StacClipOvalCopyWithImpl<_StacClipOval>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacClipOvalToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacClipOval &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, clipBehavior, const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacClipOval(clipBehavior: $clipBehavior, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacClipOvalCopyWith<$Res>
    implements $StacClipOvalCopyWith<$Res> {
  factory _$StacClipOvalCopyWith(
          _StacClipOval value, $Res Function(_StacClipOval) _then) =
      __$StacClipOvalCopyWithImpl;
  @override
  @useResult
  $Res call({Clip clipBehavior, Map<String, dynamic>? child});
}

/// @nodoc
class __$StacClipOvalCopyWithImpl<$Res>
    implements _$StacClipOvalCopyWith<$Res> {
  __$StacClipOvalCopyWithImpl(this._self, this._then);

  final _StacClipOval _self;
  final $Res Function(_StacClipOval) _then;

  /// Create a copy of StacClipOval
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clipBehavior = null,
    Object? child = freezed,
  }) {
    return _then(_StacClipOval(
      clipBehavior: null == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
