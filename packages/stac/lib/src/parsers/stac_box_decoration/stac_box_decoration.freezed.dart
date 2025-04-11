// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_box_decoration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacBoxDecoration {
  String? get color;
  BlendMode? get backgroundBlendMode;
  List<StacBoxShadow?>? get boxShadow;
  BoxShape get shape;
  StacBorder? get border;
  StacBorderRadius? get borderRadius;
  StacDecorationImage? get image;
  StacGradient? get gradient;

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBoxDecorationCopyWith<StacBoxDecoration> get copyWith =>
      _$StacBoxDecorationCopyWithImpl<StacBoxDecoration>(
          this as StacBoxDecoration, _$identity);

  /// Serializes this StacBoxDecoration to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBoxDecoration &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.backgroundBlendMode, backgroundBlendMode) ||
                other.backgroundBlendMode == backgroundBlendMode) &&
            const DeepCollectionEquality().equals(other.boxShadow, boxShadow) &&
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
      const DeepCollectionEquality().hash(boxShadow),
      shape,
      border,
      borderRadius,
      image,
      gradient);

  @override
  String toString() {
    return 'StacBoxDecoration(color: $color, backgroundBlendMode: $backgroundBlendMode, boxShadow: $boxShadow, shape: $shape, border: $border, borderRadius: $borderRadius, image: $image, gradient: $gradient)';
  }
}

/// @nodoc
abstract mixin class $StacBoxDecorationCopyWith<$Res> {
  factory $StacBoxDecorationCopyWith(
          StacBoxDecoration value, $Res Function(StacBoxDecoration) _then) =
      _$StacBoxDecorationCopyWithImpl;
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
class _$StacBoxDecorationCopyWithImpl<$Res>
    implements $StacBoxDecorationCopyWith<$Res> {
  _$StacBoxDecorationCopyWithImpl(this._self, this._then);

  final StacBoxDecoration _self;
  final $Res Function(StacBoxDecoration) _then;

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
    return _then(_self.copyWith(
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundBlendMode: freezed == backgroundBlendMode
          ? _self.backgroundBlendMode
          : backgroundBlendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode?,
      boxShadow: freezed == boxShadow
          ? _self.boxShadow
          : boxShadow // ignore: cast_nullable_to_non_nullable
              as List<StacBoxShadow?>?,
      shape: null == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape,
      border: freezed == border
          ? _self.border
          : border // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as StacDecorationImage?,
      gradient: freezed == gradient
          ? _self.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as StacGradient?,
    ));
  }

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderCopyWith<$Res>? get border {
    if (_self.border == null) {
      return null;
    }

    return $StacBorderCopyWith<$Res>(_self.border!, (value) {
      return _then(_self.copyWith(border: value));
    });
  }

  /// Create a copy of StacBoxDecoration
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

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDecorationImageCopyWith<$Res>? get image {
    if (_self.image == null) {
      return null;
    }

    return $StacDecorationImageCopyWith<$Res>(_self.image!, (value) {
      return _then(_self.copyWith(image: value));
    });
  }

  /// Create a copy of StacBoxDecoration
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
class _StacBoxDecoration implements StacBoxDecoration {
  const _StacBoxDecoration(
      {this.color,
      this.backgroundBlendMode,
      final List<StacBoxShadow?>? boxShadow,
      this.shape = BoxShape.rectangle,
      this.border,
      this.borderRadius,
      this.image,
      this.gradient})
      : _boxShadow = boxShadow;
  factory _StacBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$StacBoxDecorationFromJson(json);

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

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBoxDecorationCopyWith<_StacBoxDecoration> get copyWith =>
      __$StacBoxDecorationCopyWithImpl<_StacBoxDecoration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBoxDecorationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBoxDecoration &&
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

  @override
  String toString() {
    return 'StacBoxDecoration(color: $color, backgroundBlendMode: $backgroundBlendMode, boxShadow: $boxShadow, shape: $shape, border: $border, borderRadius: $borderRadius, image: $image, gradient: $gradient)';
  }
}

/// @nodoc
abstract mixin class _$StacBoxDecorationCopyWith<$Res>
    implements $StacBoxDecorationCopyWith<$Res> {
  factory _$StacBoxDecorationCopyWith(
          _StacBoxDecoration value, $Res Function(_StacBoxDecoration) _then) =
      __$StacBoxDecorationCopyWithImpl;
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
class __$StacBoxDecorationCopyWithImpl<$Res>
    implements _$StacBoxDecorationCopyWith<$Res> {
  __$StacBoxDecorationCopyWithImpl(this._self, this._then);

  final _StacBoxDecoration _self;
  final $Res Function(_StacBoxDecoration) _then;

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_StacBoxDecoration(
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundBlendMode: freezed == backgroundBlendMode
          ? _self.backgroundBlendMode
          : backgroundBlendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode?,
      boxShadow: freezed == boxShadow
          ? _self._boxShadow
          : boxShadow // ignore: cast_nullable_to_non_nullable
              as List<StacBoxShadow?>?,
      shape: null == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape,
      border: freezed == border
          ? _self.border
          : border // ignore: cast_nullable_to_non_nullable
              as StacBorder?,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as StacDecorationImage?,
      gradient: freezed == gradient
          ? _self.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as StacGradient?,
    ));
  }

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderCopyWith<$Res>? get border {
    if (_self.border == null) {
      return null;
    }

    return $StacBorderCopyWith<$Res>(_self.border!, (value) {
      return _then(_self.copyWith(border: value));
    });
  }

  /// Create a copy of StacBoxDecoration
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

  /// Create a copy of StacBoxDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacDecorationImageCopyWith<$Res>? get image {
    if (_self.image == null) {
      return null;
    }

    return $StacDecorationImageCopyWith<$Res>(_self.image!, (value) {
      return _then(_self.copyWith(image: value));
    });
  }

  /// Create a copy of StacBoxDecoration
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
