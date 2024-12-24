// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_rounded_rectangle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiRoundedRectangleBorder _$MiraiRoundedRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _MiraiRoundedRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$MiraiRoundedRectangleBorder {
  MiraiBorderSide? get side => throw _privateConstructorUsedError;
  MiraiBorderRadius? get borderRadius => throw _privateConstructorUsedError;

  /// Serializes this MiraiRoundedRectangleBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiRoundedRectangleBorderCopyWith<MiraiRoundedRectangleBorder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiRoundedRectangleBorderCopyWith<$Res> {
  factory $MiraiRoundedRectangleBorderCopyWith(
          MiraiRoundedRectangleBorder value,
          $Res Function(MiraiRoundedRectangleBorder) then) =
      _$MiraiRoundedRectangleBorderCopyWithImpl<$Res,
          MiraiRoundedRectangleBorder>;
  @useResult
  $Res call({MiraiBorderSide? side, MiraiBorderRadius? borderRadius});

  $MiraiBorderSideCopyWith<$Res>? get side;
  $MiraiBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class _$MiraiRoundedRectangleBorderCopyWithImpl<$Res,
        $Val extends MiraiRoundedRectangleBorder>
    implements $MiraiRoundedRectangleBorderCopyWith<$Res> {
  _$MiraiRoundedRectangleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiRoundedRectangleBorder
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
              as MiraiBorderSide?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as MiraiBorderRadius?,
    ) as $Val);
  }

  /// Create a copy of MiraiRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res>? get side {
    if (_value.side == null) {
      return null;
    }

    return $MiraiBorderSideCopyWith<$Res>(_value.side!, (value) {
      return _then(_value.copyWith(side: value) as $Val);
    });
  }

  /// Create a copy of MiraiRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderRadiusCopyWith<$Res>? get borderRadius {
    if (_value.borderRadius == null) {
      return null;
    }

    return $MiraiBorderRadiusCopyWith<$Res>(_value.borderRadius!, (value) {
      return _then(_value.copyWith(borderRadius: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiRoundedRectangleBorderImplCopyWith<$Res>
    implements $MiraiRoundedRectangleBorderCopyWith<$Res> {
  factory _$$MiraiRoundedRectangleBorderImplCopyWith(
          _$MiraiRoundedRectangleBorderImpl value,
          $Res Function(_$MiraiRoundedRectangleBorderImpl) then) =
      __$$MiraiRoundedRectangleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MiraiBorderSide? side, MiraiBorderRadius? borderRadius});

  @override
  $MiraiBorderSideCopyWith<$Res>? get side;
  @override
  $MiraiBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class __$$MiraiRoundedRectangleBorderImplCopyWithImpl<$Res>
    extends _$MiraiRoundedRectangleBorderCopyWithImpl<$Res,
        _$MiraiRoundedRectangleBorderImpl>
    implements _$$MiraiRoundedRectangleBorderImplCopyWith<$Res> {
  __$$MiraiRoundedRectangleBorderImplCopyWithImpl(
      _$MiraiRoundedRectangleBorderImpl _value,
      $Res Function(_$MiraiRoundedRectangleBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_$MiraiRoundedRectangleBorderImpl(
      side: freezed == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as MiraiBorderRadius?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiRoundedRectangleBorderImpl
    implements _MiraiRoundedRectangleBorder {
  const _$MiraiRoundedRectangleBorderImpl({this.side, this.borderRadius});

  factory _$MiraiRoundedRectangleBorderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MiraiRoundedRectangleBorderImplFromJson(json);

  @override
  final MiraiBorderSide? side;
  @override
  final MiraiBorderRadius? borderRadius;

  @override
  String toString() {
    return 'MiraiRoundedRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiRoundedRectangleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  /// Create a copy of MiraiRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiRoundedRectangleBorderImplCopyWith<_$MiraiRoundedRectangleBorderImpl>
      get copyWith => __$$MiraiRoundedRectangleBorderImplCopyWithImpl<
          _$MiraiRoundedRectangleBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiRoundedRectangleBorderImplToJson(
      this,
    );
  }
}

abstract class _MiraiRoundedRectangleBorder
    implements MiraiRoundedRectangleBorder {
  const factory _MiraiRoundedRectangleBorder(
          {final MiraiBorderSide? side,
          final MiraiBorderRadius? borderRadius}) =
      _$MiraiRoundedRectangleBorderImpl;

  factory _MiraiRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =
      _$MiraiRoundedRectangleBorderImpl.fromJson;

  @override
  MiraiBorderSide? get side;
  @override
  MiraiBorderRadius? get borderRadius;

  /// Create a copy of MiraiRoundedRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiRoundedRectangleBorderImplCopyWith<_$MiraiRoundedRectangleBorderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
