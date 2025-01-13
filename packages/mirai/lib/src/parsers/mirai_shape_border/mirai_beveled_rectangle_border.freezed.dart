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

MiralBeveledRectangleBorder _$MiralBeveledRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _MiralBeveledRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$MiralBeveledRectangleBorder {
  MiraiBorderSide get side => throw _privateConstructorUsedError;
  MiraiBorderRadius get borderRadius => throw _privateConstructorUsedError;

  /// Serializes this MiralBeveledRectangleBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiralBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiralBeveledRectangleBorderCopyWith<MiralBeveledRectangleBorder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiralBeveledRectangleBorderCopyWith<$Res> {
  factory $MiralBeveledRectangleBorderCopyWith(
          MiralBeveledRectangleBorder value,
          $Res Function(MiralBeveledRectangleBorder) then) =
      _$MiralBeveledRectangleBorderCopyWithImpl<$Res,
          MiralBeveledRectangleBorder>;
  @useResult
  $Res call({MiraiBorderSide side, MiraiBorderRadius borderRadius});

  $MiraiBorderSideCopyWith<$Res> get side;
  $MiraiBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class _$MiralBeveledRectangleBorderCopyWithImpl<$Res,
        $Val extends MiralBeveledRectangleBorder>
    implements $MiralBeveledRectangleBorderCopyWith<$Res> {
  _$MiralBeveledRectangleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiralBeveledRectangleBorder
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

  /// Create a copy of MiralBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiBorderSideCopyWith<$Res> get side {
    return $MiraiBorderSideCopyWith<$Res>(_value.side, (value) {
      return _then(_value.copyWith(side: value) as $Val);
    });
  }

  /// Create a copy of MiralBeveledRectangleBorder
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
abstract class _$$MiralBeveledRectangleBorderImplCopyWith<$Res>
    implements $MiralBeveledRectangleBorderCopyWith<$Res> {
  factory _$$MiralBeveledRectangleBorderImplCopyWith(
          _$MiralBeveledRectangleBorderImpl value,
          $Res Function(_$MiralBeveledRectangleBorderImpl) then) =
      __$$MiralBeveledRectangleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MiraiBorderSide side, MiraiBorderRadius borderRadius});

  @override
  $MiraiBorderSideCopyWith<$Res> get side;
  @override
  $MiraiBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class __$$MiralBeveledRectangleBorderImplCopyWithImpl<$Res>
    extends _$MiralBeveledRectangleBorderCopyWithImpl<$Res,
        _$MiralBeveledRectangleBorderImpl>
    implements _$$MiralBeveledRectangleBorderImplCopyWith<$Res> {
  __$$MiralBeveledRectangleBorderImplCopyWithImpl(
      _$MiralBeveledRectangleBorderImpl _value,
      $Res Function(_$MiralBeveledRectangleBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiralBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? borderRadius = null,
  }) {
    return _then(_$MiralBeveledRectangleBorderImpl(
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
class _$MiralBeveledRectangleBorderImpl
    implements _MiralBeveledRectangleBorder {
  const _$MiralBeveledRectangleBorderImpl(
      {this.side = const MiraiBorderSide.none(),
      this.borderRadius = const MiraiBorderRadius()});

  factory _$MiralBeveledRectangleBorderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MiralBeveledRectangleBorderImplFromJson(json);

  @override
  @JsonKey()
  final MiraiBorderSide side;
  @override
  @JsonKey()
  final MiraiBorderRadius borderRadius;

  @override
  String toString() {
    return 'MiralBeveledRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiralBeveledRectangleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  /// Create a copy of MiralBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiralBeveledRectangleBorderImplCopyWith<_$MiralBeveledRectangleBorderImpl>
      get copyWith => __$$MiralBeveledRectangleBorderImplCopyWithImpl<
          _$MiralBeveledRectangleBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiralBeveledRectangleBorderImplToJson(
      this,
    );
  }
}

abstract class _MiralBeveledRectangleBorder
    implements MiralBeveledRectangleBorder {
  const factory _MiralBeveledRectangleBorder(
          {final MiraiBorderSide side, final MiraiBorderRadius borderRadius}) =
      _$MiralBeveledRectangleBorderImpl;

  factory _MiralBeveledRectangleBorder.fromJson(Map<String, dynamic> json) =
      _$MiralBeveledRectangleBorderImpl.fromJson;

  @override
  MiraiBorderSide get side;
  @override
  MiraiBorderRadius get borderRadius;

  /// Create a copy of MiralBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiralBeveledRectangleBorderImplCopyWith<_$MiralBeveledRectangleBorderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
