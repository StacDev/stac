// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_limited_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacLimitedBox _$StacLimitedBoxFromJson(Map<String, dynamic> json) {
  return _StacLimitedBox.fromJson(json);
}

/// @nodoc
mixin _$StacLimitedBox {
  double get maxHeight => throw _privateConstructorUsedError;
  double get maxWidth => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this StacLimitedBox to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacLimitedBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacLimitedBoxCopyWith<StacLimitedBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacLimitedBoxCopyWith<$Res> {
  factory $StacLimitedBoxCopyWith(
          StacLimitedBox value, $Res Function(StacLimitedBox) then) =
      _$StacLimitedBoxCopyWithImpl<$Res, StacLimitedBox>;
  @useResult
  $Res call({double maxHeight, double maxWidth, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacLimitedBoxCopyWithImpl<$Res, $Val extends StacLimitedBox>
    implements $StacLimitedBoxCopyWith<$Res> {
  _$StacLimitedBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacLimitedBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxHeight = null,
    Object? maxWidth = null,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      maxHeight: null == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: null == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacLimitedBoxImplCopyWith<$Res>
    implements $StacLimitedBoxCopyWith<$Res> {
  factory _$$StacLimitedBoxImplCopyWith(_$StacLimitedBoxImpl value,
          $Res Function(_$StacLimitedBoxImpl) then) =
      __$$StacLimitedBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double maxHeight, double maxWidth, Map<String, dynamic>? child});
}

/// @nodoc
class __$$StacLimitedBoxImplCopyWithImpl<$Res>
    extends _$StacLimitedBoxCopyWithImpl<$Res, _$StacLimitedBoxImpl>
    implements _$$StacLimitedBoxImplCopyWith<$Res> {
  __$$StacLimitedBoxImplCopyWithImpl(
      _$StacLimitedBoxImpl _value, $Res Function(_$StacLimitedBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacLimitedBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxHeight = null,
    Object? maxWidth = null,
    Object? child = freezed,
  }) {
    return _then(_$StacLimitedBoxImpl(
      maxHeight: null == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: null == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacLimitedBoxImpl implements _StacLimitedBox {
  const _$StacLimitedBoxImpl(
      {this.maxHeight = double.infinity,
      this.maxWidth = double.infinity,
      final Map<String, dynamic>? child})
      : _child = child;

  factory _$StacLimitedBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacLimitedBoxImplFromJson(json);

  @override
  @JsonKey()
  final double maxHeight;
  @override
  @JsonKey()
  final double maxWidth;
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
    return 'StacLimitedBox(maxHeight: $maxHeight, maxWidth: $maxWidth, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacLimitedBoxImpl &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maxHeight, maxWidth,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of StacLimitedBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacLimitedBoxImplCopyWith<_$StacLimitedBoxImpl> get copyWith =>
      __$$StacLimitedBoxImplCopyWithImpl<_$StacLimitedBoxImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacLimitedBoxImplToJson(
      this,
    );
  }
}

abstract class _StacLimitedBox implements StacLimitedBox {
  const factory _StacLimitedBox(
      {final double maxHeight,
      final double maxWidth,
      final Map<String, dynamic>? child}) = _$StacLimitedBoxImpl;

  factory _StacLimitedBox.fromJson(Map<String, dynamic> json) =
      _$StacLimitedBoxImpl.fromJson;

  @override
  double get maxHeight;
  @override
  double get maxWidth;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of StacLimitedBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacLimitedBoxImplCopyWith<_$StacLimitedBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
