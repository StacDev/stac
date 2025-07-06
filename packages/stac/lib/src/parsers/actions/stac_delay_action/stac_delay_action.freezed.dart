// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_delay_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDelayAction {
  int get milliseconds;

  /// Create a copy of StacDelayAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDelayActionCopyWith<StacDelayAction> get copyWith =>
      _$StacDelayActionCopyWithImpl<StacDelayAction>(
          this as StacDelayAction, _$identity);

  /// Serializes this StacDelayAction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDelayAction &&
            (identical(other.milliseconds, milliseconds) ||
                other.milliseconds == milliseconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, milliseconds);

  @override
  String toString() {
    return 'StacDelayAction(milliseconds: $milliseconds)';
  }
}

/// @nodoc
abstract mixin class $StacDelayActionCopyWith<$Res> {
  factory $StacDelayActionCopyWith(
          StacDelayAction value, $Res Function(StacDelayAction) _then) =
      _$StacDelayActionCopyWithImpl;
  @useResult
  $Res call({int milliseconds});
}

/// @nodoc
class _$StacDelayActionCopyWithImpl<$Res>
    implements $StacDelayActionCopyWith<$Res> {
  _$StacDelayActionCopyWithImpl(this._self, this._then);

  final StacDelayAction _self;
  final $Res Function(StacDelayAction) _then;

  /// Create a copy of StacDelayAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? milliseconds = null,
  }) {
    return _then(_self.copyWith(
      milliseconds: null == milliseconds
          ? _self.milliseconds
          : milliseconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacDelayAction implements StacDelayAction {
  const _StacDelayAction({this.milliseconds = 1000});
  factory _StacDelayAction.fromJson(Map<String, dynamic> json) =>
      _$StacDelayActionFromJson(json);

  @override
  @JsonKey()
  final int milliseconds;

  /// Create a copy of StacDelayAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDelayActionCopyWith<_StacDelayAction> get copyWith =>
      __$StacDelayActionCopyWithImpl<_StacDelayAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDelayActionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDelayAction &&
            (identical(other.milliseconds, milliseconds) ||
                other.milliseconds == milliseconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, milliseconds);

  @override
  String toString() {
    return 'StacDelayAction(milliseconds: $milliseconds)';
  }
}

/// @nodoc
abstract mixin class _$StacDelayActionCopyWith<$Res>
    implements $StacDelayActionCopyWith<$Res> {
  factory _$StacDelayActionCopyWith(
          _StacDelayAction value, $Res Function(_StacDelayAction) _then) =
      __$StacDelayActionCopyWithImpl;
  @override
  @useResult
  $Res call({int milliseconds});
}

/// @nodoc
class __$StacDelayActionCopyWithImpl<$Res>
    implements _$StacDelayActionCopyWith<$Res> {
  __$StacDelayActionCopyWithImpl(this._self, this._then);

  final _StacDelayAction _self;
  final $Res Function(_StacDelayAction) _then;

  /// Create a copy of StacDelayAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? milliseconds = null,
  }) {
    return _then(_StacDelayAction(
      milliseconds: null == milliseconds
          ? _self.milliseconds
          : milliseconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
