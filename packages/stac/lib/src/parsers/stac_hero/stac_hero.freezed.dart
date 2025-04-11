// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_hero.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacHero {
  Object get tag;
  Map<String, dynamic> get child;
  StacRectTween? get createRectTween;
  Map<String, dynamic>? get flightShuttleBuilder;
  Map<String, dynamic>? get placeholderBuilder;
  bool get transitionOnUserGestures;

  /// Create a copy of StacHero
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacHeroCopyWith<StacHero> get copyWith =>
      _$StacHeroCopyWithImpl<StacHero>(this as StacHero, _$identity);

  /// Serializes this StacHero to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacHero &&
            const DeepCollectionEquality().equals(other.tag, tag) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            (identical(other.createRectTween, createRectTween) ||
                other.createRectTween == createRectTween) &&
            const DeepCollectionEquality()
                .equals(other.flightShuttleBuilder, flightShuttleBuilder) &&
            const DeepCollectionEquality()
                .equals(other.placeholderBuilder, placeholderBuilder) &&
            (identical(
                    other.transitionOnUserGestures, transitionOnUserGestures) ||
                other.transitionOnUserGestures == transitionOnUserGestures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tag),
      const DeepCollectionEquality().hash(child),
      createRectTween,
      const DeepCollectionEquality().hash(flightShuttleBuilder),
      const DeepCollectionEquality().hash(placeholderBuilder),
      transitionOnUserGestures);

  @override
  String toString() {
    return 'StacHero(tag: $tag, child: $child, createRectTween: $createRectTween, flightShuttleBuilder: $flightShuttleBuilder, placeholderBuilder: $placeholderBuilder, transitionOnUserGestures: $transitionOnUserGestures)';
  }
}

/// @nodoc
abstract mixin class $StacHeroCopyWith<$Res> {
  factory $StacHeroCopyWith(StacHero value, $Res Function(StacHero) _then) =
      _$StacHeroCopyWithImpl;
  @useResult
  $Res call(
      {Object tag,
      Map<String, dynamic> child,
      StacRectTween? createRectTween,
      Map<String, dynamic>? flightShuttleBuilder,
      Map<String, dynamic>? placeholderBuilder,
      bool transitionOnUserGestures});

  $StacRectTweenCopyWith<$Res>? get createRectTween;
}

/// @nodoc
class _$StacHeroCopyWithImpl<$Res> implements $StacHeroCopyWith<$Res> {
  _$StacHeroCopyWithImpl(this._self, this._then);

  final StacHero _self;
  final $Res Function(StacHero) _then;

