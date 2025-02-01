// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_circle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacCircleBorder _$StacCircleBorderFromJson(Map<String, dynamic> json) {
  return _StacCircleBorder.fromJson(json);
}

/// @nodoc
mixin _$StacCircleBorder {
  StacBorderSide get side => throw _privateConstructorUsedError;
  double get eccentricity => throw _privateConstructorUsedError;

  /// Serializes this StacCircleBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacCircleBorderCopyWith<StacCircleBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacCircleBorderCopyWith<$Res> {
  factory $StacCircleBorderCopyWith(
          StacCircleBorder value, $Res Function(StacCircleBorder) then) =
      _$StacCircleBorderCopyWithImpl<$Res, StacCircleBorder>;
  @useResult
  $Res call({StacBorderSide side, double eccentricity});

  $StacBorderSideCopyWith<$Res> get side;
}

/// @nodoc
class _$StacCircleBorderCopyWithImpl<$Res, $Val extends StacCircleBorder>
    implements $StacCircleBorderCopyWith<$Res> {
  _$StacCircleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? eccentricity = null,
  }) {
    return _then(_value.copyWith(
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide,
      eccentricity: null == eccentricity
          ? _value.eccentricity
          : eccentricity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res> get side {
    return $StacBorderSideCopyWith<$Res>(_value.side, (value) {
      return _then(_value.copyWith(side: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacCircleBorderImplCopyWith<$Res>
    implements $StacCircleBorderCopyWith<$Res> {
  factory _$$StacCircleBorderImplCopyWith(_$StacCircleBorderImpl value,
          $Res Function(_$StacCircleBorderImpl) then) =
      __$$StacCircleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StacBorderSide side, double eccentricity});

  @override
  $StacBorderSideCopyWith<$Res> get side;
}

/// @nodoc
class __$$StacCircleBorderImplCopyWithImpl<$Res>
    extends _$StacCircleBorderCopyWithImpl<$Res, _$StacCircleBorderImpl>
    implements _$$StacCircleBorderImplCopyWith<$Res> {
  __$$StacCircleBorderImplCopyWithImpl(_$StacCircleBorderImpl _value,
      $Res Function(_$StacCircleBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? eccentricity = null,
  }) {
    return _then(_$StacCircleBorderImpl(
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide,
      eccentricity: null == eccentricity
          ? _value.eccentricity
          : eccentricity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacCircleBorderImpl implements _StacCircleBorder {
  const _$StacCircleBorderImpl(
      {this.side = const StacBorderSide.none(), this.eccentricity = 0.0});

  factory _$StacCircleBorderImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacCircleBorderImplFromJson(json);

  @override
  @JsonKey()
  final StacBorderSide side;
  @override
  @JsonKey()
  final double eccentricity;

  @override
  String toString() {
    return 'StacCircleBorder(side: $side, eccentricity: $eccentricity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacCircleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.eccentricity, eccentricity) ||
                other.eccentricity == eccentricity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, eccentricity);

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacCircleBorderImplCopyWith<_$StacCircleBorderImpl> get copyWith =>
      __$$StacCircleBorderImplCopyWithImpl<_$StacCircleBorderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacCircleBorderImplToJson(
      this,
    );
  }
}

abstract class _StacCircleBorder implements StacCircleBorder {
  const factory _StacCircleBorder(
      {final StacBorderSide side,
      final double eccentricity}) = _$StacCircleBorderImpl;

  factory _StacCircleBorder.fromJson(Map<String, dynamic> json) =
      _$StacCircleBorderImpl.fromJson;

  @override
  StacBorderSide get side;
  @override
  double get eccentricity;

  /// Create a copy of StacCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacCircleBorderImplCopyWith<_$StacCircleBorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
