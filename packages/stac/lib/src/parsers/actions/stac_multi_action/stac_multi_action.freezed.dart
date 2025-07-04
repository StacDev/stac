// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_multi_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacMultiAction {
  List<Map<String, dynamic>?>? get actions;
  bool get sync;

  /// Create a copy of StacMultiAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacMultiActionCopyWith<StacMultiAction> get copyWith =>
      _$StacMultiActionCopyWithImpl<StacMultiAction>(
          this as StacMultiAction, _$identity);

  /// Serializes this StacMultiAction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacMultiAction &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            (identical(other.sync, sync) || other.sync == sync));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(actions), sync);

  @override
  String toString() {
    return 'StacMultiAction(actions: $actions, sync: $sync)';
  }
}

/// @nodoc
abstract mixin class $StacMultiActionCopyWith<$Res> {
  factory $StacMultiActionCopyWith(
          StacMultiAction value, $Res Function(StacMultiAction) _then) =
      _$StacMultiActionCopyWithImpl;
  @useResult
  $Res call({List<Map<String, dynamic>?>? actions, bool sync});
}

/// @nodoc
class _$StacMultiActionCopyWithImpl<$Res>
    implements $StacMultiActionCopyWith<$Res> {
  _$StacMultiActionCopyWithImpl(this._self, this._then);

  final StacMultiAction _self;
  final $Res Function(StacMultiAction) _then;

  /// Create a copy of StacMultiAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actions = freezed,
    Object? sync = null,
  }) {
    return _then(_self.copyWith(
      actions: freezed == actions
          ? _self.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>?>?,
      sync: null == sync
          ? _self.sync
          : sync // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacMultiAction implements StacMultiAction {
  const _StacMultiAction(
      {required final List<Map<String, dynamic>?>? actions, this.sync = false})
      : _actions = actions;
  factory _StacMultiAction.fromJson(Map<String, dynamic> json) =>
      _$StacMultiActionFromJson(json);

  final List<Map<String, dynamic>?>? _actions;
  @override
  List<Map<String, dynamic>?>? get actions {
    final value = _actions;
    if (value == null) return null;
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool sync;

  /// Create a copy of StacMultiAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacMultiActionCopyWith<_StacMultiAction> get copyWith =>
      __$StacMultiActionCopyWithImpl<_StacMultiAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacMultiActionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacMultiAction &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            (identical(other.sync, sync) || other.sync == sync));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_actions), sync);

  @override
  String toString() {
    return 'StacMultiAction(actions: $actions, sync: $sync)';
  }
}

/// @nodoc
abstract mixin class _$StacMultiActionCopyWith<$Res>
    implements $StacMultiActionCopyWith<$Res> {
  factory _$StacMultiActionCopyWith(
          _StacMultiAction value, $Res Function(_StacMultiAction) _then) =
      __$StacMultiActionCopyWithImpl;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>?>? actions, bool sync});
}

/// @nodoc
class __$StacMultiActionCopyWithImpl<$Res>
    implements _$StacMultiActionCopyWith<$Res> {
  __$StacMultiActionCopyWithImpl(this._self, this._then);

  final _StacMultiAction _self;
  final $Res Function(_StacMultiAction) _then;

  /// Create a copy of StacMultiAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? actions = freezed,
    Object? sync = null,
  }) {
    return _then(_StacMultiAction(
      actions: freezed == actions
          ? _self._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>?>?,
      sync: null == sync
          ? _self.sync
          : sync // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
