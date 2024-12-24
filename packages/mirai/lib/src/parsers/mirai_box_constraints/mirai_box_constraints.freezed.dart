// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_box_constraints.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiBoxConstraints _$MiraiBoxConstraintsFromJson(Map<String, dynamic> json) {
  return _MiraiBoxConstraints.fromJson(json);
}

/// @nodoc
mixin _$MiraiBoxConstraints {
  double get minWidth => throw _privateConstructorUsedError;
  double get maxWidth => throw _privateConstructorUsedError;
  double get minHeight => throw _privateConstructorUsedError;
  double get maxHeight => throw _privateConstructorUsedError;

  /// Serializes this MiraiBoxConstraints to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiBoxConstraintsCopyWith<MiraiBoxConstraints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiBoxConstraintsCopyWith<$Res> {
  factory $MiraiBoxConstraintsCopyWith(
          MiraiBoxConstraints value, $Res Function(MiraiBoxConstraints) then) =
      _$MiraiBoxConstraintsCopyWithImpl<$Res, MiraiBoxConstraints>;
  @useResult
  $Res call(
      {double minWidth, double maxWidth, double minHeight, double maxHeight});
}

/// @nodoc
class _$MiraiBoxConstraintsCopyWithImpl<$Res, $Val extends MiraiBoxConstraints>
    implements $MiraiBoxConstraintsCopyWith<$Res> {
  _$MiraiBoxConstraintsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiBoxConstraints
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
abstract class _$$MiraiBoxConstraintsImplCopyWith<$Res>
    implements $MiraiBoxConstraintsCopyWith<$Res> {
  factory _$$MiraiBoxConstraintsImplCopyWith(_$MiraiBoxConstraintsImpl value,
          $Res Function(_$MiraiBoxConstraintsImpl) then) =
      __$$MiraiBoxConstraintsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double minWidth, double maxWidth, double minHeight, double maxHeight});
}

/// @nodoc
class __$$MiraiBoxConstraintsImplCopyWithImpl<$Res>
    extends _$MiraiBoxConstraintsCopyWithImpl<$Res, _$MiraiBoxConstraintsImpl>
    implements _$$MiraiBoxConstraintsImplCopyWith<$Res> {
  __$$MiraiBoxConstraintsImplCopyWithImpl(_$MiraiBoxConstraintsImpl _value,
      $Res Function(_$MiraiBoxConstraintsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWidth = null,
    Object? maxWidth = null,
    Object? minHeight = null,
    Object? maxHeight = null,
  }) {
    return _then(_$MiraiBoxConstraintsImpl(
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
class _$MiraiBoxConstraintsImpl implements _MiraiBoxConstraints {
  const _$MiraiBoxConstraintsImpl(
      {required this.minWidth,
      required this.maxWidth,
      required this.minHeight,
      required this.maxHeight});

  factory _$MiraiBoxConstraintsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiBoxConstraintsImplFromJson(json);

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
    return 'MiraiBoxConstraints(minWidth: $minWidth, maxWidth: $maxWidth, minHeight: $minHeight, maxHeight: $maxHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiBoxConstraintsImpl &&
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

  /// Create a copy of MiraiBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiBoxConstraintsImplCopyWith<_$MiraiBoxConstraintsImpl> get copyWith =>
      __$$MiraiBoxConstraintsImplCopyWithImpl<_$MiraiBoxConstraintsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiBoxConstraintsImplToJson(
      this,
    );
  }
}

abstract class _MiraiBoxConstraints implements MiraiBoxConstraints {
  const factory _MiraiBoxConstraints(
      {required final double minWidth,
      required final double maxWidth,
      required final double minHeight,
      required final double maxHeight}) = _$MiraiBoxConstraintsImpl;

  factory _MiraiBoxConstraints.fromJson(Map<String, dynamic> json) =
      _$MiraiBoxConstraintsImpl.fromJson;

  @override
  double get minWidth;
  @override
  double get maxWidth;
  @override
  double get minHeight;
  @override
  double get maxHeight;

  /// Create a copy of MiraiBoxConstraints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiBoxConstraintsImplCopyWith<_$MiraiBoxConstraintsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
