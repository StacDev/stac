// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_get_form_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacGetFormValue {
  String get id;

  /// Create a copy of StacGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacGetFormValueCopyWith<StacGetFormValue> get copyWith =>
      _$StacGetFormValueCopyWithImpl<StacGetFormValue>(
          this as StacGetFormValue, _$identity);

  /// Serializes this StacGetFormValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacGetFormValue &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'StacGetFormValue(id: $id)';
  }
}

/// @nodoc
abstract mixin class $StacGetFormValueCopyWith<$Res> {
  factory $StacGetFormValueCopyWith(
          StacGetFormValue value, $Res Function(StacGetFormValue) _then) =
      _$StacGetFormValueCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$StacGetFormValueCopyWithImpl<$Res>
    implements $StacGetFormValueCopyWith<$Res> {
  _$StacGetFormValueCopyWithImpl(this._self, this._then);

  final StacGetFormValue _self;
  final $Res Function(StacGetFormValue) _then;

  /// Create a copy of StacGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacGetFormValue implements StacGetFormValue {
  const _StacGetFormValue({required this.id});
  factory _StacGetFormValue.fromJson(Map<String, dynamic> json) =>
      _$StacGetFormValueFromJson(json);

  @override
  final String id;

  /// Create a copy of StacGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacGetFormValueCopyWith<_StacGetFormValue> get copyWith =>
      __$StacGetFormValueCopyWithImpl<_StacGetFormValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacGetFormValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacGetFormValue &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'StacGetFormValue(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$StacGetFormValueCopyWith<$Res>
    implements $StacGetFormValueCopyWith<$Res> {
  factory _$StacGetFormValueCopyWith(
          _StacGetFormValue value, $Res Function(_StacGetFormValue) _then) =
      __$StacGetFormValueCopyWithImpl;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$StacGetFormValueCopyWithImpl<$Res>
    implements _$StacGetFormValueCopyWith<$Res> {
  __$StacGetFormValueCopyWithImpl(this._self, this._then);

  final _StacGetFormValue _self;
  final $Res Function(_StacGetFormValue) _then;

  /// Create a copy of StacGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_StacGetFormValue(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
