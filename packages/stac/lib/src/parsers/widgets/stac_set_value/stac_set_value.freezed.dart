// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_set_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSetValue {
  List<Map<String, dynamic>> get values;
  StacWidget? get child;

  /// Create a copy of StacSetValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSetValueCopyWith<StacSetValue> get copyWith =>
      _$StacSetValueCopyWithImpl<StacSetValue>(
          this as StacSetValue, _$identity);

  /// Serializes this StacSetValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSetValue &&
            const DeepCollectionEquality().equals(other.values, values) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(values),
      const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacSetValue(values: $values, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacSetValueCopyWith<$Res> {
  factory $StacSetValueCopyWith(
          StacSetValue value, $Res Function(StacSetValue) _then) =
      _$StacSetValueCopyWithImpl;
  @useResult
  $Res call({List<Map<String, dynamic>> values, StacWidget? child});
}

/// @nodoc
class _$StacSetValueCopyWithImpl<$Res> implements $StacSetValueCopyWith<$Res> {
  _$StacSetValueCopyWithImpl(this._self, this._then);

  final StacSetValue _self;
  final $Res Function(StacSetValue) _then;

  /// Create a copy of StacSetValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      values: null == values
          ? _self.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as StacWidget?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacSetValue implements StacSetValue {
  const _StacSetValue(
      {final List<Map<String, dynamic>> values = const [],
      final StacWidget? child})
      : _values = values,
        _child = child;
  factory _StacSetValue.fromJson(Map<String, dynamic> json) =>
      _$StacSetValueFromJson(json);

  final List<Map<String, dynamic>> _values;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  final StacWidget? _child;
  @override
  StacWidget? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacSetValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSetValueCopyWith<_StacSetValue> get copyWith =>
      __$StacSetValueCopyWithImpl<_StacSetValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSetValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSetValue &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_values),
      const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacSetValue(values: $values, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacSetValueCopyWith<$Res>
    implements $StacSetValueCopyWith<$Res> {
  factory _$StacSetValueCopyWith(
          _StacSetValue value, $Res Function(_StacSetValue) _then) =
      __$StacSetValueCopyWithImpl;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> values, StacWidget? child});
}

/// @nodoc
class __$StacSetValueCopyWithImpl<$Res>
    implements _$StacSetValueCopyWith<$Res> {
  __$StacSetValueCopyWithImpl(this._self, this._then);

  final _StacSetValue _self;
  final $Res Function(_StacSetValue) _then;

  /// Create a copy of StacSetValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? values = null,
    Object? child = freezed,
  }) {
    return _then(_StacSetValue(
      values: null == values
          ? _self._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as StacWidget?,
    ));
  }
}

// dart format on
