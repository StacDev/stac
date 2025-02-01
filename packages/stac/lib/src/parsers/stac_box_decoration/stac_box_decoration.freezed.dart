// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_box_decoration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacBoxDecoration _$StacBoxDecorationFromJson(Map<String, dynamic> json) {
  return _StacBoxDecoration.fromJson(json);
}

/// @nodoc
mixin _$StacBoxDecoration {
  String? get color => throw _privateConstructorUsedError;
  BlendMode? get backgroundBlendMode => throw _privateConstructorUsedError;
  List<StacBoxShadow?>? get boxShadow => throw _privateConstructorUsedError;
  BoxShape get shape => throw _privateConstructorUsedError;
  StacBorder? get border => throw _privateConstructorUsedError;
  StacBorderRadius? get borderRadius => throw _privateConstructorUsedError;
  StacDecorationImage? get image => throw _privateConstructorUsedError;
  StacGradient? get gradient => throw _privateConstructorUsedError;

  /// Serializes this StacBoxDecoration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacBoxDecorationCopyWith<StacBoxDecoration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacBoxDecorationCopyWith<$Res> {
  factory $StacBoxDecorationCopyWith(
          StacBoxDecoration value, $Res Function(StacBoxDecoration) then) =
      _$StacBoxDecorationCopyWithImpl<$Res, StacBoxDecoration>;
  @useResult
  $Res call(
      {String? color,
      BlendMode? backgroundBlendMode,
      List<StacBoxShadow?>? boxShadow,
      BoxShape shape,
      StacBorder? border,
      StacBorderRadius? borderRadius,
      StacDecorationImage? image,
      StacGradient? gradient});

  $StacBorderCopyWith<$Res>? get border;
  $StacBorderRadiusCopyWith<$Res>? get borderRadius;
  $StacDecorationImageCopyWith<$Res>? get image;
  $StacGradientCopyWith<$Res>? get gradient;
}

/// @nodoc
class _$StacBoxDecorationCopyWithImpl<$Res, $Val extends StacBoxDecoration>
    implements $StacBoxDecorationCopyWith<$Res> {
  _$StacBoxDecorationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? backgroundBlendMode = freezed,
    Object? boxShadow = freezed,
    Object? shape = null,
    Object? border = freezed,
    Object? borderRadius = freezed,
    Object? image = freezed,
    Object? gradient = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundBlendMode: freezed == backgroundBlendMode
          ? _value.backgroundBlendMode
          : backgroundBlendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode?,
      boxShadow: freezed == boxShadow
          ? _value.boxShadow
          : boxShadow // ignore: cast_nullable_to_non_nullable
              as List<StacBoxShadow?>?,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape,
      border: freezed == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as StacDecorationImage?,
      gradient: freezed == gradient
          ? _value.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as StacGradient?,
    ) as $Val);
  }

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderCopyWith<$Res>? get border {
    if (_value.border == null) {
      return null;
    }

    return $StacBorderCopyWith<$Res>(_value.border!, (value) {
      return _then(_value.copyWith(border: value) as $Val);
    });
  }

  /// Create a copy of StacBoxDecoration
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

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDecorationImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $StacDecorationImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of StacBoxDecoration
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
abstract class _$$StacBoxDecorationImplCopyWith<$Res>
    implements $StacBoxDecorationCopyWith<$Res> {
  factory _$$StacBoxDecorationImplCopyWith(_$StacBoxDecorationImpl value,
          $Res Function(_$StacBoxDecorationImpl) then) =
      __$$StacBoxDecorationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      BlendMode? backgroundBlendMode,
      List<StacBoxShadow?>? boxShadow,
      BoxShape shape,
      StacBorder? border,
      StacBorderRadius? borderRadius,
      StacDecorationImage? image,
      StacGradient? gradient});

  @override
  $StacBorderCopyWith<$Res>? get border;
  @override
  $StacBorderRadiusCopyWith<$Res>? get borderRadius;
  @override
  $StacDecorationImageCopyWith<$Res>? get image;
  @override
  $StacGradientCopyWith<$Res>? get gradient;
}

