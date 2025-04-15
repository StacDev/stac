// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_rounded_rectangle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacRoundedRectangleBorder {
  StacBorderSide? get side;
  StacBorderRadius? get borderRadius;

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacRoundedRectangleBorderCopyWith<StacRoundedRectangleBorder>
      get copyWith =>
          _$StacRoundedRectangleBorderCopyWithImpl<StacRoundedRectangleBorder>(
              this as StacRoundedRectangleBorder, _$identity);

  /// Serializes this StacRoundedRectangleBorder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacRoundedRectangleBorder &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  @override
  String toString() {
    return 'StacRoundedRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }
}

/// @nodoc
abstract mixin class $StacRoundedRectangleBorderCopyWith<$Res> {
  factory $StacRoundedRectangleBorderCopyWith(StacRoundedRectangleBorder value,
          $Res Function(StacRoundedRectangleBorder) _then) =
      _$StacRoundedRectangleBorderCopyWithImpl;
  @useResult
  $Res call({StacBorderSide? side, StacBorderRadius? borderRadius});

  $StacBorderSideCopyWith<$Res>? get side;
  $StacBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class _$StacRoundedRectangleBorderCopyWithImpl<$Res>
    implements $StacRoundedRectangleBorderCopyWith<$Res> {
  _$StacRoundedRectangleBorderCopyWithImpl(this._self, this._then);

  final StacRoundedRectangleBorder _self;
  final $Res Function(StacRoundedRectangleBorder) _then;

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_self.copyWith(
      side: freezed == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
    ));
  }

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res>? get side {
    if (_self.side == null) {
      return null;
    }

    return $StacBorderSideCopyWith<$Res>(_self.side!, (value) {
      return _then(_self.copyWith(side: value));
    });
  }

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderRadiusCopyWith<$Res>? get borderRadius {
    if (_self.borderRadius == null) {
      return null;
    }

    return $StacBorderRadiusCopyWith<$Res>(_self.borderRadius!, (value) {
      return _then(_self.copyWith(borderRadius: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacRoundedRectangleBorder implements StacRoundedRectangleBorder {
  const _StacRoundedRectangleBorder({this.side, this.borderRadius});
  factory _StacRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacRoundedRectangleBorderFromJson(json);

  @override
  final StacBorderSide? side;
  @override
  final StacBorderRadius? borderRadius;

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacRoundedRectangleBorderCopyWith<_StacRoundedRectangleBorder>
      get copyWith => __$StacRoundedRectangleBorderCopyWithImpl<
          _StacRoundedRectangleBorder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacRoundedRectangleBorderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacRoundedRectangleBorder &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  @override
  String toString() {
    return 'StacRoundedRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }
}

/// @nodoc
abstract mixin class _$StacRoundedRectangleBorderCopyWith<$Res>
    implements $StacRoundedRectangleBorderCopyWith<$Res> {
  factory _$StacRoundedRectangleBorderCopyWith(
          _StacRoundedRectangleBorder value,
          $Res Function(_StacRoundedRectangleBorder) _then) =
      __$StacRoundedRectangleBorderCopyWithImpl;
  @override
  @useResult
  $Res call({StacBorderSide? side, StacBorderRadius? borderRadius});

  @override
  $StacBorderSideCopyWith<$Res>? get side;
  @override
  $StacBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class __$StacRoundedRectangleBorderCopyWithImpl<$Res>
    implements _$StacRoundedRectangleBorderCopyWith<$Res> {
  __$StacRoundedRectangleBorderCopyWithImpl(this._self, this._then);

  final _StacRoundedRectangleBorder _self;
  final $Res Function(_StacRoundedRectangleBorder) _then;

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? side = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_StacRoundedRectangleBorder(
      side: freezed == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
    ));
  }

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res>? get side {
    if (_self.side == null) {
      return null;
    }

    return $StacBorderSideCopyWith<$Res>(_self.side!, (value) {
      return _then(_self.copyWith(side: value));
    });
  }

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderRadiusCopyWith<$Res>? get borderRadius {
    if (_self.borderRadius == null) {
      return null;
    }

    return $StacBorderRadiusCopyWith<$Res>(_self.borderRadius!, (value) {
      return _then(_self.copyWith(borderRadius: value));
    });
  }
}

// dart format on
