// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_edge_insets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiEdgeInsets _$MiraiEdgeInsetsFromJson(Map<String, dynamic> json) {
  return _MiraiEdgeInsets.fromJson(json);
}

/// @nodoc
mixin _$MiraiEdgeInsets {
  double? get left => throw _privateConstructorUsedError;
  double? get top => throw _privateConstructorUsedError;
  double? get right => throw _privateConstructorUsedError;
  double? get bottom => throw _privateConstructorUsedError;

  /// Serializes this MiraiEdgeInsets to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiEdgeInsets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiEdgeInsetsCopyWith<MiraiEdgeInsets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiEdgeInsetsCopyWith<$Res> {
  factory $MiraiEdgeInsetsCopyWith(
          MiraiEdgeInsets value, $Res Function(MiraiEdgeInsets) then) =
      _$MiraiEdgeInsetsCopyWithImpl<$Res, MiraiEdgeInsets>;
  @useResult
  $Res call({double? left, double? top, double? right, double? bottom});
}

/// @nodoc
class _$MiraiEdgeInsetsCopyWithImpl<$Res, $Val extends MiraiEdgeInsets>
    implements $MiraiEdgeInsetsCopyWith<$Res> {
  _$MiraiEdgeInsetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiEdgeInsets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
  }) {
    return _then(_value.copyWith(
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double?,
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiEdgeInsetsImplCopyWith<$Res>
    implements $MiraiEdgeInsetsCopyWith<$Res> {
  factory _$$MiraiEdgeInsetsImplCopyWith(_$MiraiEdgeInsetsImpl value,
          $Res Function(_$MiraiEdgeInsetsImpl) then) =
      __$$MiraiEdgeInsetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? left, double? top, double? right, double? bottom});
}

/// @nodoc
class __$$MiraiEdgeInsetsImplCopyWithImpl<$Res>
    extends _$MiraiEdgeInsetsCopyWithImpl<$Res, _$MiraiEdgeInsetsImpl>
    implements _$$MiraiEdgeInsetsImplCopyWith<$Res> {
  __$$MiraiEdgeInsetsImplCopyWithImpl(
      _$MiraiEdgeInsetsImpl _value, $Res Function(_$MiraiEdgeInsetsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiEdgeInsets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
  }) {
    return _then(_$MiraiEdgeInsetsImpl(
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double?,
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiEdgeInsetsImpl implements _MiraiEdgeInsets {
  const _$MiraiEdgeInsetsImpl({this.left, this.top, this.right, this.bottom});

  factory _$MiraiEdgeInsetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiEdgeInsetsImplFromJson(json);

  @override
  final double? left;
  @override
  final double? top;
  @override
  final double? right;
  @override
  final double? bottom;

  @override
  String toString() {
    return 'MiraiEdgeInsets(left: $left, top: $top, right: $right, bottom: $bottom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiEdgeInsetsImpl &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, left, top, right, bottom);

  /// Create a copy of MiraiEdgeInsets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiEdgeInsetsImplCopyWith<_$MiraiEdgeInsetsImpl> get copyWith =>
      __$$MiraiEdgeInsetsImplCopyWithImpl<_$MiraiEdgeInsetsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiEdgeInsetsImplToJson(
      this,
    );
  }
}

abstract class _MiraiEdgeInsets implements MiraiEdgeInsets {
  const factory _MiraiEdgeInsets(
      {final double? left,
      final double? top,
      final double? right,
      final double? bottom}) = _$MiraiEdgeInsetsImpl;

  factory _MiraiEdgeInsets.fromJson(Map<String, dynamic> json) =
      _$MiraiEdgeInsetsImpl.fromJson;

  @override
  double? get left;
  @override
  double? get top;
  @override
  double? get right;
  @override
  double? get bottom;

  /// Create a copy of MiraiEdgeInsets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiEdgeInsetsImplCopyWith<_$MiraiEdgeInsetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
