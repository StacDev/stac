// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_visual_density.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiVisualDensity _$MiraiVisualDensityFromJson(Map<String, dynamic> json) {
  return _MiraiVisualDensity.fromJson(json);
}

/// @nodoc
mixin _$MiraiVisualDensity {
  double get horizontal => throw _privateConstructorUsedError;
  double get vertical => throw _privateConstructorUsedError;

  /// Serializes this MiraiVisualDensity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiVisualDensityCopyWith<MiraiVisualDensity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiVisualDensityCopyWith<$Res> {
  factory $MiraiVisualDensityCopyWith(
          MiraiVisualDensity value, $Res Function(MiraiVisualDensity) then) =
      _$MiraiVisualDensityCopyWithImpl<$Res, MiraiVisualDensity>;
  @useResult
  $Res call({double horizontal, double vertical});
}

/// @nodoc
class _$MiraiVisualDensityCopyWithImpl<$Res, $Val extends MiraiVisualDensity>
    implements $MiraiVisualDensityCopyWith<$Res> {
  _$MiraiVisualDensityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiVisualDensity
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
abstract class _$$MiraiVisualDensityImplCopyWith<$Res>
    implements $MiraiVisualDensityCopyWith<$Res> {
  factory _$$MiraiVisualDensityImplCopyWith(_$MiraiVisualDensityImpl value,
          $Res Function(_$MiraiVisualDensityImpl) then) =
      __$$MiraiVisualDensityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double horizontal, double vertical});
}

/// @nodoc
class __$$MiraiVisualDensityImplCopyWithImpl<$Res>
    extends _$MiraiVisualDensityCopyWithImpl<$Res, _$MiraiVisualDensityImpl>
    implements _$$MiraiVisualDensityImplCopyWith<$Res> {
  __$$MiraiVisualDensityImplCopyWithImpl(_$MiraiVisualDensityImpl _value,
      $Res Function(_$MiraiVisualDensityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horizontal = null,
    Object? vertical = null,
  }) {
    return _then(_$MiraiVisualDensityImpl(
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
class _$MiraiVisualDensityImpl implements _MiraiVisualDensity {
  const _$MiraiVisualDensityImpl(
      {required this.horizontal, required this.vertical});

  factory _$MiraiVisualDensityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiVisualDensityImplFromJson(json);

  @override
  final double horizontal;
  @override
  final double vertical;

  @override
  String toString() {
    return 'MiraiVisualDensity(horizontal: $horizontal, vertical: $vertical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiVisualDensityImpl &&
            (identical(other.horizontal, horizontal) ||
                other.horizontal == horizontal) &&
            (identical(other.vertical, vertical) ||
                other.vertical == vertical));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, horizontal, vertical);

  /// Create a copy of MiraiVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiVisualDensityImplCopyWith<_$MiraiVisualDensityImpl> get copyWith =>
      __$$MiraiVisualDensityImplCopyWithImpl<_$MiraiVisualDensityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiVisualDensityImplToJson(
      this,
    );
  }
}

abstract class _MiraiVisualDensity implements MiraiVisualDensity {
  const factory _MiraiVisualDensity(
      {required final double horizontal,
      required final double vertical}) = _$MiraiVisualDensityImpl;

  factory _MiraiVisualDensity.fromJson(Map<String, dynamic> json) =
      _$MiraiVisualDensityImpl.fromJson;

  @override
  double get horizontal;
  @override
  double get vertical;

  /// Create a copy of MiraiVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiVisualDensityImplCopyWith<_$MiraiVisualDensityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
