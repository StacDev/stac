// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_spacer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSpacer {
  int get flex;

  /// Create a copy of StacSpacer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSpacerCopyWith<StacSpacer> get copyWith =>
      _$StacSpacerCopyWithImpl<StacSpacer>(this as StacSpacer, _$identity);

  /// Serializes this StacSpacer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSpacer &&
            (identical(other.flex, flex) || other.flex == flex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flex);

  @override
  String toString() {
    return 'StacSpacer(flex: $flex)';
  }
}

/// @nodoc
abstract mixin class $StacSpacerCopyWith<$Res> {
  factory $StacSpacerCopyWith(
          StacSpacer value, $Res Function(StacSpacer) _then) =
      _$StacSpacerCopyWithImpl;
  @useResult
  $Res call({int flex});
}

/// @nodoc
class _$StacSpacerCopyWithImpl<$Res> implements $StacSpacerCopyWith<$Res> {
  _$StacSpacerCopyWithImpl(this._self, this._then);

  final StacSpacer _self;
  final $Res Function(StacSpacer) _then;

  /// Create a copy of StacSpacer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flex = null,
  }) {
    return _then(_self.copyWith(
      flex: null == flex
          ? _self.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacSpacer implements StacSpacer {
  const _StacSpacer({this.flex = 1});
  factory _StacSpacer.fromJson(Map<String, dynamic> json) =>
      _$StacSpacerFromJson(json);

  @override
  @JsonKey()
  final int flex;

  /// Create a copy of StacSpacer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSpacerCopyWith<_StacSpacer> get copyWith =>
      __$StacSpacerCopyWithImpl<_StacSpacer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSpacerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSpacer &&
            (identical(other.flex, flex) || other.flex == flex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flex);

  @override
  String toString() {
    return 'StacSpacer(flex: $flex)';
  }
}

/// @nodoc
abstract mixin class _$StacSpacerCopyWith<$Res>
    implements $StacSpacerCopyWith<$Res> {
  factory _$StacSpacerCopyWith(
          _StacSpacer value, $Res Function(_StacSpacer) _then) =
      __$StacSpacerCopyWithImpl;
  @override
  @useResult
  $Res call({int flex});
}

/// @nodoc
class __$StacSpacerCopyWithImpl<$Res> implements _$StacSpacerCopyWith<$Res> {
  __$StacSpacerCopyWithImpl(this._self, this._then);

  final _StacSpacer _self;
  final $Res Function(_StacSpacer) _then;

  /// Create a copy of StacSpacer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? flex = null,
  }) {
    return _then(_StacSpacer(
      flex: null == flex
          ? _self.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
