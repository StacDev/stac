// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_visual_density.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacVisualDensity _$StacVisualDensityFromJson(Map<String, dynamic> json) {
  return _StacVisualDensity.fromJson(json);
}

/// @nodoc
mixin _$StacVisualDensity {
  double get horizontal => throw _privateConstructorUsedError;
  double get vertical => throw _privateConstructorUsedError;

  /// Serializes this StacVisualDensity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacVisualDensityCopyWith<StacVisualDensity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacVisualDensityCopyWith<$Res> {
  factory $StacVisualDensityCopyWith(
          StacVisualDensity value, $Res Function(StacVisualDensity) then) =
      _$StacVisualDensityCopyWithImpl<$Res, StacVisualDensity>;
  @useResult
  $Res call({double horizontal, double vertical});
}

/// @nodoc
class _$StacVisualDensityCopyWithImpl<$Res, $Val extends StacVisualDensity>
    implements $StacVisualDensityCopyWith<$Res> {
  _$StacVisualDensityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horizontal = null,
    Object? vertical = null,
  }) {
    return _then(_value.copyWith(
      horizontal: null == horizontal
          ? _value.horizontal
          : horizontal // ignore: cast_nullable_to_non_nullable
              as double,
      vertical: null == vertical
          ? _value.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacVisualDensityImplCopyWith<$Res>
    implements $StacVisualDensityCopyWith<$Res> {
  factory _$$StacVisualDensityImplCopyWith(_$StacVisualDensityImpl value,
          $Res Function(_$StacVisualDensityImpl) then) =
      __$$StacVisualDensityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double horizontal, double vertical});
}

/// @nodoc
class __$$StacVisualDensityImplCopyWithImpl<$Res>
    extends _$StacVisualDensityCopyWithImpl<$Res, _$StacVisualDensityImpl>
    implements _$$StacVisualDensityImplCopyWith<$Res> {
  __$$StacVisualDensityImplCopyWithImpl(_$StacVisualDensityImpl _value,
      $Res Function(_$StacVisualDensityImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horizontal = null,
    Object? vertical = null,
  }) {
    return _then(_$StacVisualDensityImpl(
      horizontal: null == horizontal
          ? _value.horizontal
          : horizontal // ignore: cast_nullable_to_non_nullable
              as double,
      vertical: null == vertical
          ? _value.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacVisualDensityImpl implements _StacVisualDensity {
  const _$StacVisualDensityImpl(
      {required this.horizontal, required this.vertical});

  factory _$StacVisualDensityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacVisualDensityImplFromJson(json);

  @override
  final double horizontal;
  @override
  final double vertical;

  @override
  String toString() {
    return 'StacVisualDensity(horizontal: $horizontal, vertical: $vertical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacVisualDensityImpl &&
            (identical(other.horizontal, horizontal) ||
                other.horizontal == horizontal) &&
            (identical(other.vertical, vertical) ||
                other.vertical == vertical));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, horizontal, vertical);

  /// Create a copy of StacVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacVisualDensityImplCopyWith<_$StacVisualDensityImpl> get copyWith =>
      __$$StacVisualDensityImplCopyWithImpl<_$StacVisualDensityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacVisualDensityImplToJson(
      this,
    );
  }
}

abstract class _StacVisualDensity implements StacVisualDensity {
  const factory _StacVisualDensity(
      {required final double horizontal,
      required final double vertical}) = _$StacVisualDensityImpl;

  factory _StacVisualDensity.fromJson(Map<String, dynamic> json) =
      _$StacVisualDensityImpl.fromJson;

  @override
  double get horizontal;
  @override
  double get vertical;

  /// Create a copy of StacVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacVisualDensityImplCopyWith<_$StacVisualDensityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
