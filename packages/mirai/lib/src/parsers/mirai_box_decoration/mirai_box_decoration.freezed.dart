// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_box_decoration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiBoxDecoration _$MiraiBoxDecorationFromJson(Map<String, dynamic> json) {
  return _MiraiBoxDecoration.fromJson(json);
}

/// @nodoc
mixin _$MiraiBoxDecoration {
  String? get color => throw _privateConstructorUsedError;
  BlendMode? get backgroundBlendMode => throw _privateConstructorUsedError;
  List<MiraiBoxShadow?>? get boxShadow => throw _privateConstructorUsedError;
  BoxShape get shape => throw _privateConstructorUsedError;
  MiraiBorder? get border => throw _privateConstructorUsedError;
  MiraiBorderRadius? get borderRadius => throw _privateConstructorUsedError;
  MiraiDecorationImage? get image => throw _privateConstructorUsedError;
  MiraiGradient? get gradient => throw _privateConstructorUsedError;

  /// Serializes this MiraiBoxDecoration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiBoxDecorationCopyWith<MiraiBoxDecoration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiBoxDecorationCopyWith<$Res> {
  factory $MiraiBoxDecorationCopyWith(
          MiraiBoxDecoration value, $Res Function(MiraiBoxDecoration) then) =
      _$MiraiBoxDecorationCopyWithImpl<$Res, MiraiBoxDecoration>;
  @useResult
  $Res call(
      {String? color,
      BlendMode? backgroundBlendMode,
      List<MiraiBoxShadow?>? boxShadow,
      BoxShape shape,
      MiraiBorder? border,
      MiraiBorderRadius? borderRadius,
      MiraiDecorationImage? image,
      MiraiGradient? gradient});

  $MiraiBorderCopyWith<$Res>? get border;
  $MiraiBorderRadiusCopyWith<$Res>? get borderRadius;
  $MiraiDecorationImageCopyWith<$Res>? get image;
  $MiraiGradientCopyWith<$Res>? get gradient;
}

/// @nodoc
class _$MiraiBoxDecorationCopyWithImpl<$Res, $Val extends MiraiBoxDecoration>
    implements $MiraiBoxDecorationCopyWith<$Res> {
  _$MiraiBoxDecorationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiBoxDecoration
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
              as List<MiraiBoxShadow?>?,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape,
      border: freezed == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as MiraiBorder?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as MiraiBorderRadius?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as MiraiDecorationImage?,
      gradient: freezed == gradient
          ? _value.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as MiraiGradient?,
    ) as $Val);
  }

  /// Create a copy of MiraiBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderCopyWith<$Res>? get border {
    if (_value.border == null) {
      return null;
    }

    return $MiraiBorderCopyWith<$Res>(_value.border!, (value) {
      return _then(_value.copyWith(border: value) as $Val);
    });
  }

  /// Create a copy of MiraiBoxDecoration
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

  /// Create a copy of MiraiBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiDecorationImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $MiraiDecorationImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of MiraiBoxDecoration
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
abstract class _$$MiraiBoxDecorationImplCopyWith<$Res>
    implements $MiraiBoxDecorationCopyWith<$Res> {
  factory _$$MiraiBoxDecorationImplCopyWith(_$MiraiBoxDecorationImpl value,
          $Res Function(_$MiraiBoxDecorationImpl) then) =
      __$$MiraiBoxDecorationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      BlendMode? backgroundBlendMode,
      List<MiraiBoxShadow?>? boxShadow,
      BoxShape shape,
      MiraiBorder? border,
      MiraiBorderRadius? borderRadius,
      MiraiDecorationImage? image,
      MiraiGradient? gradient});

  @override
  $MiraiBorderCopyWith<$Res>? get border;
  @override
  $MiraiBorderRadiusCopyWith<$Res>? get borderRadius;
  @override
  $MiraiDecorationImageCopyWith<$Res>? get image;
  @override
  $MiraiGradientCopyWith<$Res>? get gradient;
}

/// @nodoc
class __$$MiraiBoxDecorationImplCopyWithImpl<$Res>
    extends _$MiraiBoxDecorationCopyWithImpl<$Res, _$MiraiBoxDecorationImpl>
    implements _$$MiraiBoxDecorationImplCopyWith<$Res> {
  __$$MiraiBoxDecorationImplCopyWithImpl(_$MiraiBoxDecorationImpl _value,
      $Res Function(_$MiraiBoxDecorationImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiBoxDecoration
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
    return _then(_$MiraiBoxDecorationImpl(
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
              as List<MiraiBoxShadow?>?,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape,
      border: freezed == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as MiraiBorder?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as MiraiBorderRadius?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as MiraiDecorationImage?,
      gradient: freezed == gradient
          ? _value.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as MiraiGradient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiBoxDecorationImpl implements _MiraiBoxDecoration {
  const _$MiraiBoxDecorationImpl(
      {this.color,
      this.backgroundBlendMode,
      final List<MiraiBoxShadow?>? boxShadow,
      this.shape = BoxShape.rectangle,
      this.border,
      this.borderRadius,
      this.image,
      this.gradient})
      : _boxShadow = boxShadow;

  factory _$MiraiBoxDecorationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiBoxDecorationImplFromJson(json);

  @override
  final String? color;
  @override
  final BlendMode? backgroundBlendMode;
  final List<MiraiBoxShadow?>? _boxShadow;
  @override
  List<MiraiBoxShadow?>? get boxShadow {
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
  final MiraiBorder? border;
  @override
  final MiraiBorderRadius? borderRadius;
  @override
  final MiraiDecorationImage? image;
  @override
  final MiraiGradient? gradient;

  @override
  String toString() {
    return 'MiraiBoxDecoration(color: $color, backgroundBlendMode: $backgroundBlendMode, boxShadow: $boxShadow, shape: $shape, border: $border, borderRadius: $borderRadius, image: $image, gradient: $gradient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiBoxDecorationImpl &&
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

  /// Create a copy of MiraiBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiBoxDecorationImplCopyWith<_$MiraiBoxDecorationImpl> get copyWith =>
      __$$MiraiBoxDecorationImplCopyWithImpl<_$MiraiBoxDecorationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiBoxDecorationImplToJson(
      this,
    );
  }
}

abstract class _MiraiBoxDecoration implements MiraiBoxDecoration {
  const factory _MiraiBoxDecoration(
      {final String? color,
      final BlendMode? backgroundBlendMode,
      final List<MiraiBoxShadow?>? boxShadow,
      final BoxShape shape,
      final MiraiBorder? border,
      final MiraiBorderRadius? borderRadius,
      final MiraiDecorationImage? image,
      final MiraiGradient? gradient}) = _$MiraiBoxDecorationImpl;

  factory _MiraiBoxDecoration.fromJson(Map<String, dynamic> json) =
      _$MiraiBoxDecorationImpl.fromJson;

  @override
  String? get color;
  @override
  BlendMode? get backgroundBlendMode;
  @override
  List<MiraiBoxShadow?>? get boxShadow;
  @override
  BoxShape get shape;
  @override
  MiraiBorder? get border;
  @override
  MiraiBorderRadius? get borderRadius;
  @override
  MiraiDecorationImage? get image;
  @override
  MiraiGradient? get gradient;

  /// Create a copy of MiraiBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiBoxDecorationImplCopyWith<_$MiraiBoxDecorationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
