// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_box_constraints.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacBoxConstraints _$StacBoxConstraintsFromJson(Map<String, dynamic> json) {
  return _StacBoxConstraints.fromJson(json);
}

/// @nodoc
mixin _$StacBoxConstraints {
  double get minWidth => throw _privateConstructorUsedError;
  double get maxWidth => throw _privateConstructorUsedError;
  double get minHeight => throw _privateConstructorUsedError;
  double get maxHeight => throw _privateConstructorUsedError;

  /// Serializes this StacBoxConstraints to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacBoxConstraintsCopyWith<StacBoxConstraints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacBoxConstraintsCopyWith<$Res> {
  factory $StacBoxConstraintsCopyWith(
          StacBoxConstraints value, $Res Function(StacBoxConstraints) then) =
      _$StacBoxConstraintsCopyWithImpl<$Res, StacBoxConstraints>;
  @useResult
  $Res call(
      {double minWidth, double maxWidth, double minHeight, double maxHeight});
}

/// @nodoc
class _$StacBoxConstraintsCopyWithImpl<$Res, $Val extends StacBoxConstraints>
    implements $StacBoxConstraintsCopyWith<$Res> {
  _$StacBoxConstraintsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWidth = null,
    Object? maxWidth = null,
    Object? minHeight = null,
    Object? maxHeight = null,
  }) {
    return _then(_value.copyWith(
      minWidth: null == minWidth
          ? _value.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: null == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
      minHeight: null == minHeight
          ? _value.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxHeight: null == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacBoxConstraintsImplCopyWith<$Res>
    implements $StacBoxConstraintsCopyWith<$Res> {
  factory _$$StacBoxConstraintsImplCopyWith(_$StacBoxConstraintsImpl value,
          $Res Function(_$StacBoxConstraintsImpl) then) =
      __$$StacBoxConstraintsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double minWidth, double maxWidth, double minHeight, double maxHeight});
}

/// @nodoc
class __$$StacBoxConstraintsImplCopyWithImpl<$Res>
    extends _$StacBoxConstraintsCopyWithImpl<$Res, _$StacBoxConstraintsImpl>
    implements _$$StacBoxConstraintsImplCopyWith<$Res> {
  __$$StacBoxConstraintsImplCopyWithImpl(_$StacBoxConstraintsImpl _value,
      $Res Function(_$StacBoxConstraintsImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWidth = null,
    Object? maxWidth = null,
    Object? minHeight = null,
    Object? maxHeight = null,
  }) {
    return _then(_$StacBoxConstraintsImpl(
      minWidth: null == minWidth
          ? _value.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: null == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
      minHeight: null == minHeight
          ? _value.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxHeight: null == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacBoxConstraintsImpl implements _StacBoxConstraints {
  const _$StacBoxConstraintsImpl(
      {required this.minWidth,
      required this.maxWidth,
      required this.minHeight,
      required this.maxHeight});

  factory _$StacBoxConstraintsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacBoxConstraintsImplFromJson(json);

  @override
  final double minWidth;
  @override
  final double maxWidth;
  @override
  final double minHeight;
  @override
  final double maxHeight;

  @override
  String toString() {
    return 'StacBoxConstraints(minWidth: $minWidth, maxWidth: $maxWidth, minHeight: $minHeight, maxHeight: $maxHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacBoxConstraintsImpl &&
            (identical(other.minWidth, minWidth) ||
                other.minWidth == minWidth) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minWidth, maxWidth, minHeight, maxHeight);

  /// Create a copy of StacBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacBoxConstraintsImplCopyWith<_$StacBoxConstraintsImpl> get copyWith =>
      __$$StacBoxConstraintsImplCopyWithImpl<_$StacBoxConstraintsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacBoxConstraintsImplToJson(
      this,
    );
  }
}

abstract class _StacBoxConstraints implements StacBoxConstraints {
  const factory _StacBoxConstraints(
      {required final double minWidth,
      required final double maxWidth,
      required final double minHeight,
      required final double maxHeight}) = _$StacBoxConstraintsImpl;

  factory _StacBoxConstraints.fromJson(Map<String, dynamic> json) =
      _$StacBoxConstraintsImpl.fromJson;

  @override
  double get minWidth;
  @override
  double get maxWidth;
  @override
  double get minHeight;
  @override
  double get maxHeight;

  /// Create a copy of StacBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacBoxConstraintsImplCopyWith<_$StacBoxConstraintsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