  /// Create a copy of StacHero
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? child = null,
    Object? createRectTween = freezed,
    Object? flightShuttleBuilder = freezed,
    Object? placeholderBuilder = freezed,
    Object? transitionOnUserGestures = null,
  }) {
    return _then(_self.copyWith(
      tag: null == tag ? _self.tag : tag,
      child: null == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createRectTween: freezed == createRectTween
          ? _self.createRectTween
          : createRectTween // ignore: cast_nullable_to_non_nullable
              as StacRectTween?,
      flightShuttleBuilder: freezed == flightShuttleBuilder
          ? _self.flightShuttleBuilder
          : flightShuttleBuilder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      placeholderBuilder: freezed == placeholderBuilder
          ? _self.placeholderBuilder
          : placeholderBuilder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      transitionOnUserGestures: null == transitionOnUserGestures
          ? _self.transitionOnUserGestures
          : transitionOnUserGestures // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacHero
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRectTweenCopyWith<$Res>? get createRectTween {
    if (_self.createRectTween == null) {
      return null;
    }

    return $StacRectTweenCopyWith<$Res>(_self.createRectTween!, (value) {
      return _then(_self.copyWith(createRectTween: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacHero implements StacHero {
  const _StacHero(
      {required this.tag,
      required final Map<String, dynamic> child,
      this.createRectTween,
      final Map<String, dynamic>? flightShuttleBuilder,
      final Map<String, dynamic>? placeholderBuilder,
      this.transitionOnUserGestures = false})
      : _child = child,
        _flightShuttleBuilder = flightShuttleBuilder,
        _placeholderBuilder = placeholderBuilder;
  factory _StacHero.fromJson(Map<String, dynamic> json) =>
      _$StacHeroFromJson(json);

  @override
  final Object tag;
  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  @override
  final StacRectTween? createRectTween;
  final Map<String, dynamic>? _flightShuttleBuilder;
  @override
  Map<String, dynamic>? get flightShuttleBuilder {
    final value = _flightShuttleBuilder;
    if (value == null) return null;
    if (_flightShuttleBuilder is EqualUnmodifiableMapView)
      return _flightShuttleBuilder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _placeholderBuilder;
  @override
  Map<String, dynamic>? get placeholderBuilder {
    final value = _placeholderBuilder;
    if (value == null) return null;
    if (_placeholderBuilder is EqualUnmodifiableMapView)
      return _placeholderBuilder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool transitionOnUserGestures;

  /// Create a copy of StacHero
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacHeroCopyWith<_StacHero> get copyWith =>
      __$StacHeroCopyWithImpl<_StacHero>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacHeroToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacHero &&
            const DeepCollectionEquality().equals(other.tag, tag) &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.createRectTween, createRectTween) ||
                other.createRectTween == createRectTween) &&
            const DeepCollectionEquality()
                .equals(other._flightShuttleBuilder, _flightShuttleBuilder) &&
            const DeepCollectionEquality()
                .equals(other._placeholderBuilder, _placeholderBuilder) &&
            (identical(
                    other.transitionOnUserGestures, transitionOnUserGestures) ||
                other.transitionOnUserGestures == transitionOnUserGestures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tag),
      const DeepCollectionEquality().hash(_child),
      createRectTween,
      const DeepCollectionEquality().hash(_flightShuttleBuilder),
      const DeepCollectionEquality().hash(_placeholderBuilder),
      transitionOnUserGestures);

  @override
  String toString() {
    return 'StacHero(tag: $tag, child: $child, createRectTween: $createRectTween, flightShuttleBuilder: $flightShuttleBuilder, placeholderBuilder: $placeholderBuilder, transitionOnUserGestures: $transitionOnUserGestures)';
  }
}

/// @nodoc
abstract mixin class _$StacHeroCopyWith<$Res>
    implements $StacHeroCopyWith<$Res> {
  factory _$StacHeroCopyWith(_StacHero value, $Res Function(_StacHero) _then) =
      __$StacHeroCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Object tag,
      Map<String, dynamic> child,
      StacRectTween? createRectTween,
      Map<String, dynamic>? flightShuttleBuilder,
      Map<String, dynamic>? placeholderBuilder,
      bool transitionOnUserGestures});

  @override
  $StacRectTweenCopyWith<$Res>? get createRectTween;
}

/// @nodoc
class __$StacHeroCopyWithImpl<$Res> implements _$StacHeroCopyWith<$Res> {
  __$StacHeroCopyWithImpl(this._self, this._then);

  final _StacHero _self;
  final $Res Function(_StacHero) _then;

  /// Create a copy of StacHero
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tag = null,
    Object? child = null,
    Object? createRectTween = freezed,
    Object? flightShuttleBuilder = freezed,
    Object? placeholderBuilder = freezed,
    Object? transitionOnUserGestures = null,
  }) {
    return _then(_StacHero(
      tag: null == tag ? _self.tag : tag,
      child: null == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createRectTween: freezed == createRectTween
          ? _self.createRectTween
          : createRectTween // ignore: cast_nullable_to_non_nullable
              as StacRectTween?,
      flightShuttleBuilder: freezed == flightShuttleBuilder
          ? _self._flightShuttleBuilder
          : flightShuttleBuilder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      placeholderBuilder: freezed == placeholderBuilder
          ? _self._placeholderBuilder
          : placeholderBuilder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      transitionOnUserGestures: null == transitionOnUserGestures
          ? _self.transitionOnUserGestures
          : transitionOnUserGestures // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacHero
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRectTweenCopyWith<$Res>? get createRectTween {
    if (_self.createRectTween == null) {
      return null;
    }

    return $StacRectTweenCopyWith<$Res>(_self.createRectTween!, (value) {
      return _then(_self.copyWith(createRectTween: value));
    });
  }
}

// dart format on
