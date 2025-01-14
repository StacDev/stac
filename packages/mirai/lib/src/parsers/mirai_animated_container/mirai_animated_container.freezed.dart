// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_animated_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiAnimatedContainer _$MiraiAnimatedContainerFromJson(
    Map<String, dynamic> json) {
  return _MiraiAnimatedContainer.fromJson(json);
}

/// @nodoc
mixin _$MiraiAnimatedContainer {
  Duration get duration => throw _privateConstructorUsedError;
  MiraiAlignment? get alignment => throw _privateConstructorUsedError;
  MiraiEdgeInsets? get padding => throw _privateConstructorUsedError;
  MiraiBoxDecoration? get decoration => throw _privateConstructorUsedError;
  MiraiBoxDecoration? get foregroundDecoration =>
      throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  MiraiBoxConstraints? get constraints => throw _privateConstructorUsedError;
  MiraiEdgeInsets? get margin => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;
  Clip get clipBehavior => throw _privateConstructorUsedError;

  /// Serializes this MiraiAnimatedContainer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiAnimatedContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiAnimatedContainerCopyWith<MiraiAnimatedContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiAnimatedContainerCopyWith<$Res> {
  factory $MiraiAnimatedContainerCopyWith(MiraiAnimatedContainer value,
          $Res Function(MiraiAnimatedContainer) then) =
      _$MiraiAnimatedContainerCopyWithImpl<$Res, MiraiAnimatedContainer>;
  @useResult
  $Res call(
      {Duration duration,
      MiraiAlignment? alignment,
      MiraiEdgeInsets? padding,
      MiraiBoxDecoration? decoration,
      MiraiBoxDecoration? foregroundDecoration,
      String? color,
      double? width,
      double? height,
      MiraiBoxConstraints? constraints,
      MiraiEdgeInsets? margin,
      Map<String, dynamic>? child,
      Clip clipBehavior});

  $MiraiEdgeInsetsCopyWith<$Res>? get padding;
  $MiraiBoxDecorationCopyWith<$Res>? get decoration;
  $MiraiBoxDecorationCopyWith<$Res>? get foregroundDecoration;
  $MiraiBoxConstraintsCopyWith<$Res>? get constraints;
  $MiraiEdgeInsetsCopyWith<$Res>? get margin;
}

/// @nodoc
class _$MiraiAnimatedContainerCopyWithImpl<$Res,
        $Val extends MiraiAnimatedContainer>
    implements $MiraiAnimatedContainerCopyWith<$Res> {
  _$MiraiAnimatedContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiAnimatedContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? alignment = freezed,
    Object? padding = freezed,
    Object? decoration = freezed,
    Object? foregroundDecoration = freezed,
    Object? color = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? constraints = freezed,
    Object? margin = freezed,
    Object? child = freezed,
    Object? clipBehavior = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      alignment: freezed == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as MiraiAlignment?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as MiraiBoxDecoration?,
      foregroundDecoration: freezed == foregroundDecoration
          ? _value.foregroundDecoration
          : foregroundDecoration // ignore: cast_nullable_to_non_nullable
              as MiraiBoxDecoration?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      constraints: freezed == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as MiraiBoxConstraints?,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ) as $Val);
  }

  /// Create a copy of MiraiAnimatedContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiEdgeInsetsCopyWith<$Res>? get padding {
    if (_value.padding == null) {
      return null;
    }

    return $MiraiEdgeInsetsCopyWith<$Res>(_value.padding!, (value) {
      return _then(_value.copyWith(padding: value) as $Val);
    });
  }

  /// Create a copy of MiraiAnimatedContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBoxDecorationCopyWith<$Res>? get decoration {
    if (_value.decoration == null) {
      return null;
    }

    return $MiraiBoxDecorationCopyWith<$Res>(_value.decoration!, (value) {
      return _then(_value.copyWith(decoration: value) as $Val);
    });
  }

  /// Create a copy of MiraiAnimatedContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBoxDecorationCopyWith<$Res>? get foregroundDecoration {
    if (_value.foregroundDecoration == null) {
      return null;
    }

    return $MiraiBoxDecorationCopyWith<$Res>(_value.foregroundDecoration!,
        (value) {
      return _then(_value.copyWith(foregroundDecoration: value) as $Val);
    });
  }

  /// Create a copy of MiraiAnimatedContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBoxConstraintsCopyWith<$Res>? get constraints {
    if (_value.constraints == null) {
      return null;
    }

    return $MiraiBoxConstraintsCopyWith<$Res>(_value.constraints!, (value) {
      return _then(_value.copyWith(constraints: value) as $Val);
    });
  }

  /// Create a copy of MiraiAnimatedContainer
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
abstract class _$$MiraiAnimatedContainerImplCopyWith<$Res>
    implements $MiraiAnimatedContainerCopyWith<$Res> {
  factory _$$MiraiAnimatedContainerImplCopyWith(
          _$MiraiAnimatedContainerImpl value,
          $Res Function(_$MiraiAnimatedContainerImpl) then) =
      __$$MiraiAnimatedContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Duration duration,
      MiraiAlignment? alignment,
      MiraiEdgeInsets? padding,
      MiraiBoxDecoration? decoration,
      MiraiBoxDecoration? foregroundDecoration,
      String? color,
      double? width,
      double? height,
      MiraiBoxConstraints? constraints,
      MiraiEdgeInsets? margin,
      Map<String, dynamic>? child,
      Clip clipBehavior});

  @override
  $MiraiEdgeInsetsCopyWith<$Res>? get padding;
  @override
  $MiraiBoxDecorationCopyWith<$Res>? get decoration;
  @override
  $MiraiBoxDecorationCopyWith<$Res>? get foregroundDecoration;
  @override
  $MiraiBoxConstraintsCopyWith<$Res>? get constraints;
  @override
  $MiraiEdgeInsetsCopyWith<$Res>? get margin;
}

