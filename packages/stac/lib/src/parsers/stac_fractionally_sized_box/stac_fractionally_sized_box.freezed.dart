// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_fractionally_sized_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacFractionallySizedBox _$StacFractionallySizedBoxFromJson(
    Map<String, dynamic> json) {
  return _StacFractionallySizedBox.fromJson(json);
}

/// @nodoc
mixin _$StacFractionallySizedBox {
  StacAlignment? get alignment => throw _privateConstructorUsedError;
  double? get widthFactor => throw _privateConstructorUsedError;
  double? get heightFactor => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this StacFractionallySizedBox to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacFractionallySizedBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacFractionallySizedBoxCopyWith<StacFractionallySizedBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacFractionallySizedBoxCopyWith<$Res> {
  factory $StacFractionallySizedBoxCopyWith(StacFractionallySizedBox value,
          $Res Function(StacFractionallySizedBox) then) =
      _$StacFractionallySizedBoxCopyWithImpl<$Res, StacFractionallySizedBox>;
  @useResult
  $Res call(
      {StacAlignment? alignment,
      double? widthFactor,
      double? heightFactor,
      Map<String, dynamic>? child});
}

/// @nodoc
class _$StacFractionallySizedBoxCopyWithImpl<$Res,
        $Val extends StacFractionallySizedBox>
    implements $StacFractionallySizedBoxCopyWith<$Res> {
  _$StacFractionallySizedBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacFractionallySizedBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignment = freezed,
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      alignment: freezed == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment?,
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
abstract class _$$StacFractionallySizedBoxImplCopyWith<$Res>
    implements $StacFractionallySizedBoxCopyWith<$Res> {
  factory _$$StacFractionallySizedBoxImplCopyWith(
          _$StacFractionallySizedBoxImpl value,
          $Res Function(_$StacFractionallySizedBoxImpl) then) =
      __$$StacFractionallySizedBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StacAlignment? alignment,
      double? widthFactor,
      double? heightFactor,
      Map<String, dynamic>? child});
}

/// @nodoc
class __$$StacFractionallySizedBoxImplCopyWithImpl<$Res>
    extends _$StacFractionallySizedBoxCopyWithImpl<$Res,
        _$StacFractionallySizedBoxImpl>
    implements _$$StacFractionallySizedBoxImplCopyWith<$Res> {
  __$$StacFractionallySizedBoxImplCopyWithImpl(
      _$StacFractionallySizedBoxImpl _value,
      $Res Function(_$StacFractionallySizedBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacFractionallySizedBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignment = freezed,
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_$StacFractionallySizedBoxImpl(
      alignment: freezed == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignment?,
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
class _$StacFractionallySizedBoxImpl implements _StacFractionallySizedBox {
  const _$StacFractionallySizedBoxImpl(
      {this.alignment,
      this.widthFactor,
      this.heightFactor,
      final Map<String, dynamic>? child})
      : _child = child;

  factory _$StacFractionallySizedBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacFractionallySizedBoxImplFromJson(json);

  @override
  final StacAlignment? alignment;
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
    return 'StacFractionallySizedBox(alignment: $alignment, widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacFractionallySizedBoxImpl &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.widthFactor, widthFactor) ||
                other.widthFactor == widthFactor) &&
            (identical(other.heightFactor, heightFactor) ||
                other.heightFactor == heightFactor) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, alignment, widthFactor,
      heightFactor, const DeepCollectionEquality().hash(_child));

  /// Create a copy of StacFractionallySizedBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacFractionallySizedBoxImplCopyWith<_$StacFractionallySizedBoxImpl>
      get copyWith => __$$StacFractionallySizedBoxImplCopyWithImpl<
          _$StacFractionallySizedBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacFractionallySizedBoxImplToJson(
      this,
    );
  }
}

abstract class _StacFractionallySizedBox implements StacFractionallySizedBox {
  const factory _StacFractionallySizedBox(
      {final StacAlignment? alignment,
      final double? widthFactor,
      final double? heightFactor,
      final Map<String, dynamic>? child}) = _$StacFractionallySizedBoxImpl;

  factory _StacFractionallySizedBox.fromJson(Map<String, dynamic> json) =
      _$StacFractionallySizedBoxImpl.fromJson;

  @override
  StacAlignment? get alignment;
  @override
  double? get widthFactor;
  @override
  double? get heightFactor;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of StacFractionallySizedBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacFractionallySizedBoxImplCopyWith<_$StacFractionallySizedBoxImpl>
      get copyWith => throw _privateConstructorUsedError;
}
