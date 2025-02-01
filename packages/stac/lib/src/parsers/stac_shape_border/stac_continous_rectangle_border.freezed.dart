// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_continous_rectangle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacContinousRectangleBorder _$StacContinousRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _StacContinousRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$StacContinousRectangleBorder {
  StacBorderSide get side => throw _privateConstructorUsedError;
  StacBorderRadius get borderRadius => throw _privateConstructorUsedError;

  /// Serializes this StacContinousRectangleBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacContinousRectangleBorderCopyWith<StacContinousRectangleBorder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacContinousRectangleBorderCopyWith<$Res> {
  factory $StacContinousRectangleBorderCopyWith(
          StacContinousRectangleBorder value,
          $Res Function(StacContinousRectangleBorder) then) =
      _$StacContinousRectangleBorderCopyWithImpl<$Res,
          StacContinousRectangleBorder>;
  @useResult
  $Res call({StacBorderSide side, StacBorderRadius borderRadius});

  $StacBorderSideCopyWith<$Res> get side;
  $StacBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class _$StacContinousRectangleBorderCopyWithImpl<$Res,
        $Val extends StacContinousRectangleBorder>
    implements $StacContinousRectangleBorderCopyWith<$Res> {
  _$StacContinousRectangleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? borderRadius = null,
  }) {
    return _then(_value.copyWith(
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius,
    ) as $Val);
  }

  /// Create a copy of StacContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res> get side {
    return $StacBorderSideCopyWith<$Res>(_value.side, (value) {
      return _then(_value.copyWith(side: value) as $Val);
    });
  }

  /// Create a copy of StacContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderRadiusCopyWith<$Res> get borderRadius {
    return $StacBorderRadiusCopyWith<$Res>(_value.borderRadius, (value) {
      return _then(_value.copyWith(borderRadius: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacContinousRectangleBorderImplCopyWith<$Res>
    implements $StacContinousRectangleBorderCopyWith<$Res> {
  factory _$$StacContinousRectangleBorderImplCopyWith(
          _$StacContinousRectangleBorderImpl value,
          $Res Function(_$StacContinousRectangleBorderImpl) then) =
      __$$StacContinousRectangleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StacBorderSide side, StacBorderRadius borderRadius});

  @override
  $StacBorderSideCopyWith<$Res> get side;
  @override
  $StacBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class __$$StacContinousRectangleBorderImplCopyWithImpl<$Res>
    extends _$StacContinousRectangleBorderCopyWithImpl<$Res,
        _$StacContinousRectangleBorderImpl>
    implements _$$StacContinousRectangleBorderImplCopyWith<$Res> {
  __$$StacContinousRectangleBorderImplCopyWithImpl(
      _$StacContinousRectangleBorderImpl _value,
      $Res Function(_$StacContinousRectangleBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? borderRadius = null,
  }) {
    return _then(_$StacContinousRectangleBorderImpl(
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacContinousRectangleBorderImpl
    implements _StacContinousRectangleBorder {
  const _$StacContinousRectangleBorderImpl(
      {this.side = const StacBorderSide.none(),
      this.borderRadius = const StacBorderRadius()});

  factory _$StacContinousRectangleBorderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StacContinousRectangleBorderImplFromJson(json);

  @override
  @JsonKey()
  final StacBorderSide side;
  @override
  @JsonKey()
  final StacBorderRadius borderRadius;

  @override
  String toString() {
    return 'StacContinousRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacContinousRectangleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  /// Create a copy of StacContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacContinousRectangleBorderImplCopyWith<
          _$StacContinousRectangleBorderImpl>
      get copyWith => __$$StacContinousRectangleBorderImplCopyWithImpl<
          _$StacContinousRectangleBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacContinousRectangleBorderImplToJson(
      this,
    );
  }
}

abstract class _StacContinousRectangleBorder
    implements StacContinousRectangleBorder {
  const factory _StacContinousRectangleBorder(
          {final StacBorderSide side, final StacBorderRadius borderRadius}) =
      _$StacContinousRectangleBorderImpl;

  factory _StacContinousRectangleBorder.fromJson(Map<String, dynamic> json) =
      _$StacContinousRectangleBorderImpl.fromJson;

  @override
  StacBorderSide get side;
  @override
  StacBorderRadius get borderRadius;

  /// Create a copy of StacContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacContinousRectangleBorderImplCopyWith<
          _$StacContinousRectangleBorderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
