// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_circle_avatar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacCircleAvatar {
  Map<String, dynamic>? get child;
  String? get backgroundColor;
  String? get backgroundImage;
  String? get foregroundImage;
  Map<String, dynamic>? get onBackgroundImageError;
  Map<String, dynamic>? get onForegroundImageError;
  String? get foregroundColor;
  double? get radius;
  double? get minRadius;
  double? get maxRadius;

  /// Create a copy of StacCircleAvatar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacCircleAvatarCopyWith<StacCircleAvatar> get copyWith =>
      _$StacCircleAvatarCopyWithImpl<StacCircleAvatar>(
          this as StacCircleAvatar, _$identity);

  /// Serializes this StacCircleAvatar to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacCircleAvatar &&
            const DeepCollectionEquality().equals(other.child, child) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.foregroundImage, foregroundImage) ||
                other.foregroundImage == foregroundImage) &&
            const DeepCollectionEquality()
                .equals(other.onBackgroundImageError, onBackgroundImageError) &&
            const DeepCollectionEquality()
                .equals(other.onForegroundImageError, onForegroundImageError) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.minRadius, minRadius) ||
                other.minRadius == minRadius) &&
            (identical(other.maxRadius, maxRadius) ||
                other.maxRadius == maxRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(child),
      backgroundColor,
      backgroundImage,
      foregroundImage,
      const DeepCollectionEquality().hash(onBackgroundImageError),
      const DeepCollectionEquality().hash(onForegroundImageError),
      foregroundColor,
      radius,
      minRadius,
      maxRadius);

  @override
  String toString() {
    return 'StacCircleAvatar(child: $child, backgroundColor: $backgroundColor, backgroundImage: $backgroundImage, foregroundImage: $foregroundImage, onBackgroundImageError: $onBackgroundImageError, onForegroundImageError: $onForegroundImageError, foregroundColor: $foregroundColor, radius: $radius, minRadius: $minRadius, maxRadius: $maxRadius)';
  }
}

/// @nodoc
abstract mixin class $StacCircleAvatarCopyWith<$Res> {
  factory $StacCircleAvatarCopyWith(
          StacCircleAvatar value, $Res Function(StacCircleAvatar) _then) =
      _$StacCircleAvatarCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? child,
      String? backgroundColor,
      String? backgroundImage,
      String? foregroundImage,
      Map<String, dynamic>? onBackgroundImageError,
      Map<String, dynamic>? onForegroundImageError,
      String? foregroundColor,
      double? radius,
      double? minRadius,
      double? maxRadius});
}

