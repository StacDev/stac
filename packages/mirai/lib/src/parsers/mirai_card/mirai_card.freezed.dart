// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiCard _$MiraiCardFromJson(Map<String, dynamic> json) {
  return _MiraiCard.fromJson(json);
}

/// @nodoc
mixin _$MiraiCard {
  String? get color => throw _privateConstructorUsedError;
  String? get shadowColor => throw _privateConstructorUsedError;
  String? get surfaceTintColor => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  MiraiShapeBorder? get shape => throw _privateConstructorUsedError;
  bool get borderOnForeground => throw _privateConstructorUsedError;
  MiraiEdgeInsets? get margin => throw _privateConstructorUsedError;
  Clip? get clipBehavior => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;
  bool get semanticContainer => throw _privateConstructorUsedError;

  /// Serializes this MiraiCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiCardCopyWith<MiraiCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiCardCopyWith<$Res> {
  factory $MiraiCardCopyWith(MiraiCard value, $Res Function(MiraiCard) then) =
      _$MiraiCardCopyWithImpl<$Res, MiraiCard>;
  @useResult
  $Res call(
      {String? color,
      String? shadowColor,
      String? surfaceTintColor,
      double? elevation,
      MiraiShapeBorder? shape,
      bool borderOnForeground,
      MiraiEdgeInsets? margin,
      Clip? clipBehavior,
      Map<String, dynamic>? child,
      bool semanticContainer});

  $MiraiShapeBorderCopyWith<$Res>? get shape;
  $MiraiEdgeInsetsCopyWith<$Res>? get margin;
}

/// @nodoc
class _$MiraiCardCopyWithImpl<$Res, $Val extends MiraiCard>
    implements $MiraiCardCopyWith<$Res> {
  _$MiraiCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiCard
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
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _value.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as MiraiShapeBorder?,
      borderOnForeground: null == borderOnForeground
          ? _value.borderOnForeground
          : borderOnForeground // ignore: cast_nullable_to_non_nullable
              as bool,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      clipBehavior: freezed == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      semanticContainer: null == semanticContainer
          ? _value.semanticContainer
          : semanticContainer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MiraiCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiShapeBorderCopyWith<$Res>? get shape {
    if (_value.shape == null) {
      return null;
    }

    return $MiraiShapeBorderCopyWith<$Res>(_value.shape!, (value) {
      return _then(_value.copyWith(shape: value) as $Val);
    });
  }

  /// Create a copy of MiraiCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiEdgeInsetsCopyWith<$Res>? get margin {
    if (_value.margin == null) {
      return null;
    }

    return $MiraiEdgeInsetsCopyWith<$Res>(_value.margin!, (value) {
      return _then(_value.copyWith(margin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiCardImplCopyWith<$Res>
    implements $MiraiCardCopyWith<$Res> {
  factory _$$MiraiCardImplCopyWith(
          _$MiraiCardImpl value, $Res Function(_$MiraiCardImpl) then) =
      __$$MiraiCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      String? shadowColor,
      String? surfaceTintColor,
      double? elevation,
      MiraiShapeBorder? shape,
      bool borderOnForeground,
      MiraiEdgeInsets? margin,
      Clip? clipBehavior,
      Map<String, dynamic>? child,
      bool semanticContainer});

  @override
  $MiraiShapeBorderCopyWith<$Res>? get shape;
  @override
  $MiraiEdgeInsetsCopyWith<$Res>? get margin;
}

/// @nodoc
class __$$MiraiCardImplCopyWithImpl<$Res>
    extends _$MiraiCardCopyWithImpl<$Res, _$MiraiCardImpl>
    implements _$$MiraiCardImplCopyWith<$Res> {
  __$$MiraiCardImplCopyWithImpl(
      _$MiraiCardImpl _value, $Res Function(_$MiraiCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiCard
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
    return _then(_$MiraiCardImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _value.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as MiraiShapeBorder?,
      borderOnForeground: null == borderOnForeground
          ? _value.borderOnForeground
          : borderOnForeground // ignore: cast_nullable_to_non_nullable
              as bool,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      clipBehavior: freezed == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip?,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      semanticContainer: null == semanticContainer
          ? _value.semanticContainer
          : semanticContainer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiCardImpl implements _MiraiCard {
  const _$MiraiCardImpl(
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

  factory _$MiraiCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiCardImplFromJson(json);

  @override
  final String? color;
  @override
  final String? shadowColor;
  @override
  final String? surfaceTintColor;
  @override
  final double? elevation;
  @override
  final MiraiShapeBorder? shape;
  @override
  @JsonKey()
  final bool borderOnForeground;
  @override
  final MiraiEdgeInsets? margin;
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

  @override
  String toString() {
    return 'MiraiCard(color: $color, shadowColor: $shadowColor, surfaceTintColor: $surfaceTintColor, elevation: $elevation, shape: $shape, borderOnForeground: $borderOnForeground, margin: $margin, clipBehavior: $clipBehavior, child: $child, semanticContainer: $semanticContainer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiCardImpl &&
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

  /// Create a copy of MiraiCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiCardImplCopyWith<_$MiraiCardImpl> get copyWith =>
      __$$MiraiCardImplCopyWithImpl<_$MiraiCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiCardImplToJson(
      this,
    );
  }
}

abstract class _MiraiCard implements MiraiCard {
  const factory _MiraiCard(
      {final String? color,
      final String? shadowColor,
      final String? surfaceTintColor,
      final double? elevation,
      final MiraiShapeBorder? shape,
      final bool borderOnForeground,
      final MiraiEdgeInsets? margin,
      final Clip? clipBehavior,
      final Map<String, dynamic>? child,
      final bool semanticContainer}) = _$MiraiCardImpl;

  factory _MiraiCard.fromJson(Map<String, dynamic> json) =
      _$MiraiCardImpl.fromJson;

  @override
  String? get color;
  @override
  String? get shadowColor;
  @override
  String? get surfaceTintColor;
  @override
  double? get elevation;
  @override
  MiraiShapeBorder? get shape;
  @override
  bool get borderOnForeground;
  @override
  MiraiEdgeInsets? get margin;
  @override
  Clip? get clipBehavior;
  @override
  Map<String, dynamic>? get child;
  @override
  bool get semanticContainer;

  /// Create a copy of MiraiCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiCardImplCopyWith<_$MiraiCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