/// @nodoc
class __$$StacBoxDecorationImplCopyWithImpl<$Res>
    extends _$StacBoxDecorationCopyWithImpl<$Res, _$StacBoxDecorationImpl>
    implements _$$StacBoxDecorationImplCopyWith<$Res> {
  __$$StacBoxDecorationImplCopyWithImpl(_$StacBoxDecorationImpl _value,
      $Res Function(_$StacBoxDecorationImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? backgroundBlendMode = freezed,
    Object? boxShadow = freezed,
    Object? shape = null,
    Object? border = freezed,
    Object? borderRadius = freezed,
    Object? image = freezed,
    Object? gradient = freezed,
  }) {
    return _then(_$StacBoxDecorationImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundBlendMode: freezed == backgroundBlendMode
          ? _value.backgroundBlendMode
          : backgroundBlendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode?,
      boxShadow: freezed == boxShadow
          ? _value._boxShadow
          : boxShadow // ignore: cast_nullable_to_non_nullable
              as List<StacBoxShadow?>?,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape,
      border: freezed == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as StacDecorationImage?,
      gradient: freezed == gradient
          ? _value.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as StacGradient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacBoxDecorationImpl implements _StacBoxDecoration {
  const _$StacBoxDecorationImpl(
      {this.color,
      this.backgroundBlendMode,
      final List<StacBoxShadow?>? boxShadow,
      this.shape = BoxShape.rectangle,
      this.border,
      this.borderRadius,
      this.image,
      this.gradient})
      : _boxShadow = boxShadow;

  factory _$StacBoxDecorationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacBoxDecorationImplFromJson(json);

  @override
  final String? color;
  @override
  final BlendMode? backgroundBlendMode;
  final List<StacBoxShadow?>? _boxShadow;
  @override
  List<StacBoxShadow?>? get boxShadow {
    final value = _boxShadow;
    if (value == null) return null;
    if (_boxShadow is EqualUnmodifiableListView) return _boxShadow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final BoxShape shape;
  @override
  final StacBorder? border;
  @override
  final StacBorderRadius? borderRadius;
  @override
  final StacDecorationImage? image;
  @override
  final StacGradient? gradient;

  @override
  String toString() {
    return 'StacBoxDecoration(color: $color, backgroundBlendMode: $backgroundBlendMode, boxShadow: $boxShadow, shape: $shape, border: $border, borderRadius: $borderRadius, image: $image, gradient: $gradient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacBoxDecorationImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.backgroundBlendMode, backgroundBlendMode) ||
                other.backgroundBlendMode == backgroundBlendMode) &&
            const DeepCollectionEquality()
                .equals(other._boxShadow, _boxShadow) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.border, border) || other.border == border) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.gradient, gradient) ||
                other.gradient == gradient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      color,
      backgroundBlendMode,
      const DeepCollectionEquality().hash(_boxShadow),
      shape,
      border,
      borderRadius,
      image,
      gradient);

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacBoxDecorationImplCopyWith<_$StacBoxDecorationImpl> get copyWith =>
      __$$StacBoxDecorationImplCopyWithImpl<_$StacBoxDecorationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacBoxDecorationImplToJson(
      this,
    );
  }
}

abstract class _StacBoxDecoration implements StacBoxDecoration {
  const factory _StacBoxDecoration(
      {final String? color,
      final BlendMode? backgroundBlendMode,
      final List<StacBoxShadow?>? boxShadow,
      final BoxShape shape,
      final StacBorder? border,
      final StacBorderRadius? borderRadius,
      final StacDecorationImage? image,
      final StacGradient? gradient}) = _$StacBoxDecorationImpl;

  factory _StacBoxDecoration.fromJson(Map<String, dynamic> json) =
      _$StacBoxDecorationImpl.fromJson;

  @override
  String? get color;
  @override
  BlendMode? get backgroundBlendMode;
  @override
  List<StacBoxShadow?>? get boxShadow;
  @override
  BoxShape get shape;
  @override
  StacBorder? get border;
  @override
  StacBorderRadius? get borderRadius;
  @override
  StacDecorationImage? get image;
  @override
  StacGradient? get gradient;

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacBoxDecorationImplCopyWith<_$StacBoxDecorationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
