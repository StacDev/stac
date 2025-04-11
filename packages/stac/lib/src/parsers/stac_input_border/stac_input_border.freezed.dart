// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_input_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacInputBorder {
  StacInputBorderType get type;
  StacBorderRadius? get borderRadius;
  double get gapPadding;
  double get width;
  String? get color;
  StacGradient? get gradient;

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacInputBorderCopyWith<StacInputBorder> get copyWith =>
      _$StacInputBorderCopyWithImpl<StacInputBorder>(
          this as StacInputBorder, _$identity);

  /// Serializes this StacInputBorder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacInputBorder &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.gapPadding, gapPadding) ||
                other.gapPadding == gapPadding) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.gradient, gradient) ||
                other.gradient == gradient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, borderRadius, gapPadding, width, color, gradient);

  @override
  String toString() {
    return 'StacInputBorder(type: $type, borderRadius: $borderRadius, gapPadding: $gapPadding, width: $width, color: $color, gradient: $gradient)';
  }
}

/// @nodoc
abstract mixin class $StacInputBorderCopyWith<$Res> {
  factory $StacInputBorderCopyWith(
          StacInputBorder value, $Res Function(StacInputBorder) _then) =
      _$StacInputBorderCopyWithImpl;
  @useResult
  $Res call(
      {StacInputBorderType type,
      StacBorderRadius? borderRadius,
      double gapPadding,
      double width,
      String? color,
      StacGradient? gradient});

  $StacBorderRadiusCopyWith<$Res>? get borderRadius;
  $StacGradientCopyWith<$Res>? get gradient;
}

/// @nodoc
class _$StacInputBorderCopyWithImpl<$Res>
    implements $StacInputBorderCopyWith<$Res> {
  _$StacInputBorderCopyWithImpl(this._self, this._then);

  final StacInputBorder _self;
  final $Res Function(StacInputBorder) _then;

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? borderRadius = freezed,
    Object? gapPadding = null,
    Object? width = null,
    Object? color = freezed,
    Object? gradient = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacInputBorderType,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
      gapPadding: null == gapPadding
          ? _self.gapPadding
          : gapPadding // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      gradient: freezed == gradient
          ? _self.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as StacGradient?,
    ));
  }

  /// Create a copy of StacInputBorder
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

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacGradientCopyWith<$Res>? get gradient {
    if (_self.gradient == null) {
      return null;
    }

    return $StacGradientCopyWith<$Res>(_self.gradient!, (value) {
      return _then(_self.copyWith(gradient: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacInputBorder implements StacInputBorder {
  const _StacInputBorder(
      {this.type = StacInputBorderType.underlineInputBorder,
      this.borderRadius,
      this.gapPadding = 4.0,
      this.width = 0.0,
      this.color,
      this.gradient});
  factory _StacInputBorder.fromJson(Map<String, dynamic> json) =>
      _$StacInputBorderFromJson(json);

  @override
  @JsonKey()
  final StacInputBorderType type;
  @override
  final StacBorderRadius? borderRadius;
  @override
  @JsonKey()
  final double gapPadding;
  @override
  @JsonKey()
  final double width;
  @override
  final String? color;
  @override
  final StacGradient? gradient;

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacInputBorderCopyWith<_StacInputBorder> get copyWith =>
      __$StacInputBorderCopyWithImpl<_StacInputBorder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacInputBorderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacInputBorder &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.gapPadding, gapPadding) ||
                other.gapPadding == gapPadding) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.gradient, gradient) ||
                other.gradient == gradient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, borderRadius, gapPadding, width, color, gradient);

  @override
  String toString() {
    return 'StacInputBorder(type: $type, borderRadius: $borderRadius, gapPadding: $gapPadding, width: $width, color: $color, gradient: $gradient)';
  }
}

/// @nodoc
abstract mixin class _$StacInputBorderCopyWith<$Res>
    implements $StacInputBorderCopyWith<$Res> {
  factory _$StacInputBorderCopyWith(
          _StacInputBorder value, $Res Function(_StacInputBorder) _then) =
      __$StacInputBorderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacInputBorderType type,
      StacBorderRadius? borderRadius,
      double gapPadding,
      double width,
      String? color,
      StacGradient? gradient});

  @override
  $StacBorderRadiusCopyWith<$Res>? get borderRadius;
  @override
  $StacGradientCopyWith<$Res>? get gradient;
}

/// @nodoc
class __$StacInputBorderCopyWithImpl<$Res>
    implements _$StacInputBorderCopyWith<$Res> {
  __$StacInputBorderCopyWithImpl(this._self, this._then);

  final _StacInputBorder _self;
  final $Res Function(_StacInputBorder) _then;

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? borderRadius = freezed,
    Object? gapPadding = null,
    Object? width = null,
    Object? color = freezed,
    Object? gradient = freezed,
  }) {
    return _then(_StacInputBorder(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacInputBorderType,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
      gapPadding: null == gapPadding
          ? _self.gapPadding
          : gapPadding // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      gradient: freezed == gradient
          ? _self.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as StacGradient?,
    ));
  }

  /// Create a copy of StacInputBorder
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

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacGradientCopyWith<$Res>? get gradient {
    if (_self.gradient == null) {
      return null;
    }

    return $StacGradientCopyWith<$Res>(_self.gradient!, (value) {
      return _then(_self.copyWith(gradient: value));
    });
  }
}

// dart format on
