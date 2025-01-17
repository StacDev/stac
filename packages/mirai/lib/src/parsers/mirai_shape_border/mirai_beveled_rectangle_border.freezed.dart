// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_beveled_rectangle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiBeveledRectangleBorder _$MiraiBeveledRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _MiraiBeveledRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$MiraiBeveledRectangleBorder {
  MiraiBorderSide get side => throw _privateConstructorUsedError;
  MiraiBorderRadius get borderRadius => throw _privateConstructorUsedError;

  /// Serializes this MiraiBeveledRectangleBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiBeveledRectangleBorderCopyWith<MiraiBeveledRectangleBorder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiBeveledRectangleBorderCopyWith<$Res> {
  factory $MiraiBeveledRectangleBorderCopyWith(
          MiraiBeveledRectangleBorder value,
          $Res Function(MiraiBeveledRectangleBorder) then) =
      _$MiraiBeveledRectangleBorderCopyWithImpl<$Res,
          MiraiBeveledRectangleBorder>;
  @useResult
  $Res call({MiraiBorderSide side, MiraiBorderRadius borderRadius});

  $MiraiBorderSideCopyWith<$Res> get side;
  $MiraiBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class _$MiraiBeveledRectangleBorderCopyWithImpl<$Res,
        $Val extends MiraiBeveledRectangleBorder>
    implements $MiraiBeveledRectangleBorderCopyWith<$Res> {
  _$MiraiBeveledRectangleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiBeveledRectangleBorder
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

  /// Create a copy of MiraiBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res> get side {
    return $MiraiBorderSideCopyWith<$Res>(_value.side, (value) {
      return _then(_value.copyWith(side: value) as $Val);
    });
  }

  /// Create a copy of MiraiBeveledRectangleBorder
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
abstract class _$$MiraiBeveledRectangleBorderImplCopyWith<$Res>
    implements $MiraiBeveledRectangleBorderCopyWith<$Res> {
  factory _$$MiraiBeveledRectangleBorderImplCopyWith(
          _$MiraiBeveledRectangleBorderImpl value,
          $Res Function(_$MiraiBeveledRectangleBorderImpl) then) =
      __$$MiraiBeveledRectangleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MiraiBorderSide side, MiraiBorderRadius borderRadius});

  @override
  $MiraiBorderSideCopyWith<$Res> get side;
  @override
  $MiraiBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class __$$MiraiBeveledRectangleBorderImplCopyWithImpl<$Res>
    extends _$MiraiBeveledRectangleBorderCopyWithImpl<$Res,
        _$MiraiBeveledRectangleBorderImpl>
    implements _$$MiraiBeveledRectangleBorderImplCopyWith<$Res> {
  __$$MiraiBeveledRectangleBorderImplCopyWithImpl(
      _$MiraiBeveledRectangleBorderImpl _value,
      $Res Function(_$MiraiBeveledRectangleBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? borderRadius = null,
  }) {
    return _then(_$MiraiBeveledRectangleBorderImpl(
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
class _$MiraiBeveledRectangleBorderImpl
    implements _MiraiBeveledRectangleBorder {
  const _$MiraiBeveledRectangleBorderImpl(
      {this.side = const MiraiBorderSide.none(),
      this.borderRadius = const MiraiBorderRadius()});

  factory _$MiraiBeveledRectangleBorderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MiraiBeveledRectangleBorderImplFromJson(json);

  @override
  @JsonKey()
  final MiraiBorderSide side;
  @override
  @JsonKey()
  final MiraiBorderRadius borderRadius;

  @override
  String toString() {
    return 'MiraiBeveledRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiBeveledRectangleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  /// Create a copy of MiraiBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiBeveledRectangleBorderImplCopyWith<_$MiraiBeveledRectangleBorderImpl>
      get copyWith => __$$MiraiBeveledRectangleBorderImplCopyWithImpl<
          _$MiraiBeveledRectangleBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiBeveledRectangleBorderImplToJson(
      this,
    );
  }
}

abstract class _MiraiBeveledRectangleBorder
    implements MiraiBeveledRectangleBorder {
  const factory _MiraiBeveledRectangleBorder(
          {final MiraiBorderSide side, final MiraiBorderRadius borderRadius}) =
      _$MiraiBeveledRectangleBorderImpl;

  factory _MiraiBeveledRectangleBorder.fromJson(Map<String, dynamic> json) =
      _$MiraiBeveledRectangleBorderImpl.fromJson;

  @override
  MiraiBorderSide get side;
  @override
  MiraiBorderRadius get borderRadius;

  /// Create a copy of MiraiBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiBeveledRectangleBorderImplCopyWith<_$MiraiBeveledRectangleBorderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
