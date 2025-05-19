// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_circle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacCircleBorder {
  StacBorderSide get side;
  StacDouble get eccentricity;

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacCircleBorderCopyWith<StacCircleBorder> get copyWith =>
      _$StacCircleBorderCopyWithImpl<StacCircleBorder>(
          this as StacCircleBorder, _$identity);

  /// Serializes this StacCircleBorder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacCircleBorder &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.eccentricity, eccentricity) ||
                other.eccentricity == eccentricity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, eccentricity);

  @override
  String toString() {
    return 'StacCircleBorder(side: $side, eccentricity: $eccentricity)';
  }
}

/// @nodoc
abstract mixin class $StacCircleBorderCopyWith<$Res> {
  factory $StacCircleBorderCopyWith(
          StacCircleBorder value, $Res Function(StacCircleBorder) _then) =
      _$StacCircleBorderCopyWithImpl;
  @useResult
  $Res call({StacBorderSide side, StacDouble eccentricity});

  $StacBorderSideCopyWith<$Res> get side;
}

/// @nodoc
class _$StacCircleBorderCopyWithImpl<$Res>
    implements $StacCircleBorderCopyWith<$Res> {
  _$StacCircleBorderCopyWithImpl(this._self, this._then);

  final StacCircleBorder _self;
  final $Res Function(StacCircleBorder) _then;

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? eccentricity = null,
  }) {
    return _then(_self.copyWith(
      side: null == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide,
      eccentricity: null == eccentricity
          ? _self.eccentricity
          : eccentricity // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res> get side {
    return $StacBorderSideCopyWith<$Res>(_self.side, (value) {
      return _then(_self.copyWith(side: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacCircleBorder implements StacCircleBorder {
  const _StacCircleBorder(
      {this.side = StacBorderSide.none, this.eccentricity = StacDouble.zero});
  factory _StacCircleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacCircleBorderFromJson(json);

  @override
  @JsonKey()
  final StacBorderSide side;
  @override
  @JsonKey()
  final StacDouble eccentricity;

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacCircleBorderCopyWith<_StacCircleBorder> get copyWith =>
      __$StacCircleBorderCopyWithImpl<_StacCircleBorder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacCircleBorderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacCircleBorder &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.eccentricity, eccentricity) ||
                other.eccentricity == eccentricity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, eccentricity);

  @override
  String toString() {
    return 'StacCircleBorder(side: $side, eccentricity: $eccentricity)';
  }
}

/// @nodoc
abstract mixin class _$StacCircleBorderCopyWith<$Res>
    implements $StacCircleBorderCopyWith<$Res> {
  factory _$StacCircleBorderCopyWith(
          _StacCircleBorder value, $Res Function(_StacCircleBorder) _then) =
      __$StacCircleBorderCopyWithImpl;
  @override
  @useResult
  $Res call({StacBorderSide side, StacDouble eccentricity});

  @override
  $StacBorderSideCopyWith<$Res> get side;
}

/// @nodoc
class __$StacCircleBorderCopyWithImpl<$Res>
    implements _$StacCircleBorderCopyWith<$Res> {
  __$StacCircleBorderCopyWithImpl(this._self, this._then);

  final _StacCircleBorder _self;
  final $Res Function(_StacCircleBorder) _then;

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? side = null,
    Object? eccentricity = null,
  }) {
    return _then(_StacCircleBorder(
      side: null == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide,
      eccentricity: null == eccentricity
          ? _self.eccentricity
          : eccentricity // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res> get side {
    return $StacBorderSideCopyWith<$Res>(_self.side, (value) {
      return _then(_self.copyWith(side: value));
    });
  }
}

// dart format on
