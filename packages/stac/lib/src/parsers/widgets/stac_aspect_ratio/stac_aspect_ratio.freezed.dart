// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_aspect_ratio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacAspectRatio {
  double get aspectRatio;
  Map<String, dynamic>? get child;

  /// Create a copy of StacAspectRatio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacAspectRatioCopyWith<StacAspectRatio> get copyWith =>
      _$StacAspectRatioCopyWithImpl<StacAspectRatio>(
          this as StacAspectRatio, _$identity);

  /// Serializes this StacAspectRatio to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacAspectRatio &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, aspectRatio, const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacAspectRatio(aspectRatio: $aspectRatio, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacAspectRatioCopyWith<$Res> {
  factory $StacAspectRatioCopyWith(
          StacAspectRatio value, $Res Function(StacAspectRatio) _then) =
      _$StacAspectRatioCopyWithImpl;
  @useResult
  $Res call({double aspectRatio, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacAspectRatioCopyWithImpl<$Res>
    implements $StacAspectRatioCopyWith<$Res> {
  _$StacAspectRatioCopyWithImpl(this._self, this._then);

  final StacAspectRatio _self;
  final $Res Function(StacAspectRatio) _then;

  /// Create a copy of StacAspectRatio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = null,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      aspectRatio: null == aspectRatio
          ? _self.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacAspectRatio implements StacAspectRatio {
  const _StacAspectRatio(
      {this.aspectRatio = 1, final Map<String, dynamic>? child})
      : _child = child;
  factory _StacAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$StacAspectRatioFromJson(json);

  @override
  @JsonKey()
  final double aspectRatio;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacAspectRatio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacAspectRatioCopyWith<_StacAspectRatio> get copyWith =>
      __$StacAspectRatioCopyWithImpl<_StacAspectRatio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacAspectRatioToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacAspectRatio &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, aspectRatio, const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacAspectRatio(aspectRatio: $aspectRatio, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacAspectRatioCopyWith<$Res>
    implements $StacAspectRatioCopyWith<$Res> {
  factory _$StacAspectRatioCopyWith(
          _StacAspectRatio value, $Res Function(_StacAspectRatio) _then) =
      __$StacAspectRatioCopyWithImpl;
  @override
  @useResult
  $Res call({double aspectRatio, Map<String, dynamic>? child});
}

/// @nodoc
class __$StacAspectRatioCopyWithImpl<$Res>
    implements _$StacAspectRatioCopyWith<$Res> {
  __$StacAspectRatioCopyWithImpl(this._self, this._then);

  final _StacAspectRatio _self;
  final $Res Function(_StacAspectRatio) _then;

  /// Create a copy of StacAspectRatio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? aspectRatio = null,
    Object? child = freezed,
  }) {
    return _then(_StacAspectRatio(
      aspectRatio: null == aspectRatio
          ? _self.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
