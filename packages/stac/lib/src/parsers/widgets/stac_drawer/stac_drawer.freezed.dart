// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_drawer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDrawer {
  String? get backgroundColor;
  StacDouble? get elevation;
  String? get shadowColor;
  String? get surfaceTintColor;
  StacShapeBorder? get shape;
  StacDouble? get width;
  Map<String, dynamic>? get child;
  String? get semanticLabel;
  Clip? get clipBehavior;

  /// Create a copy of StacDrawer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDrawerCopyWith<StacDrawer> get copyWith =>
      _$StacDrawerCopyWithImpl<StacDrawer>(this as StacDrawer, _$identity);

  /// Serializes this StacDrawer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDrawer &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.width, width) || other.width == width) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            (identical(other.semanticLabel, semanticLabel) ||
                other.semanticLabel == semanticLabel) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      shape,
      width,
      const DeepCollectionEquality().hash(child),
      semanticLabel,
      clipBehavior);

  @override
  String toString() {
    return 'StacDrawer(backgroundColor: $backgroundColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, shape: $shape, width: $width, child: $child, semanticLabel: $semanticLabel, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacDrawerCopyWith<$Res> {
  factory $StacDrawerCopyWith(
          StacDrawer value, $Res Function(StacDrawer) _then) =
      _$StacDrawerCopyWithImpl;
  @useResult
  $Res call(
      {String? backgroundColor,
      StacDouble? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacShapeBorder? shape,
      StacDouble? width,
      Map<String, dynamic>? child,
      String? semanticLabel,
      Clip? clipBehavior});

  $StacShapeBorderCopyWith<$Res>? get shape;
}

/// @nodoc
class _$StacDrawerCopyWithImpl<$Res> implements $StacDrawerCopyWith<$Res> {
  _$StacDrawerCopyWithImpl(this._self, this._then);

  final StacDrawer _self;
  final $Res Function(StacDrawer) _then;

  /// Create a copy of StacDrawer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? width = freezed,
    Object? child = freezed,
    Object? semanticLabel = freezed,
    Object? clipBehavior = freezed,
  }) {
    return _then(_self.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      semanticLabel: freezed == semanticLabel
          ? _self.semanticLabel
          : semanticLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
    ));
  }

  /// Create a copy of StacDrawer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacShapeBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacDrawer implements StacDrawer {
  const _StacDrawer(
      {this.backgroundColor,
      this.elevation,
      this.shadowColor,
      this.surfaceTintColor,
      this.shape,
      this.width,
      final Map<String, dynamic>? child,
      this.semanticLabel,
      this.clipBehavior})
      : _child = child;
  factory _StacDrawer.fromJson(Map<String, dynamic> json) =>
      _$StacDrawerFromJson(json);

  @override
  final String? backgroundColor;
  @override
  final StacDouble? elevation;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final StacShapeBorder? shape;
  @override
  final StacDouble? width;
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
  final String? semanticLabel;
  @override
  final Clip? clipBehavior;

  /// Create a copy of StacDrawer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDrawerCopyWith<_StacDrawer> get copyWith =>
      __$StacDrawerCopyWithImpl<_StacDrawer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDrawerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDrawer &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.width, width) || other.width == width) &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.semanticLabel, semanticLabel) ||
                other.semanticLabel == semanticLabel) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      shape,
      width,
      const DeepCollectionEquality().hash(_child),
      semanticLabel,
      clipBehavior);

  @override
  String toString() {
    return 'StacDrawer(backgroundColor: $backgroundColor, elevation: $elevation, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, shape: $shape, width: $width, child: $child, semanticLabel: $semanticLabel, clipBehavior: $clipBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacDrawerCopyWith<$Res>
    implements $StacDrawerCopyWith<$Res> {
  factory _$StacDrawerCopyWith(
          _StacDrawer value, $Res Function(_StacDrawer) _then) =
      __$StacDrawerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? backgroundColor,
      StacDouble? elevation,
      String? shadowColor,
      String? surfaceTintColor,
      StacShapeBorder? shape,
      StacDouble? width,
      Map<String, dynamic>? child,
      String? semanticLabel,
      Clip? clipBehavior});

  @override
  $StacShapeBorderCopyWith<$Res>? get shape;
}

/// @nodoc
class __$StacDrawerCopyWithImpl<$Res> implements _$StacDrawerCopyWith<$Res> {
  __$StacDrawerCopyWithImpl(this._self, this._then);

  final _StacDrawer _self;
  final $Res Function(_StacDrawer) _then;

  /// Create a copy of StacDrawer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? shape = freezed,
    Object? width = freezed,
    Object? child = freezed,
    Object? semanticLabel = freezed,
    Object? clipBehavior = freezed,
  }) {
    return _then(_StacDrawer(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      semanticLabel: freezed == semanticLabel
          ? _self.semanticLabel
          : semanticLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
    ));
  }

  /// Create a copy of StacDrawer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacShapeBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacShapeBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }
}

// dart format on
