// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_conditional.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacConditional {
  String get condition;
  StacWidget get ifTrue;
  StacWidget? get ifFalse;

  /// Create a copy of StacConditional
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacConditionalCopyWith<StacConditional> get copyWith =>
      _$StacConditionalCopyWithImpl<StacConditional>(
          this as StacConditional, _$identity);

  /// Serializes this StacConditional to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacConditional &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            const DeepCollectionEquality().equals(other.ifTrue, ifTrue) &&
            const DeepCollectionEquality().equals(other.ifFalse, ifFalse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      condition,
      const DeepCollectionEquality().hash(ifTrue),
      const DeepCollectionEquality().hash(ifFalse));

  @override
  String toString() {
    return 'StacConditional(condition: $condition, ifTrue: $ifTrue, ifFalse: $ifFalse)';
  }
}

/// @nodoc
abstract mixin class $StacConditionalCopyWith<$Res> {
  factory $StacConditionalCopyWith(
          StacConditional value, $Res Function(StacConditional) _then) =
      _$StacConditionalCopyWithImpl;
  @useResult
  $Res call({String condition, StacWidget ifTrue, StacWidget? ifFalse});
}

/// @nodoc
class _$StacConditionalCopyWithImpl<$Res>
    implements $StacConditionalCopyWith<$Res> {
  _$StacConditionalCopyWithImpl(this._self, this._then);

  final StacConditional _self;
  final $Res Function(StacConditional) _then;

  /// Create a copy of StacConditional
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
    Object? ifTrue = null,
    Object? ifFalse = freezed,
  }) {
    return _then(_self.copyWith(
      condition: null == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      ifTrue: null == ifTrue
          ? _self.ifTrue
          : ifTrue // ignore: cast_nullable_to_non_nullable
              as StacWidget,
      ifFalse: freezed == ifFalse
          ? _self.ifFalse
          : ifFalse // ignore: cast_nullable_to_non_nullable
              as StacWidget?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacConditional implements StacConditional {
  const _StacConditional(
      {required this.condition,
      required final StacWidget ifTrue,
      final StacWidget? ifFalse})
      : _ifTrue = ifTrue,
        _ifFalse = ifFalse;
  factory _StacConditional.fromJson(Map<String, dynamic> json) =>
      _$StacConditionalFromJson(json);

  @override
  final String condition;
  final StacWidget _ifTrue;
  @override
  StacWidget get ifTrue {
    if (_ifTrue is EqualUnmodifiableMapView) return _ifTrue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ifTrue);
  }

  final StacWidget? _ifFalse;
  @override
  StacWidget? get ifFalse {
    final value = _ifFalse;
    if (value == null) return null;
    if (_ifFalse is EqualUnmodifiableMapView) return _ifFalse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacConditional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacConditionalCopyWith<_StacConditional> get copyWith =>
      __$StacConditionalCopyWithImpl<_StacConditional>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacConditionalToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacConditional &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            const DeepCollectionEquality().equals(other._ifTrue, _ifTrue) &&
            const DeepCollectionEquality().equals(other._ifFalse, _ifFalse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      condition,
      const DeepCollectionEquality().hash(_ifTrue),
      const DeepCollectionEquality().hash(_ifFalse));

  @override
  String toString() {
    return 'StacConditional(condition: $condition, ifTrue: $ifTrue, ifFalse: $ifFalse)';
  }
}

/// @nodoc
abstract mixin class _$StacConditionalCopyWith<$Res>
    implements $StacConditionalCopyWith<$Res> {
  factory _$StacConditionalCopyWith(
          _StacConditional value, $Res Function(_StacConditional) _then) =
      __$StacConditionalCopyWithImpl;
  @override
  @useResult
  $Res call({String condition, StacWidget ifTrue, StacWidget? ifFalse});
}

/// @nodoc
class __$StacConditionalCopyWithImpl<$Res>
    implements _$StacConditionalCopyWith<$Res> {
  __$StacConditionalCopyWithImpl(this._self, this._then);

  final _StacConditional _self;
  final $Res Function(_StacConditional) _then;

  /// Create a copy of StacConditional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? condition = null,
    Object? ifTrue = null,
    Object? ifFalse = freezed,
  }) {
    return _then(_StacConditional(
      condition: null == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      ifTrue: null == ifTrue
          ? _self._ifTrue
          : ifTrue // ignore: cast_nullable_to_non_nullable
              as StacWidget,
      ifFalse: freezed == ifFalse
          ? _self._ifFalse
          : ifFalse // ignore: cast_nullable_to_non_nullable
              as StacWidget?,
    ));
  }
}

// dart format on
