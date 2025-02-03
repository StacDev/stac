// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_sized_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacSizedBox _$StacSizedBoxFromJson(Map<String, dynamic> json) {
  return _StacSizedBox.fromJson(json);
}

/// @nodoc
mixin _$StacSizedBox {
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this StacSizedBox to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacSizedBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacSizedBoxCopyWith<StacSizedBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacSizedBoxCopyWith<$Res> {
  factory $StacSizedBoxCopyWith(
          StacSizedBox value, $Res Function(StacSizedBox) then) =
      _$StacSizedBoxCopyWithImpl<$Res, StacSizedBox>;
  @useResult
  $Res call({double? width, double? height, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacSizedBoxCopyWithImpl<$Res, $Val extends StacSizedBox>
    implements $StacSizedBoxCopyWith<$Res> {
  _$StacSizedBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacSizedBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacSizedBoxImplCopyWith<$Res>
    implements $StacSizedBoxCopyWith<$Res> {
  factory _$$StacSizedBoxImplCopyWith(
          _$StacSizedBoxImpl value, $Res Function(_$StacSizedBoxImpl) then) =
      __$$StacSizedBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? width, double? height, Map<String, dynamic>? child});
}

/// @nodoc
class __$$StacSizedBoxImplCopyWithImpl<$Res>
    extends _$StacSizedBoxCopyWithImpl<$Res, _$StacSizedBoxImpl>
    implements _$$StacSizedBoxImplCopyWith<$Res> {
  __$$StacSizedBoxImplCopyWithImpl(
      _$StacSizedBoxImpl _value, $Res Function(_$StacSizedBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacSizedBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? child = freezed,
  }) {
    return _then(_$StacSizedBoxImpl(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacSizedBoxImpl implements _StacSizedBox {
  const _$StacSizedBoxImpl(
      {this.width, this.height, final Map<String, dynamic>? child})
      : _child = child;

  factory _$StacSizedBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacSizedBoxImplFromJson(json);

  @override
  final double? width;
  @override
  final double? height;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'StacSizedBox(width: $width, height: $height, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacSizedBoxImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, width, height, const DeepCollectionEquality().hash(_child));

  /// Create a copy of StacSizedBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacSizedBoxImplCopyWith<_$StacSizedBoxImpl> get copyWith =>
      __$$StacSizedBoxImplCopyWithImpl<_$StacSizedBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacSizedBoxImplToJson(
      this,
    );
  }
}

abstract class _StacSizedBox implements StacSizedBox {
  const factory _StacSizedBox(
      {final double? width,
      final double? height,
      final Map<String, dynamic>? child}) = _$StacSizedBoxImpl;

  factory _StacSizedBox.fromJson(Map<String, dynamic> json) =
      _$StacSizedBoxImpl.fromJson;

  @override
  double? get width;
  @override
  double? get height;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of StacSizedBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacSizedBoxImplCopyWith<_$StacSizedBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
