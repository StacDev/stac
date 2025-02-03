// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_beveled_rectangle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacBeveledRectangleBorder _$StacBeveledRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _StacBeveledRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$StacBeveledRectangleBorder {
  StacBorderSide get side => throw _privateConstructorUsedError;
  StacBorderRadius get borderRadius => throw _privateConstructorUsedError;

  /// Serializes this StacBeveledRectangleBorder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacBeveledRectangleBorderCopyWith<StacBeveledRectangleBorder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacBeveledRectangleBorderCopyWith<$Res> {
  factory $StacBeveledRectangleBorderCopyWith(StacBeveledRectangleBorder value,
          $Res Function(StacBeveledRectangleBorder) then) =
      _$StacBeveledRectangleBorderCopyWithImpl<$Res,
          StacBeveledRectangleBorder>;
  @useResult
  $Res call({StacBorderSide side, StacBorderRadius borderRadius});

  $StacBorderSideCopyWith<$Res> get side;
  $StacBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class _$StacBeveledRectangleBorderCopyWithImpl<$Res,
        $Val extends StacBeveledRectangleBorder>
    implements $StacBeveledRectangleBorderCopyWith<$Res> {
  _$StacBeveledRectangleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacBeveledRectangleBorder
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

  /// Create a copy of StacBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res> get side {
    return $StacBorderSideCopyWith<$Res>(_value.side, (value) {
      return _then(_value.copyWith(side: value) as $Val);
    });
  }

  /// Create a copy of StacBeveledRectangleBorder
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
abstract class _$$StacBeveledRectangleBorderImplCopyWith<$Res>
    implements $StacBeveledRectangleBorderCopyWith<$Res> {
  factory _$$StacBeveledRectangleBorderImplCopyWith(
          _$StacBeveledRectangleBorderImpl value,
          $Res Function(_$StacBeveledRectangleBorderImpl) then) =
      __$$StacBeveledRectangleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StacBorderSide side, StacBorderRadius borderRadius});

  @override
  $StacBorderSideCopyWith<$Res> get side;
  @override
  $StacBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class __$$StacBeveledRectangleBorderImplCopyWithImpl<$Res>
    extends _$StacBeveledRectangleBorderCopyWithImpl<$Res,
        _$StacBeveledRectangleBorderImpl>
    implements _$$StacBeveledRectangleBorderImplCopyWith<$Res> {
  __$$StacBeveledRectangleBorderImplCopyWithImpl(
      _$StacBeveledRectangleBorderImpl _value,
      $Res Function(_$StacBeveledRectangleBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
    Object? borderRadius = null,
  }) {
    return _then(_$StacBeveledRectangleBorderImpl(
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
class _$StacBeveledRectangleBorderImpl implements _StacBeveledRectangleBorder {
  const _$StacBeveledRectangleBorderImpl(
      {this.side = const StacBorderSide.none(),
      this.borderRadius = const StacBorderRadius()});

  factory _$StacBeveledRectangleBorderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StacBeveledRectangleBorderImplFromJson(json);

  @override
  @JsonKey()
  final StacBorderSide side;
  @override
  @JsonKey()
  final StacBorderRadius borderRadius;

  @override
  String toString() {
    return 'StacBeveledRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacBeveledRectangleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  /// Create a copy of StacBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacBeveledRectangleBorderImplCopyWith<_$StacBeveledRectangleBorderImpl>
      get copyWith => __$$StacBeveledRectangleBorderImplCopyWithImpl<
          _$StacBeveledRectangleBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacBeveledRectangleBorderImplToJson(
      this,
    );
  }
}

abstract class _StacBeveledRectangleBorder
    implements StacBeveledRectangleBorder {
  const factory _StacBeveledRectangleBorder(
      {final StacBorderSide side,
      final StacBorderRadius borderRadius}) = _$StacBeveledRectangleBorderImpl;

  factory _StacBeveledRectangleBorder.fromJson(Map<String, dynamic> json) =
      _$StacBeveledRectangleBorderImpl.fromJson;

  @override
  StacBorderSide get side;
  @override
  StacBorderRadius get borderRadius;

  /// Create a copy of StacBeveledRectangleBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacBeveledRectangleBorderImplCopyWith<_$StacBeveledRectangleBorderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
