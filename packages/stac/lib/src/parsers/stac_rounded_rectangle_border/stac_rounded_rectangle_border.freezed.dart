// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_rounded_rectangle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacRoundedRectangleBorder _$StacRoundedRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _StacRoundedRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$StacRoundedRectangleBorder {
  StacBorderSide? get side => throw _privateConstructorUsedError;
  StacBorderRadius? get borderRadius => throw _privateConstructorUsedError;

  /// Serializes this StacRoundedRectangleBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacRoundedRectangleBorderCopyWith<StacRoundedRectangleBorder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacRoundedRectangleBorderCopyWith<$Res> {
  factory $StacRoundedRectangleBorderCopyWith(StacRoundedRectangleBorder value,
          $Res Function(StacRoundedRectangleBorder) then) =
      _$StacRoundedRectangleBorderCopyWithImpl<$Res,
          StacRoundedRectangleBorder>;
  @useResult
  $Res call({StacBorderSide? side, StacBorderRadius? borderRadius});

  $StacBorderSideCopyWith<$Res>? get side;
  $StacBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class _$StacRoundedRectangleBorderCopyWithImpl<$Res,
        $Val extends StacRoundedRectangleBorder>
    implements $StacRoundedRectangleBorderCopyWith<$Res> {
  _$StacRoundedRectangleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_value.copyWith(
      side: freezed == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
    ) as $Val);
  }

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res>? get side {
    if (_value.side == null) {
      return null;
    }

    return $StacBorderSideCopyWith<$Res>(_value.side!, (value) {
      return _then(_value.copyWith(side: value) as $Val);
    });
  }

  /// Create a copy of StacRoundedRectangleBorder
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
}

/// @nodoc
abstract class _$$StacRoundedRectangleBorderImplCopyWith<$Res>
    implements $StacRoundedRectangleBorderCopyWith<$Res> {
  factory _$$StacRoundedRectangleBorderImplCopyWith(
          _$StacRoundedRectangleBorderImpl value,
          $Res Function(_$StacRoundedRectangleBorderImpl) then) =
      __$$StacRoundedRectangleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StacBorderSide? side, StacBorderRadius? borderRadius});

  @override
  $StacBorderSideCopyWith<$Res>? get side;
  @override
  $StacBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class __$$StacRoundedRectangleBorderImplCopyWithImpl<$Res>
    extends _$StacRoundedRectangleBorderCopyWithImpl<$Res,
        _$StacRoundedRectangleBorderImpl>
    implements _$$StacRoundedRectangleBorderImplCopyWith<$Res> {
  __$$StacRoundedRectangleBorderImplCopyWithImpl(
      _$StacRoundedRectangleBorderImpl _value,
      $Res Function(_$StacRoundedRectangleBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_$StacRoundedRectangleBorderImpl(
      side: freezed == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacRoundedRectangleBorderImpl implements _StacRoundedRectangleBorder {
  const _$StacRoundedRectangleBorderImpl({this.side, this.borderRadius});

  factory _$StacRoundedRectangleBorderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StacRoundedRectangleBorderImplFromJson(json);

  @override
  final StacBorderSide? side;
  @override
  final StacBorderRadius? borderRadius;

  @override
  String toString() {
    return 'StacRoundedRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacRoundedRectangleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacRoundedRectangleBorderImplCopyWith<_$StacRoundedRectangleBorderImpl>
      get copyWith => __$$StacRoundedRectangleBorderImplCopyWithImpl<
          _$StacRoundedRectangleBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacRoundedRectangleBorderImplToJson(
      this,
    );
  }
}

abstract class _StacRoundedRectangleBorder
    implements StacRoundedRectangleBorder {
  const factory _StacRoundedRectangleBorder(
      {final StacBorderSide? side,
      final StacBorderRadius? borderRadius}) = _$StacRoundedRectangleBorderImpl;

  factory _StacRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =
      _$StacRoundedRectangleBorderImpl.fromJson;

  @override
  StacBorderSide? get side;
  @override
  StacBorderRadius? get borderRadius;

  /// Create a copy of StacRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacRoundedRectangleBorderImplCopyWith<_$StacRoundedRectangleBorderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
