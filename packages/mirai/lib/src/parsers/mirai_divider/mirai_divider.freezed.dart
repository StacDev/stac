// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_divider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiDivider _$MiraiDividerFromJson(Map<String, dynamic> json) {
  return _MiraiDivider.fromJson(json);
}

/// @nodoc
mixin _$MiraiDivider {
  double? get thickness => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  /// Serializes this MiraiDivider to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiDivider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiDividerCopyWith<MiraiDivider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiDividerCopyWith<$Res> {
  factory $MiraiDividerCopyWith(
          MiraiDivider value, $Res Function(MiraiDivider) then) =
      _$MiraiDividerCopyWithImpl<$Res, MiraiDivider>;
  @useResult
  $Res call({double? thickness, double? height, String? color});
}

/// @nodoc
class _$MiraiDividerCopyWithImpl<$Res, $Val extends MiraiDivider>
    implements $MiraiDividerCopyWith<$Res> {
  _$MiraiDividerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiDivider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thickness = freezed,
    Object? height = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiDividerImplCopyWith<$Res>
    implements $MiraiDividerCopyWith<$Res> {
  factory _$$MiraiDividerImplCopyWith(
          _$MiraiDividerImpl value, $Res Function(_$MiraiDividerImpl) then) =
      __$$MiraiDividerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? thickness, double? height, String? color});
}

/// @nodoc
class __$$MiraiDividerImplCopyWithImpl<$Res>
    extends _$MiraiDividerCopyWithImpl<$Res, _$MiraiDividerImpl>
    implements _$$MiraiDividerImplCopyWith<$Res> {
  __$$MiraiDividerImplCopyWithImpl(
      _$MiraiDividerImpl _value, $Res Function(_$MiraiDividerImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiDivider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thickness = freezed,
    Object? height = freezed,
    Object? color = freezed,
  }) {
    return _then(_$MiraiDividerImpl(
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiDividerImpl implements _MiraiDivider {
  const _$MiraiDividerImpl({this.thickness, this.height, this.color});

  factory _$MiraiDividerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiDividerImplFromJson(json);

  @override
  final double? thickness;
  @override
  final double? height;
  @override
  final String? color;

  @override
  String toString() {
    return 'MiraiDivider(thickness: $thickness, height: $height, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiDividerImpl &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, thickness, height, color);

  /// Create a copy of MiraiDivider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiDividerImplCopyWith<_$MiraiDividerImpl> get copyWith =>
      __$$MiraiDividerImplCopyWithImpl<_$MiraiDividerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiDividerImplToJson(
      this,
    );
  }
}

abstract class _MiraiDivider implements MiraiDivider {
  const factory _MiraiDivider(
      {final double? thickness,
      final double? height,
      final String? color}) = _$MiraiDividerImpl;

  factory _MiraiDivider.fromJson(Map<String, dynamic> json) =
      _$MiraiDividerImpl.fromJson;

  @override
  double? get thickness;
  @override
  double? get height;
  @override
  String? get color;

  /// Create a copy of MiraiDivider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiDividerImplCopyWith<_$MiraiDividerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
