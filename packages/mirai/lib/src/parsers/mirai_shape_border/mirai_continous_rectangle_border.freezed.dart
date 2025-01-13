// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_continous_rectangle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiralContinousRectangleBorder _$MiralContinousRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _MiralContinousRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$MiralContinousRectangleBorder {
  MiraiBorderSide get side => throw _privateConstructorUsedError;
  MiraiBorderRadius get borderRadius => throw _privateConstructorUsedError;

  /// Serializes this MiralContinousRectangleBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiralContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiralContinousRectangleBorderCopyWith<MiralContinousRectangleBorder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiralContinousRectangleBorderCopyWith<$Res> {
  factory $MiralContinousRectangleBorderCopyWith(
          MiralContinousRectangleBorder value,
          $Res Function(MiralContinousRectangleBorder) then) =
      _$MiralContinousRectangleBorderCopyWithImpl<$Res,
          MiralContinousRectangleBorder>;
  @useResult
  $Res call({MiraiBorderSide side, MiraiBorderRadius borderRadius});

  $MiraiBorderSideCopyWith<$Res> get side;
  $MiraiBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class _$MiralContinousRectangleBorderCopyWithImpl<$Res,
        $Val extends MiralContinousRectangleBorder>
    implements $MiralContinousRectangleBorderCopyWith<$Res> {
  _$MiralContinousRectangleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiralContinousRectangleBorder
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

  /// Create a copy of MiralContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res> get side {
    return $MiraiBorderSideCopyWith<$Res>(_value.side, (value) {
      return _then(_value.copyWith(side: value) as $Val);
    });
  }

  /// Create a copy of MiralContinousRectangleBorder
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
abstract class _$$MiralContinousRectangleBorderImplCopyWith<$Res>
    implements $MiralContinousRectangleBorderCopyWith<$Res> {
  factory _$$MiralContinousRectangleBorderImplCopyWith(
          _$MiralContinousRectangleBorderImpl value,
          $Res Function(_$MiralContinousRectangleBorderImpl) then) =
      __$$MiralContinousRectangleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MiraiBorderSide side, MiraiBorderRadius borderRadius});

  @override
  $MiraiBorderSideCopyWith<$Res> get side;
  @override
  $MiraiBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class __$$MiralContinousRectangleBorderImplCopyWithImpl<$Res>
    extends _$MiralContinousRectangleBorderCopyWithImpl<$Res,
        _$MiralContinousRectangleBorderImpl>
    implements _$$MiralContinousRectangleBorderImplCopyWith<$Res> {
  __$$MiralContinousRectangleBorderImplCopyWithImpl(
      _$MiralContinousRectangleBorderImpl _value,
      $Res Function(_$MiralContinousRectangleBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiralContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? borderRadius = null,
  }) {
    return _then(_$MiralContinousRectangleBorderImpl(
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
class _$MiralContinousRectangleBorderImpl
    implements _MiralContinousRectangleBorder {
  const _$MiralContinousRectangleBorderImpl(
      {this.side = const MiraiBorderSide.none(),
      this.borderRadius = const MiraiBorderRadius()});

  factory _$MiralContinousRectangleBorderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MiralContinousRectangleBorderImplFromJson(json);

  @override
  @JsonKey()
  final MiraiBorderSide side;
  @override
  @JsonKey()
  final MiraiBorderRadius borderRadius;

  @override
  String toString() {
    return 'MiralContinousRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiralContinousRectangleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  /// Create a copy of MiralContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiralContinousRectangleBorderImplCopyWith<
          _$MiralContinousRectangleBorderImpl>
      get copyWith => __$$MiralContinousRectangleBorderImplCopyWithImpl<
          _$MiralContinousRectangleBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiralContinousRectangleBorderImplToJson(
      this,
    );
  }
}

abstract class _MiralContinousRectangleBorder
    implements MiralContinousRectangleBorder {
  const factory _MiralContinousRectangleBorder(
          {final MiraiBorderSide side, final MiraiBorderRadius borderRadius}) =
      _$MiralContinousRectangleBorderImpl;

  factory _MiralContinousRectangleBorder.fromJson(Map<String, dynamic> json) =
      _$MiralContinousRectangleBorderImpl.fromJson;

  @override
  MiraiBorderSide get side;
  @override
  MiraiBorderRadius get borderRadius;

  /// Create a copy of MiralContinousRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiralContinousRectangleBorderImplCopyWith<
          _$MiralContinousRectangleBorderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
