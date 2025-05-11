// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_set_value_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSetValueAction {
  List<Map<String, dynamic>> get values;
  StacAction? get action;

  /// Create a copy of StacSetValueAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSetValueActionCopyWith<StacSetValueAction> get copyWith =>
      _$StacSetValueActionCopyWithImpl<StacSetValueAction>(
          this as StacSetValueAction, _$identity);

  /// Serializes this StacSetValueAction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSetValueAction &&
            const DeepCollectionEquality().equals(other.values, values) &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(values),
      const DeepCollectionEquality().hash(action));

  @override
  String toString() {
    return 'StacSetValueAction(values: $values, action: $action)';
  }
}

/// @nodoc
abstract mixin class $StacSetValueActionCopyWith<$Res> {
  factory $StacSetValueActionCopyWith(
          StacSetValueAction value, $Res Function(StacSetValueAction) _then) =
      _$StacSetValueActionCopyWithImpl;
  @useResult
  $Res call({List<Map<String, dynamic>> values, StacAction? action});
}

/// @nodoc
class _$StacSetValueActionCopyWithImpl<$Res>
    implements $StacSetValueActionCopyWith<$Res> {
  _$StacSetValueActionCopyWithImpl(this._self, this._then);

  final StacSetValueAction _self;
  final $Res Function(StacSetValueAction) _then;

  /// Create a copy of StacSetValueAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? action = freezed,
  }) {
    return _then(_self.copyWith(
      values: null == values
          ? _self.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as StacAction?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacSetValueAction implements StacSetValueAction {
  const _StacSetValueAction(
      {final List<Map<String, dynamic>> values = const [],
      final StacAction? action})
      : _values = values,
        _action = action;
  factory _StacSetValueAction.fromJson(Map<String, dynamic> json) =>
      _$StacSetValueActionFromJson(json);

  final List<Map<String, dynamic>> _values;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  final StacAction? _action;
  @override
  StacAction? get action {
    final value = _action;
    if (value == null) return null;
    if (_action is EqualUnmodifiableMapView) return _action;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacSetValueAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSetValueActionCopyWith<_StacSetValueAction> get copyWith =>
      __$StacSetValueActionCopyWithImpl<_StacSetValueAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSetValueActionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSetValueAction &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            const DeepCollectionEquality().equals(other._action, _action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_values),
      const DeepCollectionEquality().hash(_action));

  @override
  String toString() {
    return 'StacSetValueAction(values: $values, action: $action)';
  }
}

/// @nodoc
abstract mixin class _$StacSetValueActionCopyWith<$Res>
    implements $StacSetValueActionCopyWith<$Res> {
  factory _$StacSetValueActionCopyWith(
          _StacSetValueAction value, $Res Function(_StacSetValueAction) _then) =
      __$StacSetValueActionCopyWithImpl;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> values, StacAction? action});
}

/// @nodoc
class __$StacSetValueActionCopyWithImpl<$Res>
    implements _$StacSetValueActionCopyWith<$Res> {
  __$StacSetValueActionCopyWithImpl(this._self, this._then);

  final _StacSetValueAction _self;
  final $Res Function(_StacSetValueAction) _then;

  /// Create a copy of StacSetValueAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? values = null,
    Object? action = freezed,
  }) {
    return _then(_StacSetValueAction(
      values: null == values
          ? _self._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      action: freezed == action
          ? _self._action
          : action // ignore: cast_nullable_to_non_nullable
              as StacAction?,
    ));
  }
}

// dart format on
