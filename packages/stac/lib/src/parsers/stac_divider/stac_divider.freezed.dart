// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_divider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacDivider _$StacDividerFromJson(Map<String, dynamic> json) {
  return _StacDivider.fromJson(json);
}

/// @nodoc
mixin _$StacDivider {
  double? get thickness => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  /// Serializes this StacDivider to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacDivider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacDividerCopyWith<StacDivider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacDividerCopyWith<$Res> {
  factory $StacDividerCopyWith(
          StacDivider value, $Res Function(StacDivider) then) =
      _$StacDividerCopyWithImpl<$Res, StacDivider>;
  @useResult
  $Res call({double? thickness, double? height, String? color});
}

/// @nodoc
class _$StacDividerCopyWithImpl<$Res, $Val extends StacDivider>
    implements $StacDividerCopyWith<$Res> {
  _$StacDividerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacDivider
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
abstract class _$$StacDividerImplCopyWith<$Res>
    implements $StacDividerCopyWith<$Res> {
  factory _$$StacDividerImplCopyWith(
          _$StacDividerImpl value, $Res Function(_$StacDividerImpl) then) =
      __$$StacDividerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? thickness, double? height, String? color});
}

/// @nodoc
class __$$StacDividerImplCopyWithImpl<$Res>
    extends _$StacDividerCopyWithImpl<$Res, _$StacDividerImpl>
    implements _$$StacDividerImplCopyWith<$Res> {
  __$$StacDividerImplCopyWithImpl(
      _$StacDividerImpl _value, $Res Function(_$StacDividerImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacDivider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thickness = freezed,
    Object? height = freezed,
    Object? color = freezed,
  }) {
    return _then(_$StacDividerImpl(
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
class _$StacDividerImpl implements _StacDivider {
  const _$StacDividerImpl({this.thickness, this.height, this.color});

  factory _$StacDividerImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacDividerImplFromJson(json);

  @override
  final double? thickness;
  @override
  final double? height;
  @override
  final String? color;

  @override
  String toString() {
    return 'StacDivider(thickness: $thickness, height: $height, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacDividerImpl &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, thickness, height, color);

  /// Create a copy of StacDivider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacDividerImplCopyWith<_$StacDividerImpl> get copyWith =>
      __$$StacDividerImplCopyWithImpl<_$StacDividerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacDividerImplToJson(
      this,
    );
  }
}

abstract class _StacDivider implements StacDivider {
  const factory _StacDivider(
      {final double? thickness,
      final double? height,
      final String? color}) = _$StacDividerImpl;

  factory _StacDivider.fromJson(Map<String, dynamic> json) =
      _$StacDividerImpl.fromJson;

  @override
  double? get thickness;
  @override
  double? get height;
  @override
  String? get color;

  /// Create a copy of StacDivider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacDividerImplCopyWith<_$StacDividerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
