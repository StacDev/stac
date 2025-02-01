// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_input_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacInputBorder _$StacInputBorderFromJson(Map<String, dynamic> json) {
  return _StacInputBorder.fromJson(json);
}

/// @nodoc
mixin _$StacInputBorder {
  StacInputBorderType get type => throw _privateConstructorUsedError;
  StacBorderRadius? get borderRadius => throw _privateConstructorUsedError;
  double get gapPadding => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  StacGradient? get gradient => throw _privateConstructorUsedError;

  /// Serializes this StacInputBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacInputBorderCopyWith<StacInputBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacInputBorderCopyWith<$Res> {
  factory $StacInputBorderCopyWith(
          StacInputBorder value, $Res Function(StacInputBorder) then) =
      _$StacInputBorderCopyWithImpl<$Res, StacInputBorder>;
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
class _$StacInputBorderCopyWithImpl<$Res, $Val extends StacInputBorder>
    implements $StacInputBorderCopyWith<$Res> {
  _$StacInputBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacInputBorderType,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
      gapPadding: null == gapPadding
          ? _value.gapPadding
          : gapPadding // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      gradient: freezed == gradient
          ? _value.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as StacGradient?,
    ) as $Val);
  }

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderRadiusCopyWith<$Res>? get borderRadius {
    if (_value.borderRadius == null) {
      return null;
    }

    return $StacBorderRadiusCopyWith<$Res>(_value.borderRadius!, (value) {
      return _then(_value.copyWith(borderRadius: value) as $Val);
    });
  }

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacGradientCopyWith<$Res>? get gradient {
    if (_value.gradient == null) {
      return null;
    }

    return $StacGradientCopyWith<$Res>(_value.gradient!, (value) {
      return _then(_value.copyWith(gradient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacInputBorderImplCopyWith<$Res>
    implements $StacInputBorderCopyWith<$Res> {
  factory _$$StacInputBorderImplCopyWith(_$StacInputBorderImpl value,
          $Res Function(_$StacInputBorderImpl) then) =
      __$$StacInputBorderImplCopyWithImpl<$Res>;
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
class __$$StacInputBorderImplCopyWithImpl<$Res>
    extends _$StacInputBorderCopyWithImpl<$Res, _$StacInputBorderImpl>
    implements _$$StacInputBorderImplCopyWith<$Res> {
  __$$StacInputBorderImplCopyWithImpl(
      _$StacInputBorderImpl _value, $Res Function(_$StacInputBorderImpl) _then)
      : super(_value, _then);

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
    return _then(_$StacInputBorderImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StacInputBorderType,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
      gapPadding: null == gapPadding
          ? _value.gapPadding
          : gapPadding // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      gradient: freezed == gradient
          ? _value.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as StacGradient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacInputBorderImpl implements _StacInputBorder {
  const _$StacInputBorderImpl(
      {this.type = StacInputBorderType.underlineInputBorder,
      this.borderRadius,
      this.gapPadding = 4.0,
      this.width = 0.0,
      this.color,
      this.gradient});

  factory _$StacInputBorderImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacInputBorderImplFromJson(json);

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

  @override
  String toString() {
    return 'StacInputBorder(type: $type, borderRadius: $borderRadius, gapPadding: $gapPadding, width: $width, color: $color, gradient: $gradient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacInputBorderImpl &&
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

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacInputBorderImplCopyWith<_$StacInputBorderImpl> get copyWith =>
      __$$StacInputBorderImplCopyWithImpl<_$StacInputBorderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacInputBorderImplToJson(
      this,
    );
  }
}

abstract class _StacInputBorder implements StacInputBorder {
  const factory _StacInputBorder(
      {final StacInputBorderType type,
      final StacBorderRadius? borderRadius,
      final double gapPadding,
      final double width,
      final String? color,
      final StacGradient? gradient}) = _$StacInputBorderImpl;

  factory _StacInputBorder.fromJson(Map<String, dynamic> json) =
      _$StacInputBorderImpl.fromJson;

  @override
  StacInputBorderType get type;
  @override
  StacBorderRadius? get borderRadius;
  @override
  double get gapPadding;
  @override
  double get width;
  @override
  String? get color;
  @override
  StacGradient? get gradient;

  /// Create a copy of StacInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacInputBorderImplCopyWith<_$StacInputBorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
