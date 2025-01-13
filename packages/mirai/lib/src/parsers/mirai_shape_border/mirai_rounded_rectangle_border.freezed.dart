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

MiralRoundedRactangleBorder _$MiralRoundedRactangleBorderFromJson(
    Map<String, dynamic> json) {
  return _MiralRoundedRactangleBorder.fromJson(json);
}

/// @nodoc
mixin _$MiralRoundedRactangleBorder {
  MiraiBorderSide get side => throw _privateConstructorUsedError;
  MiraiBorderRadius get borderRadius => throw _privateConstructorUsedError;

  /// Serializes this MiralRoundedRactangleBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiralRoundedRactangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiralRoundedRactangleBorderCopyWith<MiralRoundedRactangleBorder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiralRoundedRactangleBorderCopyWith<$Res> {
  factory $MiralRoundedRactangleBorderCopyWith(
          MiralRoundedRactangleBorder value,
          $Res Function(MiralRoundedRactangleBorder) then) =
      _$MiralRoundedRactangleBorderCopyWithImpl<$Res,
          MiralRoundedRactangleBorder>;
  @useResult
  $Res call({MiraiBorderSide side, MiraiBorderRadius borderRadius});

  $MiraiBorderSideCopyWith<$Res> get side;
  $MiraiBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class _$MiralRoundedRactangleBorderCopyWithImpl<$Res,
        $Val extends MiralRoundedRactangleBorder>
    implements $MiralRoundedRactangleBorderCopyWith<$Res> {
  _$MiralRoundedRactangleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiralRoundedRactangleBorder
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
              as MiraiBorderSide,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as MiraiBorderRadius,
    ) as $Val);
  }

  /// Create a copy of MiralRoundedRactangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res> get side {
    return $MiraiBorderSideCopyWith<$Res>(_value.side, (value) {
      return _then(_value.copyWith(side: value) as $Val);
    });
  }

  /// Create a copy of MiralRoundedRactangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderRadiusCopyWith<$Res> get borderRadius {
    return $MiraiBorderRadiusCopyWith<$Res>(_value.borderRadius, (value) {
      return _then(_value.copyWith(borderRadius: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiralRoundedRactangleBorderImplCopyWith<$Res>
    implements $MiralRoundedRactangleBorderCopyWith<$Res> {
  factory _$$MiralRoundedRactangleBorderImplCopyWith(
          _$MiralRoundedRactangleBorderImpl value,
          $Res Function(_$MiralRoundedRactangleBorderImpl) then) =
      __$$MiralRoundedRactangleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MiraiBorderSide side, MiraiBorderRadius borderRadius});

  @override
  $MiraiBorderSideCopyWith<$Res> get side;
  @override
  $MiraiBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class __$$MiralRoundedRactangleBorderImplCopyWithImpl<$Res>
    extends _$MiralRoundedRactangleBorderCopyWithImpl<$Res,
        _$MiralRoundedRactangleBorderImpl>
    implements _$$MiralRoundedRactangleBorderImplCopyWith<$Res> {
  __$$MiralRoundedRactangleBorderImplCopyWithImpl(
      _$MiralRoundedRactangleBorderImpl _value,
      $Res Function(_$MiralRoundedRactangleBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiralRoundedRactangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? borderRadius = null,
  }) {
    return _then(_$MiralRoundedRactangleBorderImpl(
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as MiraiBorderSide,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as MiraiBorderRadius,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiralRoundedRactangleBorderImpl
    implements _MiralRoundedRactangleBorder {
  const _$MiralRoundedRactangleBorderImpl(
      {this.side = const MiraiBorderSide.none(),
      this.borderRadius = const MiraiBorderRadius()});

  factory _$MiralRoundedRactangleBorderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MiralRoundedRactangleBorderImplFromJson(json);

  @override
  @JsonKey()
  final MiraiBorderSide side;
  @override
  @JsonKey()
  final MiraiBorderRadius borderRadius;

  @override
  String toString() {
    return 'MiralRoundedRactangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiralRoundedRactangleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  /// Create a copy of MiralRoundedRactangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiralRoundedRactangleBorderImplCopyWith<_$MiralRoundedRactangleBorderImpl>
      get copyWith => __$$MiralRoundedRactangleBorderImplCopyWithImpl<
          _$MiralRoundedRactangleBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiralRoundedRactangleBorderImplToJson(
      this,
    );
  }
}

abstract class _MiralRoundedRactangleBorder
    implements MiralRoundedRactangleBorder {
  const factory _MiralRoundedRactangleBorder(
          {final MiraiBorderSide side, final MiraiBorderRadius borderRadius}) =
      _$MiralRoundedRactangleBorderImpl;

  factory _MiralRoundedRactangleBorder.fromJson(Map<String, dynamic> json) =
      _$MiralRoundedRactangleBorderImpl.fromJson;

  @override
  MiraiBorderSide get side;
  @override
  MiraiBorderRadius get borderRadius;

  /// Create a copy of MiralRoundedRactangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiralRoundedRactangleBorderImplCopyWith<_$MiralRoundedRactangleBorderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
