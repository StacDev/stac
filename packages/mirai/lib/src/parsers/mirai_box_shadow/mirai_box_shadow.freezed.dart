// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_box_shadow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiBoxShadow _$MiraiBoxShadowFromJson(Map<String, dynamic> json) {
  return _MiraiBoxShadow.fromJson(json);
}

/// @nodoc
mixin _$MiraiBoxShadow {
  String? get color => throw _privateConstructorUsedError;
  double? get blurRadius => throw _privateConstructorUsedError;
  MiraiOffset get offset => throw _privateConstructorUsedError;
  double? get spreadRadius => throw _privateConstructorUsedError;
  BlurStyle? get blurStyle => throw _privateConstructorUsedError;

  /// Serializes this MiraiBoxShadow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiBoxShadowCopyWith<MiraiBoxShadow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiBoxShadowCopyWith<$Res> {
  factory $MiraiBoxShadowCopyWith(
          MiraiBoxShadow value, $Res Function(MiraiBoxShadow) then) =
      _$MiraiBoxShadowCopyWithImpl<$Res, MiraiBoxShadow>;
  @useResult
  $Res call(
      {String? color,
      double? blurRadius,
      MiraiOffset offset,
      double? spreadRadius,
      BlurStyle? blurStyle});

  $MiraiOffsetCopyWith<$Res> get offset;
}

/// @nodoc
class _$MiraiBoxShadowCopyWithImpl<$Res, $Val extends MiraiBoxShadow>
    implements $MiraiBoxShadowCopyWith<$Res> {
  _$MiraiBoxShadowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? blurRadius = freezed,
    Object? offset = null,
    Object? spreadRadius = freezed,
    Object? blurStyle = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurRadius: freezed == blurRadius
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as MiraiOffset,
      spreadRadius: freezed == spreadRadius
          ? _value.spreadRadius
          : spreadRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      blurStyle: freezed == blurStyle
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle?,
    ) as $Val);
  }

  /// Create a copy of MiraiBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiOffsetCopyWith<$Res> get offset {
    return $MiraiOffsetCopyWith<$Res>(_value.offset, (value) {
      return _then(_value.copyWith(offset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiBoxShadowImplCopyWith<$Res>
    implements $MiraiBoxShadowCopyWith<$Res> {
  factory _$$MiraiBoxShadowImplCopyWith(_$MiraiBoxShadowImpl value,
          $Res Function(_$MiraiBoxShadowImpl) then) =
      __$$MiraiBoxShadowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      double? blurRadius,
      MiraiOffset offset,
      double? spreadRadius,
      BlurStyle? blurStyle});

  @override
  $MiraiOffsetCopyWith<$Res> get offset;
}

/// @nodoc
class __$$MiraiBoxShadowImplCopyWithImpl<$Res>
    extends _$MiraiBoxShadowCopyWithImpl<$Res, _$MiraiBoxShadowImpl>
    implements _$$MiraiBoxShadowImplCopyWith<$Res> {
  __$$MiraiBoxShadowImplCopyWithImpl(
      _$MiraiBoxShadowImpl _value, $Res Function(_$MiraiBoxShadowImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? blurRadius = freezed,
    Object? offset = null,
    Object? spreadRadius = freezed,
    Object? blurStyle = freezed,
  }) {
    return _then(_$MiraiBoxShadowImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurRadius: freezed == blurRadius
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as MiraiOffset,
      spreadRadius: freezed == spreadRadius
          ? _value.spreadRadius
          : spreadRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      blurStyle: freezed == blurStyle
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiBoxShadowImpl implements _MiraiBoxShadow {
  const _$MiraiBoxShadowImpl(
      {this.color,
      this.blurRadius = 0.0,
      this.offset = const MiraiOffset(dx: 0, dy: 0),
      this.spreadRadius = 0.0,
      this.blurStyle = BlurStyle.normal});

  factory _$MiraiBoxShadowImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiBoxShadowImplFromJson(json);

  @override
  final String? color;
  @override
  @JsonKey()
  final double? blurRadius;
  @override
  @JsonKey()
  final MiraiOffset offset;
  @override
  @JsonKey()
  final double? spreadRadius;
  @override
  @JsonKey()
  final BlurStyle? blurStyle;

  @override
  String toString() {
    return 'MiraiBoxShadow(color: $color, blurRadius: $blurRadius, offset: $offset, spreadRadius: $spreadRadius, blurStyle: $blurStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiBoxShadowImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.blurRadius, blurRadius) ||
                other.blurRadius == blurRadius) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.spreadRadius, spreadRadius) ||
                other.spreadRadius == spreadRadius) &&
            (identical(other.blurStyle, blurStyle) ||
                other.blurStyle == blurStyle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, color, blurRadius, offset, spreadRadius, blurStyle);

  /// Create a copy of MiraiBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiBoxShadowImplCopyWith<_$MiraiBoxShadowImpl> get copyWith =>
      __$$MiraiBoxShadowImplCopyWithImpl<_$MiraiBoxShadowImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiBoxShadowImplToJson(
      this,
    );
  }
}

abstract class _MiraiBoxShadow implements MiraiBoxShadow {
  const factory _MiraiBoxShadow(
      {final String? color,
      final double? blurRadius,
      final MiraiOffset offset,
      final double? spreadRadius,
      final BlurStyle? blurStyle}) = _$MiraiBoxShadowImpl;

  factory _MiraiBoxShadow.fromJson(Map<String, dynamic> json) =
      _$MiraiBoxShadowImpl.fromJson;

  @override
  String? get color;
  @override
  double? get blurRadius;
  @override
  MiraiOffset get offset;
  @override
  double? get spreadRadius;
  @override
  BlurStyle? get blurStyle;

  /// Create a copy of MiraiBoxShadow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiBoxShadowImplCopyWith<_$MiraiBoxShadowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
