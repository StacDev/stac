// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_circle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiCircleBorder _$MiraiCircleBorderFromJson(Map<String, dynamic> json) {
  return _MiraiCircleBorder.fromJson(json);
}

/// @nodoc
mixin _$MiraiCircleBorder {
  MiraiBorderSide get side => throw _privateConstructorUsedError;
  double get eccentricity => throw _privateConstructorUsedError;

  /// Serializes this MiraiCircleBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiCircleBorderCopyWith<MiraiCircleBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiCircleBorderCopyWith<$Res> {
  factory $MiraiCircleBorderCopyWith(
          MiraiCircleBorder value, $Res Function(MiraiCircleBorder) then) =
      _$MiraiCircleBorderCopyWithImpl<$Res, MiraiCircleBorder>;
  @useResult
  $Res call({MiraiBorderSide side, double eccentricity});

  $MiraiBorderSideCopyWith<$Res> get side;
}

/// @nodoc
class _$MiraiCircleBorderCopyWithImpl<$Res, $Val extends MiraiCircleBorder>
    implements $MiraiCircleBorderCopyWith<$Res> {
  _$MiraiCircleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiCircleBorder
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
              as MiraiBorderSide,
      eccentricity: null == eccentricity
          ? _value.eccentricity
          : eccentricity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of MiraiCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res> get side {
    return $MiraiBorderSideCopyWith<$Res>(_value.side, (value) {
      return _then(_value.copyWith(side: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiCircleBorderImplCopyWith<$Res>
    implements $MiraiCircleBorderCopyWith<$Res> {
  factory _$$MiraiCircleBorderImplCopyWith(_$MiraiCircleBorderImpl value,
          $Res Function(_$MiraiCircleBorderImpl) then) =
      __$$MiraiCircleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MiraiBorderSide side, double eccentricity});

  @override
  $MiraiBorderSideCopyWith<$Res> get side;
}

/// @nodoc
class __$$MiraiCircleBorderImplCopyWithImpl<$Res>
    extends _$MiraiCircleBorderCopyWithImpl<$Res, _$MiraiCircleBorderImpl>
    implements _$$MiraiCircleBorderImplCopyWith<$Res> {
  __$$MiraiCircleBorderImplCopyWithImpl(_$MiraiCircleBorderImpl _value,
      $Res Function(_$MiraiCircleBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? eccentricity = null,
  }) {
    return _then(_$MiraiCircleBorderImpl(
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide,
      eccentricity: null == eccentricity
          ? _value.eccentricity
          : eccentricity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiCircleBorderImpl implements _MiraiCircleBorder {
  const _$MiraiCircleBorderImpl(
      {this.side = const MiraiBorderSide.none(), this.eccentricity = 0.0});

  factory _$MiraiCircleBorderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiCircleBorderImplFromJson(json);

  @override
  @JsonKey()
  final MiraiBorderSide side;
  @override
  @JsonKey()
  final double eccentricity;

  @override
  String toString() {
    return 'MiraiCircleBorder(side: $side, eccentricity: $eccentricity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiCircleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.eccentricity, eccentricity) ||
                other.eccentricity == eccentricity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, eccentricity);

  /// Create a copy of MiraiCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiCircleBorderImplCopyWith<_$MiraiCircleBorderImpl> get copyWith =>
      __$$MiraiCircleBorderImplCopyWithImpl<_$MiraiCircleBorderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiCircleBorderImplToJson(
      this,
    );
  }
}

abstract class _MiraiCircleBorder implements MiraiCircleBorder {
  const factory _MiraiCircleBorder(
      {final MiraiBorderSide side,
      final double eccentricity}) = _$MiraiCircleBorderImpl;

  factory _MiraiCircleBorder.fromJson(Map<String, dynamic> json) =
      _$MiraiCircleBorderImpl.fromJson;

  @override
  MiraiBorderSide get side;
  @override
  double get eccentricity;

  /// Create a copy of MiraiCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiCircleBorderImplCopyWith<_$MiraiCircleBorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
