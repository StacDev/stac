// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiCenter _$MiraiCenterFromJson(Map<String, dynamic> json) {
  return _MiraiCenter.fromJson(json);
}

/// @nodoc
mixin _$MiraiCenter {
  double? get widthFactor => throw _privateConstructorUsedError;
  double? get heightFactor => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiCenter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiCenterCopyWith<MiraiCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiCenterCopyWith<$Res> {
  factory $MiraiCenterCopyWith(
          MiraiCenter value, $Res Function(MiraiCenter) then) =
      _$MiraiCenterCopyWithImpl<$Res, MiraiCenter>;
  @useResult
  $Res call(
      {double? widthFactor, double? heightFactor, Map<String, dynamic>? child});
}

/// @nodoc
class _$MiraiCenterCopyWithImpl<$Res, $Val extends MiraiCenter>
    implements $MiraiCenterCopyWith<$Res> {
  _$MiraiCenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiCenter
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
abstract class _$$MiraiCenterImplCopyWith<$Res>
    implements $MiraiCenterCopyWith<$Res> {
  factory _$$MiraiCenterImplCopyWith(
          _$MiraiCenterImpl value, $Res Function(_$MiraiCenterImpl) then) =
      __$$MiraiCenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? widthFactor, double? heightFactor, Map<String, dynamic>? child});
}

/// @nodoc
class __$$MiraiCenterImplCopyWithImpl<$Res>
    extends _$MiraiCenterCopyWithImpl<$Res, _$MiraiCenterImpl>
    implements _$$MiraiCenterImplCopyWith<$Res> {
  __$$MiraiCenterImplCopyWithImpl(
      _$MiraiCenterImpl _value, $Res Function(_$MiraiCenterImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiCenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_$MiraiCenterImpl(
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
class _$MiraiCenterImpl implements _MiraiCenter {
  const _$MiraiCenterImpl(
      {this.widthFactor, this.heightFactor, final Map<String, dynamic>? child})
      : _child = child;

  factory _$MiraiCenterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiCenterImplFromJson(json);

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
    return 'MiraiCenter(widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiCenterImpl &&
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

  /// Create a copy of MiraiCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiCenterImplCopyWith<_$MiraiCenterImpl> get copyWith =>
      __$$MiraiCenterImplCopyWithImpl<_$MiraiCenterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiCenterImplToJson(
      this,
    );
  }
}

abstract class _MiraiCenter implements MiraiCenter {
  const factory _MiraiCenter(
      {final double? widthFactor,
      final double? heightFactor,
      final Map<String, dynamic>? child}) = _$MiraiCenterImpl;

  factory _MiraiCenter.fromJson(Map<String, dynamic> json) =
      _$MiraiCenterImpl.fromJson;

  @override
  double? get widthFactor;
  @override
  double? get heightFactor;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of MiraiCenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiCenterImplCopyWith<_$MiraiCenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