/// @nodoc
class _$StacCircleAvatarCopyWithImpl<$Res>
    implements $StacCircleAvatarCopyWith<$Res> {
  _$StacCircleAvatarCopyWithImpl(this._self, this._then);

  final StacCircleAvatar _self;
  final $Res Function(StacCircleAvatar) _then;

  /// Create a copy of StacCircleAvatar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = freezed,
    Object? backgroundColor = freezed,
    Object? backgroundImage = freezed,
    Object? foregroundImage = freezed,
    Object? onBackgroundImageError = freezed,
    Object? onForegroundImageError = freezed,
    Object? foregroundColor = freezed,
    Object? radius = freezed,
    Object? minRadius = freezed,
    Object? maxRadius = freezed,
  }) {
    return _then(_self.copyWith(
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImage: freezed == backgroundImage
          ? _self.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      foregroundImage: freezed == foregroundImage
          ? _self.foregroundImage
          : foregroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      onBackgroundImageError: freezed == onBackgroundImageError
          ? _self.onBackgroundImageError
          : onBackgroundImageError // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onForegroundImageError: freezed == onForegroundImageError
          ? _self.onForegroundImageError
          : onForegroundImageError // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      foregroundColor: freezed == foregroundColor
          ? _self.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      radius: freezed == radius
          ? _self.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
      minRadius: freezed == minRadius
          ? _self.minRadius
          : minRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      maxRadius: freezed == maxRadius
          ? _self.maxRadius
          : maxRadius // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacCircleAvatar implements StacCircleAvatar {
  const _StacCircleAvatar(
      {final Map<String, dynamic>? child,
      this.backgroundColor,
      this.backgroundImage,
      this.foregroundImage,
      final Map<String, dynamic>? onBackgroundImageError,
      final Map<String, dynamic>? onForegroundImageError,
      this.foregroundColor,
      this.radius,
      this.minRadius,
      this.maxRadius})
      : _child = child,
        _onBackgroundImageError = onBackgroundImageError,
        _onForegroundImageError = onForegroundImageError;
  factory _StacCircleAvatar.fromJson(Map<String, dynamic> json) =>
      _$StacCircleAvatarFromJson(json);

  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? backgroundColor;
  @override
  final String? backgroundImage;
  @override
  final String? foregroundImage;
  final Map<String, dynamic>? _onBackgroundImageError;
  @override
  Map<String, dynamic>? get onBackgroundImageError {
    final value = _onBackgroundImageError;
    if (value == null) return null;
    if (_onBackgroundImageError is EqualUnmodifiableMapView)
      return _onBackgroundImageError;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onForegroundImageError;
  @override
  Map<String, dynamic>? get onForegroundImageError {
    final value = _onForegroundImageError;
    if (value == null) return null;
    if (_onForegroundImageError is EqualUnmodifiableMapView)
      return _onForegroundImageError;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? foregroundColor;
  @override
  final double? radius;
  @override
  final double? minRadius;
  @override
  final double? maxRadius;

  /// Create a copy of StacCircleAvatar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacCircleAvatarCopyWith<_StacCircleAvatar> get copyWith =>
      __$StacCircleAvatarCopyWithImpl<_StacCircleAvatar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacCircleAvatarToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacCircleAvatar &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.foregroundImage, foregroundImage) ||
                other.foregroundImage == foregroundImage) &&
            const DeepCollectionEquality().equals(
                other._onBackgroundImageError, _onBackgroundImageError) &&
            const DeepCollectionEquality().equals(
                other._onForegroundImageError, _onForegroundImageError) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.minRadius, minRadius) ||
                other.minRadius == minRadius) &&
            (identical(other.maxRadius, maxRadius) ||
                other.maxRadius == maxRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_child),
      backgroundColor,
      backgroundImage,
      foregroundImage,
      const DeepCollectionEquality().hash(_onBackgroundImageError),
      const DeepCollectionEquality().hash(_onForegroundImageError),
      foregroundColor,
      radius,
      minRadius,
      maxRadius);

  @override
  String toString() {
    return 'StacCircleAvatar(child: $child, backgroundColor: $backgroundColor, backgroundImage: $backgroundImage, foregroundImage: $foregroundImage, onBackgroundImageError: $onBackgroundImageError, onForegroundImageError: $onForegroundImageError, foregroundColor: $foregroundColor, radius: $radius, minRadius: $minRadius, maxRadius: $maxRadius)';
  }
}

/// @nodoc
abstract mixin class _$StacCircleAvatarCopyWith<$Res>
    implements $StacCircleAvatarCopyWith<$Res> {
  factory _$StacCircleAvatarCopyWith(
          _StacCircleAvatar value, $Res Function(_StacCircleAvatar) _then) =
      __$StacCircleAvatarCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? child,
      String? backgroundColor,
      String? backgroundImage,
      String? foregroundImage,
      Map<String, dynamic>? onBackgroundImageError,
      Map<String, dynamic>? onForegroundImageError,
      String? foregroundColor,
      double? radius,
      double? minRadius,
      double? maxRadius});
}

/// @nodoc
class __$StacCircleAvatarCopyWithImpl<$Res>
    implements _$StacCircleAvatarCopyWith<$Res> {
  __$StacCircleAvatarCopyWithImpl(this._self, this._then);

  final _StacCircleAvatar _self;
  final $Res Function(_StacCircleAvatar) _then;

  /// Create a copy of StacCircleAvatar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? child = freezed,
    Object? backgroundColor = freezed,
    Object? backgroundImage = freezed,
    Object? foregroundImage = freezed,
    Object? onBackgroundImageError = freezed,
    Object? onForegroundImageError = freezed,
    Object? foregroundColor = freezed,
    Object? radius = freezed,
    Object? minRadius = freezed,
    Object? maxRadius = freezed,
  }) {
    return _then(_StacCircleAvatar(
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImage: freezed == backgroundImage
          ? _self.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      foregroundImage: freezed == foregroundImage
          ? _self.foregroundImage
          : foregroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      onBackgroundImageError: freezed == onBackgroundImageError
          ? _self._onBackgroundImageError
          : onBackgroundImageError // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onForegroundImageError: freezed == onForegroundImageError
          ? _self._onForegroundImageError
          : onForegroundImageError // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      foregroundColor: freezed == foregroundColor
          ? _self.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      radius: freezed == radius
          ? _self.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
      minRadius: freezed == minRadius
          ? _self.minRadius
          : minRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      maxRadius: freezed == maxRadius
          ? _self.maxRadius
          : maxRadius // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
