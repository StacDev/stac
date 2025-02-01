// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_colored_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacColoredBox _$StacColoredBoxFromJson(Map<String, dynamic> json) {
  return _StacColoredBox.fromJson(json);
}

/// @nodoc
mixin _$StacColoredBox {
  String get color => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this StacColoredBox to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacColoredBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacColoredBoxCopyWith<StacColoredBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacColoredBoxCopyWith<$Res> {
  factory $StacColoredBoxCopyWith(
          StacColoredBox value, $Res Function(StacColoredBox) then) =
      _$StacColoredBoxCopyWithImpl<$Res, StacColoredBox>;
  @useResult
  $Res call({String color, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacColoredBoxCopyWithImpl<$Res, $Val extends StacColoredBox>
    implements $StacColoredBoxCopyWith<$Res> {
  _$StacColoredBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacColoredBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacColoredBoxImplCopyWith<$Res>
    implements $StacColoredBoxCopyWith<$Res> {
  factory _$$StacColoredBoxImplCopyWith(_$StacColoredBoxImpl value,
          $Res Function(_$StacColoredBoxImpl) then) =
      __$$StacColoredBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String color, Map<String, dynamic>? child});
}

/// @nodoc
class __$$StacColoredBoxImplCopyWithImpl<$Res>
    extends _$StacColoredBoxCopyWithImpl<$Res, _$StacColoredBoxImpl>
    implements _$$StacColoredBoxImplCopyWith<$Res> {
  __$$StacColoredBoxImplCopyWithImpl(
      _$StacColoredBoxImpl _value, $Res Function(_$StacColoredBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacColoredBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? child = freezed,
  }) {
    return _then(_$StacColoredBoxImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacColoredBoxImpl implements _StacColoredBox {
  const _$StacColoredBoxImpl(
      {required this.color, final Map<String, dynamic>? child})
      : _child = child;

  factory _$StacColoredBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacColoredBoxImplFromJson(json);

  @override
  final String color;
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
    return 'StacColoredBox(color: $color, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacColoredBoxImpl &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, color, const DeepCollectionEquality().hash(_child));

  /// Create a copy of StacColoredBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacColoredBoxImplCopyWith<_$StacColoredBoxImpl> get copyWith =>
      __$$StacColoredBoxImplCopyWithImpl<_$StacColoredBoxImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacColoredBoxImplToJson(
      this,
    );
  }
}

abstract class _StacColoredBox implements StacColoredBox {
  const factory _StacColoredBox(
      {required final String color,
      final Map<String, dynamic>? child}) = _$StacColoredBoxImpl;

  factory _StacColoredBox.fromJson(Map<String, dynamic> json) =
      _$StacColoredBoxImpl.fromJson;

  @override
  String get color;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of StacColoredBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacColoredBoxImplCopyWith<_$StacColoredBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
