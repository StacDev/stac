// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_border_radius.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiBorderRadius _$MiraiBorderRadiusFromJson(Map<String, dynamic> json) {
  return _MiraiBorder.fromJson(json);
}

/// @nodoc
mixin _$MiraiBorderRadius {
  double get topLeft => throw _privateConstructorUsedError;
  double get topRight => throw _privateConstructorUsedError;
  double get bottomLeft => throw _privateConstructorUsedError;
  double get bottomRight => throw _privateConstructorUsedError;

  /// Serializes this MiraiBorderRadius to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiBorderRadius
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiBorderRadiusCopyWith<MiraiBorderRadius> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiBorderRadiusCopyWith<$Res> {
  factory $MiraiBorderRadiusCopyWith(
          MiraiBorderRadius value, $Res Function(MiraiBorderRadius) then) =
      _$MiraiBorderRadiusCopyWithImpl<$Res, MiraiBorderRadius>;
  @useResult
  $Res call(
      {double topLeft, double topRight, double bottomLeft, double bottomRight});
}

/// @nodoc
class _$MiraiBorderRadiusCopyWithImpl<$Res, $Val extends MiraiBorderRadius>
    implements $MiraiBorderRadiusCopyWith<$Res> {
  _$MiraiBorderRadiusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiBorderRadius
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topLeft = null,
    Object? topRight = null,
    Object? bottomLeft = null,
    Object? bottomRight = null,
  }) {
    return _then(_value.copyWith(
      topLeft: null == topLeft
          ? _value.topLeft
          : topLeft // ignore: cast_nullable_to_non_nullable
              as double,
      topRight: null == topRight
          ? _value.topRight
          : topRight // ignore: cast_nullable_to_non_nullable
              as double,
      bottomLeft: null == bottomLeft
          ? _value.bottomLeft
          : bottomLeft // ignore: cast_nullable_to_non_nullable
              as double,
      bottomRight: null == bottomRight
          ? _value.bottomRight
          : bottomRight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiBorderImplCopyWith<$Res>
    implements $MiraiBorderRadiusCopyWith<$Res> {
  factory _$$MiraiBorderImplCopyWith(
          _$MiraiBorderImpl value, $Res Function(_$MiraiBorderImpl) then) =
      __$$MiraiBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double topLeft, double topRight, double bottomLeft, double bottomRight});
}

/// @nodoc
class __$$MiraiBorderImplCopyWithImpl<$Res>
    extends _$MiraiBorderRadiusCopyWithImpl<$Res, _$MiraiBorderImpl>
    implements _$$MiraiBorderImplCopyWith<$Res> {
  __$$MiraiBorderImplCopyWithImpl(
      _$MiraiBorderImpl _value, $Res Function(_$MiraiBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiBorderRadius
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topLeft = null,
    Object? topRight = null,
    Object? bottomLeft = null,
    Object? bottomRight = null,
  }) {
    return _then(_$MiraiBorderImpl(
      topLeft: null == topLeft
          ? _value.topLeft
          : topLeft // ignore: cast_nullable_to_non_nullable
              as double,
      topRight: null == topRight
          ? _value.topRight
          : topRight // ignore: cast_nullable_to_non_nullable
              as double,
      bottomLeft: null == bottomLeft
          ? _value.bottomLeft
          : bottomLeft // ignore: cast_nullable_to_non_nullable
              as double,
      bottomRight: null == bottomRight
          ? _value.bottomRight
          : bottomRight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiBorderImpl implements _MiraiBorder {
  const _$MiraiBorderImpl(
      {this.topLeft = 0.0,
      this.topRight = 0.0,
      this.bottomLeft = 0.0,
      this.bottomRight = 0.0});

  factory _$MiraiBorderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiBorderImplFromJson(json);

  @override
  @JsonKey()
  final double topLeft;
  @override
  @JsonKey()
  final double topRight;
  @override
  @JsonKey()
  final double bottomLeft;
  @override
  @JsonKey()
  final double bottomRight;

  @override
  String toString() {
    return 'MiraiBorderRadius(topLeft: $topLeft, topRight: $topRight, bottomLeft: $bottomLeft, bottomRight: $bottomRight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiBorderImpl &&
            (identical(other.topLeft, topLeft) || other.topLeft == topLeft) &&
            (identical(other.topRight, topRight) ||
                other.topRight == topRight) &&
            (identical(other.bottomLeft, bottomLeft) ||
                other.bottomLeft == bottomLeft) &&
            (identical(other.bottomRight, bottomRight) ||
                other.bottomRight == bottomRight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, topLeft, topRight, bottomLeft, bottomRight);

  /// Create a copy of MiraiBorderRadius
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiBorderImplCopyWith<_$MiraiBorderImpl> get copyWith =>
      __$$MiraiBorderImplCopyWithImpl<_$MiraiBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiBorderImplToJson(
      this,
    );
  }
}

abstract class _MiraiBorder implements MiraiBorderRadius {
  const factory _MiraiBorder(
      {final double topLeft,
      final double topRight,
      final double bottomLeft,
      final double bottomRight}) = _$MiraiBorderImpl;

  factory _MiraiBorder.fromJson(Map<String, dynamic> json) =
      _$MiraiBorderImpl.fromJson;

  @override
  double get topLeft;
  @override
  double get topRight;
  @override
  double get bottomLeft;
  @override
  double get bottomRight;

  /// Create a copy of MiraiBorderRadius
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiBorderImplCopyWith<_$MiraiBorderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
