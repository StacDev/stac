// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_input_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiInputBorder _$MiraiInputBorderFromJson(Map<String, dynamic> json) {
  return _MiraiInputBorder.fromJson(json);
}

/// @nodoc
mixin _$MiraiInputBorder {
  MiraiInputBorderType get type => throw _privateConstructorUsedError;
  MiraiBorderRadius? get borderRadius => throw _privateConstructorUsedError;
  double get gapPadding => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  MiraiGradient? get gradient => throw _privateConstructorUsedError;

  /// Serializes this MiraiInputBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiInputBorderCopyWith<MiraiInputBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiInputBorderCopyWith<$Res> {
  factory $MiraiInputBorderCopyWith(
          MiraiInputBorder value, $Res Function(MiraiInputBorder) then) =
      _$MiraiInputBorderCopyWithImpl<$Res, MiraiInputBorder>;
  @useResult
  $Res call(
      {MiraiInputBorderType type,
      MiraiBorderRadius? borderRadius,
      double gapPadding,
      double width,
      String? color,
      MiraiGradient? gradient});

  $MiraiBorderRadiusCopyWith<$Res>? get borderRadius;
  $MiraiGradientCopyWith<$Res>? get gradient;
}

/// @nodoc
class _$MiraiInputBorderCopyWithImpl<$Res, $Val extends MiraiInputBorder>
    implements $MiraiInputBorderCopyWith<$Res> {
  _$MiraiInputBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiInputBorder
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
              as MiraiInputBorderType,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as MiraiBorderRadius?,
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
              as MiraiGradient?,
    ) as $Val);
  }

  /// Create a copy of MiraiInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderRadiusCopyWith<$Res>? get borderRadius {
    if (_value.borderRadius == null) {
      return null;
    }

    return $MiraiBorderRadiusCopyWith<$Res>(_value.borderRadius!, (value) {
      return _then(_value.copyWith(borderRadius: value) as $Val);
    });
  }

  /// Create a copy of MiraiInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiGradientCopyWith<$Res>? get gradient {
    if (_value.gradient == null) {
      return null;
    }

    return $MiraiGradientCopyWith<$Res>(_value.gradient!, (value) {
      return _then(_value.copyWith(gradient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiInputBorderImplCopyWith<$Res>
    implements $MiraiInputBorderCopyWith<$Res> {
  factory _$$MiraiInputBorderImplCopyWith(_$MiraiInputBorderImpl value,
          $Res Function(_$MiraiInputBorderImpl) then) =
      __$$MiraiInputBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MiraiInputBorderType type,
      MiraiBorderRadius? borderRadius,
      double gapPadding,
      double width,
      String? color,
      MiraiGradient? gradient});

  @override
  $MiraiBorderRadiusCopyWith<$Res>? get borderRadius;
  @override
  $MiraiGradientCopyWith<$Res>? get gradient;
}

/// @nodoc
class __$$MiraiInputBorderImplCopyWithImpl<$Res>
    extends _$MiraiInputBorderCopyWithImpl<$Res, _$MiraiInputBorderImpl>
    implements _$$MiraiInputBorderImplCopyWith<$Res> {
  __$$MiraiInputBorderImplCopyWithImpl(_$MiraiInputBorderImpl _value,
      $Res Function(_$MiraiInputBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiInputBorder
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
    return _then(_$MiraiInputBorderImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MiraiInputBorderType,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as MiraiBorderRadius?,
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
              as MiraiGradient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiInputBorderImpl implements _MiraiInputBorder {
  const _$MiraiInputBorderImpl(
      {this.type = MiraiInputBorderType.underlineInputBorder,
      this.borderRadius,
      this.gapPadding = 4.0,
      this.width = 0.0,
      this.color,
      this.gradient});

  factory _$MiraiInputBorderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiInputBorderImplFromJson(json);

  @override
  @JsonKey()
  final MiraiInputBorderType type;
  @override
  final MiraiBorderRadius? borderRadius;
  @override
  @JsonKey()
  final double gapPadding;
  @override
  @JsonKey()
  final double width;
  @override
  final String? color;
  @override
  final MiraiGradient? gradient;

  @override
  String toString() {
    return 'MiraiInputBorder(type: $type, borderRadius: $borderRadius, gapPadding: $gapPadding, width: $width, color: $color, gradient: $gradient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiInputBorderImpl &&
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

  /// Create a copy of MiraiInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiInputBorderImplCopyWith<_$MiraiInputBorderImpl> get copyWith =>
      __$$MiraiInputBorderImplCopyWithImpl<_$MiraiInputBorderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiInputBorderImplToJson(
      this,
    );
  }
}

abstract class _MiraiInputBorder implements MiraiInputBorder {
  const factory _MiraiInputBorder(
      {final MiraiInputBorderType type,
      final MiraiBorderRadius? borderRadius,
      final double gapPadding,
      final double width,
      final String? color,
      final MiraiGradient? gradient}) = _$MiraiInputBorderImpl;

  factory _MiraiInputBorder.fromJson(Map<String, dynamic> json) =
      _$MiraiInputBorderImpl.fromJson;

  @override
  MiraiInputBorderType get type;
  @override
  MiraiBorderRadius? get borderRadius;
  @override
  double get gapPadding;
  @override
  double get width;
  @override
  String? get color;
  @override
  MiraiGradient? get gradient;

  /// Create a copy of MiraiInputBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiInputBorderImplCopyWith<_$MiraiInputBorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