/// @nodoc
class __$$MiraiAnimatedContainerImplCopyWithImpl<$Res>
    extends _$MiraiAnimatedContainerCopyWithImpl<$Res,
        _$MiraiAnimatedContainerImpl>
    implements _$$MiraiAnimatedContainerImplCopyWith<$Res> {
  __$$MiraiAnimatedContainerImplCopyWithImpl(
      _$MiraiAnimatedContainerImpl _value,
      $Res Function(_$MiraiAnimatedContainerImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiAnimatedContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? alignment = freezed,
    Object? padding = freezed,
    Object? decoration = freezed,
    Object? foregroundDecoration = freezed,
    Object? color = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? constraints = freezed,
    Object? margin = freezed,
    Object? child = freezed,
    Object? clipBehavior = null,
  }) {
    return _then(_$MiraiAnimatedContainerImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      alignment: freezed == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as MiraiAlignment?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as MiraiBoxDecoration?,
      foregroundDecoration: freezed == foregroundDecoration
          ? _value.foregroundDecoration
          : foregroundDecoration // ignore: cast_nullable_to_non_nullable
              as MiraiBoxDecoration?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      constraints: freezed == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as MiraiBoxConstraints?,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as MiraiEdgeInsets?,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiAnimatedContainerImpl implements _MiraiAnimatedContainer {
  const _$MiraiAnimatedContainerImpl(
      {required this.duration,
      this.alignment,
      this.padding,
      this.decoration,
      this.foregroundDecoration,
      this.color,
      this.width,
      this.height,
      this.constraints,
      this.margin,
      final Map<String, dynamic>? child,
      this.clipBehavior = Clip.none})
      : _child = child;

  factory _$MiraiAnimatedContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiAnimatedContainerImplFromJson(json);

  @override
  final Duration duration;
  @override
  final MiraiAlignment? alignment;
  @override
  final MiraiEdgeInsets? padding;
  @override
  final MiraiBoxDecoration? decoration;
  @override
  final MiraiBoxDecoration? foregroundDecoration;
  @override
  final String? color;
  @override
  final double? width;
  @override
  final double? height;
  @override
  final MiraiBoxConstraints? constraints;
  @override
  final MiraiEdgeInsets? margin;
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
  final Clip clipBehavior;

  @override
  String toString() {
    return 'MiraiAnimatedContainer(duration: $duration, alignment: $alignment, padding: $padding, decoration: $decoration, foregroundDecoration: $foregroundDecoration, color: $color, width: $width, height: $height, constraints: $constraints, margin: $margin, child: $child, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiAnimatedContainerImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.foregroundDecoration, foregroundDecoration) ||
                other.foregroundDecoration == foregroundDecoration) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      duration,
      alignment,
      padding,
      decoration,
      foregroundDecoration,
      color,
      width,
      height,
      constraints,
      margin,
      const DeepCollectionEquality().hash(_child),
      clipBehavior);

  /// Create a copy of MiraiAnimatedContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiAnimatedContainerImplCopyWith<_$MiraiAnimatedContainerImpl>
      get copyWith => __$$MiraiAnimatedContainerImplCopyWithImpl<
          _$MiraiAnimatedContainerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiAnimatedContainerImplToJson(
      this,
    );
  }
}

abstract class _MiraiAnimatedContainer implements MiraiAnimatedContainer {
  const factory _MiraiAnimatedContainer(
      {required final Duration duration,
      final MiraiAlignment? alignment,
      final MiraiEdgeInsets? padding,
      final MiraiBoxDecoration? decoration,
      final MiraiBoxDecoration? foregroundDecoration,
      final String? color,
      final double? width,
      final double? height,
      final MiraiBoxConstraints? constraints,
      final MiraiEdgeInsets? margin,
      final Map<String, dynamic>? child,
      final Clip clipBehavior}) = _$MiraiAnimatedContainerImpl;

  factory _MiraiAnimatedContainer.fromJson(Map<String, dynamic> json) =
      _$MiraiAnimatedContainerImpl.fromJson;

  @override
  Duration get duration;
  @override
  MiraiAlignment? get alignment;
  @override
  MiraiEdgeInsets? get padding;
  @override
  MiraiBoxDecoration? get decoration;
  @override
  MiraiBoxDecoration? get foregroundDecoration;
  @override
  String? get color;
  @override
  double? get width;
  @override
  double? get height;
  @override
  MiraiBoxConstraints? get constraints;
  @override
  MiraiEdgeInsets? get margin;
  @override
  Map<String, dynamic>? get child;
  @override
  Clip get clipBehavior;

  /// Create a copy of MiraiAnimatedContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiAnimatedContainerImplCopyWith<_$MiraiAnimatedContainerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
