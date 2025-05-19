// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacCard {
  String? get color;
  String? get shadowColor;
  String? get surfaceTintColor;
  StacDouble? get elevation;
  StacShapeBorder? get shape;
  bool get borderOnForeground;
  StacEdgeInsets? get margin;
  Clip? get clipBehavior;
  Map<String, dynamic>? get child;
  bool get semanticContainer;

  /// Create a copy of StacCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacCardCopyWith<StacCard> get copyWith =>
      _$StacCardCopyWithImpl<StacCard>(this as StacCard, _$identity);

  /// Serializes this StacCard to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacCard &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.borderOnForeground, borderOnForeground) ||
                other.borderOnForeground == borderOnForeground) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            (identical(other.semanticContainer, semanticContainer) ||
                other.semanticContainer == semanticContainer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      color,
      shadowColor,
      surfaceTintColor,
      elevation,
      shape,
      borderOnForeground,
      margin,
      clipBehavior,
      const DeepCollectionEquality().hash(child),
      semanticContainer);

  @override
  String toString() {
    return 'StacCard(color: $color, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, elevation: $elevation, shape: $shape, borderOnForeground: $borderOnForeground, margin: $margin, clipBehavior: $clipBehavior, child: $child, semanticContainer: $semanticContainer)';
  }
}

/// @nodoc
abstract mixin class $StacCardCopyWith<$Res> {
  factory $StacCardCopyWith(StacCard value, $Res Function(StacCard) _then) =
      _$StacCardCopyWithImpl;
  @useResult
  $Res call(
      {String? color,
      String? shadowColor,
      String? surfaceTintColor,
      StacDouble? elevation,
      StacShapeBorder? shape,
      bool borderOnForeground,
      StacEdgeInsets? margin,
      Clip? clipBehavior,
      Map<String, dynamic>? child,
      bool semanticContainer});

  $StacShapeBorderCopyWith<$Res>? get shape;
  $StacEdgeInsetsCopyWith<$Res>? get margin;
}

/// @nodoc
class _$StacCardCopyWithImpl<$Res> implements $StacCardCopyWith<$Res> {
  _$StacCardCopyWithImpl(this._self, this._then);

  final StacCard _self;
  final $Res Function(StacCard) _then;

  /// Create a copy of StacCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? elevation = freezed,
    Object? shape = freezed,
    Object? borderOnForeground = null,
    Object? margin = freezed,
    Object? clipBehavior = freezed,
    Object? child = freezed,
    Object? semanticContainer = null,
  }) {
    return _then(_self.copyWith(
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      borderOnForeground: null == borderOnForeground
          ? _self.borderOnForeground
          : borderOnForeground // ignore: cast_nullable_to_non_nullable
              as bool,
      margin: freezed == margin
          ? _self.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      semanticContainer: null == semanticContainer
          ? _self.semanticContainer
          : semanticContainer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacCard
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

  /// Create a copy of StacCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get margin {
    if (_self.margin == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.margin!, (value) {
      return _then(_self.copyWith(margin: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacCard implements StacCard {
  const _StacCard(
      {this.color,
      this.shadowColor,
      this.surfaceTintColor,
      this.elevation,
      this.shape,
      this.borderOnForeground = true,
      this.margin,
      this.clipBehavior,
      final Map<String, dynamic>? child,
      this.semanticContainer = true})
      : _child = child;
  factory _StacCard.fromJson(Map<String, dynamic> json) =>
      _$StacCardFromJson(json);

  @override
  final String? color;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final StacDouble? elevation;
  @override
  final StacShapeBorder? shape;
  @override
  @JsonKey()
  final bool borderOnForeground;
  @override
  final StacEdgeInsets? margin;
  @override
  final Clip? clipBehavior;
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
  @JsonKey()
  final bool semanticContainer;

  /// Create a copy of StacCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacCardCopyWith<_StacCard> get copyWith =>
      __$StacCardCopyWithImpl<_StacCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacCardToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacCard &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.borderOnForeground, borderOnForeground) ||
                other.borderOnForeground == borderOnForeground) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.semanticContainer, semanticContainer) ||
                other.semanticContainer == semanticContainer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      color,
      shadowColor,
      surfaceTintColor,
      elevation,
      shape,
      borderOnForeground,
      margin,
      clipBehavior,
      const DeepCollectionEquality().hash(_child),
      semanticContainer);

  @override
  String toString() {
    return 'StacCard(color: $color, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, elevation: $elevation, shape: $shape, borderOnForeground: $borderOnForeground, margin: $margin, clipBehavior: $clipBehavior, child: $child, semanticContainer: $semanticContainer)';
  }
}

/// @nodoc
abstract mixin class _$StacCardCopyWith<$Res>
    implements $StacCardCopyWith<$Res> {
  factory _$StacCardCopyWith(_StacCard value, $Res Function(_StacCard) _then) =
      __$StacCardCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? color,
      String? shadowColor,
      String? surfaceTintColor,
      StacDouble? elevation,
      StacShapeBorder? shape,
      bool borderOnForeground,
      StacEdgeInsets? margin,
      Clip? clipBehavior,
      Map<String, dynamic>? child,
      bool semanticContainer});

  @override
  $StacShapeBorderCopyWith<$Res>? get shape;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get margin;
}

/// @nodoc
class __$StacCardCopyWithImpl<$Res> implements _$StacCardCopyWith<$Res> {
  __$StacCardCopyWithImpl(this._self, this._then);

  final _StacCard _self;
  final $Res Function(_StacCard) _then;

  /// Create a copy of StacCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? color = freezed,
    Object? shadowColor = freezed,
    Object? surfaceTintColor = freezed,
    Object? elevation = freezed,
    Object? shape = freezed,
    Object? borderOnForeground = null,
    Object? margin = freezed,
    Object? clipBehavior = freezed,
    Object? child = freezed,
    Object? semanticContainer = null,
  }) {
    return _then(_StacCard(
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacShapeBorder?,
      borderOnForeground: null == borderOnForeground
          ? _self.borderOnForeground
          : borderOnForeground // ignore: cast_nullable_to_non_nullable
              as bool,
      margin: freezed == margin
          ? _self.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      clipBehavior: freezed == clipBehavior
          ? _self.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      semanticContainer: null == semanticContainer
          ? _self.semanticContainer
          : semanticContainer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacCard
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

  /// Create a copy of StacCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get margin {
    if (_self.margin == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.margin!, (value) {
      return _then(_self.copyWith(margin: value));
    });
  }
}

// dart format on
