// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacCenter _$StacCenterFromJson(Map<String, dynamic> json) {
  return _StacCenter.fromJson(json);
}

/// @nodoc
mixin _$StacCenter {
  double? get widthFactor => throw _privateConstructorUsedError;
  double? get heightFactor => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this StacCenter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacCenterCopyWith<StacCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacCenterCopyWith<$Res> {
  factory $StacCenterCopyWith(
          StacCenter value, $Res Function(StacCenter) then) =
      _$StacCenterCopyWithImpl<$Res, StacCenter>;
  @useResult
  $Res call(
      {double? widthFactor, double? heightFactor, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacCenterCopyWithImpl<$Res, $Val extends StacCenter>
    implements $StacCenterCopyWith<$Res> {
  _$StacCenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacCenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      widthFactor: freezed == widthFactor
          ? _value.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      heightFactor: freezed == heightFactor
          ? _value.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacCenterImplCopyWith<$Res>
    implements $StacCenterCopyWith<$Res> {
  factory _$$StacCenterImplCopyWith(
          _$StacCenterImpl value, $Res Function(_$StacCenterImpl) then) =
      __$$StacCenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? widthFactor, double? heightFactor, Map<String, dynamic>? child});
}

/// @nodoc
class __$$StacCenterImplCopyWithImpl<$Res>
    extends _$StacCenterCopyWithImpl<$Res, _$StacCenterImpl>
    implements _$$StacCenterImplCopyWith<$Res> {
  __$$StacCenterImplCopyWithImpl(
      _$StacCenterImpl _value, $Res Function(_$StacCenterImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacCenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_$StacCenterImpl(
      widthFactor: freezed == widthFactor
          ? _value.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      heightFactor: freezed == heightFactor
          ? _value.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
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
class _$StacCenterImpl implements _StacCenter {
  const _$StacCenterImpl(
      {this.widthFactor, this.heightFactor, final Map<String, dynamic>? child})
      : _child = child;

  factory _$StacCenterImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacCenterImplFromJson(json);

  @override
  final double? widthFactor;
  @override
  final double? heightFactor;
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
    return 'StacCenter(widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacCenterImpl &&
            (identical(other.widthFactor, widthFactor) ||
                other.widthFactor == widthFactor) &&
            (identical(other.heightFactor, heightFactor) ||
                other.heightFactor == heightFactor) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, widthFactor, heightFactor,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of StacCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacCenterImplCopyWith<_$StacCenterImpl> get copyWith =>
      __$$StacCenterImplCopyWithImpl<_$StacCenterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacCenterImplToJson(
      this,
    );
  }
}

abstract class _StacCenter implements StacCenter {
  const factory _StacCenter(
      {final double? widthFactor,
      final double? heightFactor,
      final Map<String, dynamic>? child}) = _$StacCenterImpl;

  factory _StacCenter.fromJson(Map<String, dynamic> json) =
      _$StacCenterImpl.fromJson;

  @override
  double? get widthFactor;
  @override
  double? get heightFactor;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of StacCenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacCenterImplCopyWith<_$StacCenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
