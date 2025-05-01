// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_radio_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacRadioGroup {
  String? get id;
  dynamic get groupValue;
  Map<String, dynamic>? get child;

  /// Create a copy of StacRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacRadioGroupCopyWith<StacRadioGroup> get copyWith =>
      _$StacRadioGroupCopyWithImpl<StacRadioGroup>(
          this as StacRadioGroup, _$identity);

  /// Serializes this StacRadioGroup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacRadioGroup &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.groupValue, groupValue) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(groupValue),
      const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacRadioGroup(id: $id, groupValue: $groupValue, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacRadioGroupCopyWith<$Res> {
  factory $StacRadioGroupCopyWith(
          StacRadioGroup value, $Res Function(StacRadioGroup) _then) =
      _$StacRadioGroupCopyWithImpl;
  @useResult
  $Res call({String? id, dynamic groupValue, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacRadioGroupCopyWithImpl<$Res>
    implements $StacRadioGroupCopyWith<$Res> {
  _$StacRadioGroupCopyWithImpl(this._self, this._then);

  final StacRadioGroup _self;
  final $Res Function(StacRadioGroup) _then;

  /// Create a copy of StacRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupValue = freezed,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupValue: freezed == groupValue
          ? _self.groupValue
          : groupValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacRadioGroup implements StacRadioGroup {
  const _StacRadioGroup(
      {this.id, this.groupValue, final Map<String, dynamic>? child})
      : _child = child;
  factory _StacRadioGroup.fromJson(Map<String, dynamic> json) =>
      _$StacRadioGroupFromJson(json);

  @override
  final String? id;
  @override
  final dynamic groupValue;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacRadioGroupCopyWith<_StacRadioGroup> get copyWith =>
      __$StacRadioGroupCopyWithImpl<_StacRadioGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacRadioGroupToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacRadioGroup &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.groupValue, groupValue) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(groupValue),
      const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacRadioGroup(id: $id, groupValue: $groupValue, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacRadioGroupCopyWith<$Res>
    implements $StacRadioGroupCopyWith<$Res> {
  factory _$StacRadioGroupCopyWith(
          _StacRadioGroup value, $Res Function(_StacRadioGroup) _then) =
      __$StacRadioGroupCopyWithImpl;
  @override
  @useResult
  $Res call({String? id, dynamic groupValue, Map<String, dynamic>? child});
}

/// @nodoc
class __$StacRadioGroupCopyWithImpl<$Res>
    implements _$StacRadioGroupCopyWith<$Res> {
  __$StacRadioGroupCopyWithImpl(this._self, this._then);

  final _StacRadioGroup _self;
  final $Res Function(_StacRadioGroup) _then;

  /// Create a copy of StacRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? groupValue = freezed,
    Object? child = freezed,
  }) {
    return _then(_StacRadioGroup(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupValue: freezed == groupValue
          ? _self.groupValue
          : groupValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
