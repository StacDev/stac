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

MiralCircleBorder _$MiralCircleBorderFromJson(Map<String, dynamic> json) {
  return _MiralCircleBorder.fromJson(json);
}

/// @nodoc
mixin _$MiralCircleBorder {
  MiraiBorderSide get side => throw _privateConstructorUsedError;
  double get eccentricity => throw _privateConstructorUsedError;

  /// Serializes this MiralCircleBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiralCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiralCircleBorderCopyWith<MiralCircleBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiralCircleBorderCopyWith<$Res> {
  factory $MiralCircleBorderCopyWith(
          MiralCircleBorder value, $Res Function(MiralCircleBorder) then) =
      _$MiralCircleBorderCopyWithImpl<$Res, MiralCircleBorder>;
  @useResult
  $Res call({MiraiBorderSide side, double eccentricity});

  $MiraiBorderSideCopyWith<$Res> get side;
}

/// @nodoc
class _$MiralCircleBorderCopyWithImpl<$Res, $Val extends MiralCircleBorder>
    implements $MiralCircleBorderCopyWith<$Res> {
  _$MiralCircleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiralCircleBorder
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

  /// Create a copy of MiralCircleBorder
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
abstract class _$$MiralCircleBorderImplCopyWith<$Res>
    implements $MiralCircleBorderCopyWith<$Res> {
  factory _$$MiralCircleBorderImplCopyWith(_$MiralCircleBorderImpl value,
          $Res Function(_$MiralCircleBorderImpl) then) =
      __$$MiralCircleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MiraiBorderSide side, double eccentricity});

  @override
  $MiraiBorderSideCopyWith<$Res> get side;
}

/// @nodoc
class __$$MiralCircleBorderImplCopyWithImpl<$Res>
    extends _$MiralCircleBorderCopyWithImpl<$Res, _$MiralCircleBorderImpl>
    implements _$$MiralCircleBorderImplCopyWith<$Res> {
  __$$MiralCircleBorderImplCopyWithImpl(_$MiralCircleBorderImpl _value,
      $Res Function(_$MiralCircleBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiralCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? eccentricity = null,
  }) {
    return _then(_$MiralCircleBorderImpl(
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
class _$MiralCircleBorderImpl implements _MiralCircleBorder {
  const _$MiralCircleBorderImpl(
      {this.side = const MiraiBorderSide.none(), this.eccentricity = 0.0});

  factory _$MiralCircleBorderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiralCircleBorderImplFromJson(json);

  @override
  @JsonKey()
  final MiraiBorderSide side;
  @override
  @JsonKey()
  final double eccentricity;

  @override
  String toString() {
    return 'MiralCircleBorder(side: $side, eccentricity: $eccentricity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiralCircleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.eccentricity, eccentricity) ||
                other.eccentricity == eccentricity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, eccentricity);

  /// Create a copy of MiralCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiralCircleBorderImplCopyWith<_$MiralCircleBorderImpl> get copyWith =>
      __$$MiralCircleBorderImplCopyWithImpl<_$MiralCircleBorderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiralCircleBorderImplToJson(
      this,
    );
  }
}

abstract class _MiralCircleBorder implements MiralCircleBorder {
  const factory _MiralCircleBorder(
      {final MiraiBorderSide side,
      final double eccentricity}) = _$MiralCircleBorderImpl;

  factory _MiralCircleBorder.fromJson(Map<String, dynamic> json) =
      _$MiralCircleBorderImpl.fromJson;

  @override
  MiraiBorderSide get side;
  @override
  double get eccentricity;

  /// Create a copy of MiralCircleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiralCircleBorderImplCopyWith<_$MiralCircleBorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
