// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_placeholder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiPlaceholder _$MiraiPlaceholderFromJson(Map<String, dynamic> json) {
  return _MiraiPlaceholder.fromJson(json);
}

/// @nodoc
mixin _$MiraiPlaceholder {
  double? get fallbackWidth => throw _privateConstructorUsedError;
  double? get fallbackHeight => throw _privateConstructorUsedError;
  double? get strokeWidth => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiPlaceholder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiPlaceholderCopyWith<MiraiPlaceholder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiPlaceholderCopyWith<$Res> {
  factory $MiraiPlaceholderCopyWith(
          MiraiPlaceholder value, $Res Function(MiraiPlaceholder) then) =
      _$MiraiPlaceholderCopyWithImpl<$Res, MiraiPlaceholder>;
  @useResult
  $Res call(
      {double? fallbackWidth,
      double? fallbackHeight,
      double? strokeWidth,
      String? color,
      Map<String, dynamic>? child});
}

/// @nodoc
class _$MiraiPlaceholderCopyWithImpl<$Res, $Val extends MiraiPlaceholder>
    implements $MiraiPlaceholderCopyWith<$Res> {
  _$MiraiPlaceholderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fallbackWidth = freezed,
    Object? fallbackHeight = freezed,
    Object? strokeWidth = freezed,
    Object? color = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      fallbackWidth: freezed == fallbackWidth
          ? _value.fallbackWidth
          : fallbackWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      fallbackHeight: freezed == fallbackHeight
          ? _value.fallbackHeight
          : fallbackHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      strokeWidth: freezed == strokeWidth
          ? _value.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiPlaceholderImplCopyWith<$Res>
    implements $MiraiPlaceholderCopyWith<$Res> {
  factory _$$MiraiPlaceholderImplCopyWith(_$MiraiPlaceholderImpl value,
          $Res Function(_$MiraiPlaceholderImpl) then) =
      __$$MiraiPlaceholderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? fallbackWidth,
      double? fallbackHeight,
      double? strokeWidth,
      String? color,
      Map<String, dynamic>? child});
}

/// @nodoc
class __$$MiraiPlaceholderImplCopyWithImpl<$Res>
    extends _$MiraiPlaceholderCopyWithImpl<$Res, _$MiraiPlaceholderImpl>
    implements _$$MiraiPlaceholderImplCopyWith<$Res> {
  __$$MiraiPlaceholderImplCopyWithImpl(_$MiraiPlaceholderImpl _value,
      $Res Function(_$MiraiPlaceholderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fallbackWidth = freezed,
    Object? fallbackHeight = freezed,
    Object? strokeWidth = freezed,
    Object? color = freezed,
    Object? child = freezed,
  }) {
    return _then(_$MiraiPlaceholderImpl(
      fallbackWidth: freezed == fallbackWidth
          ? _value.fallbackWidth
          : fallbackWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      fallbackHeight: freezed == fallbackHeight
          ? _value.fallbackHeight
          : fallbackHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      strokeWidth: freezed == strokeWidth
          ? _value.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiPlaceholderImpl implements _MiraiPlaceholder {
  const _$MiraiPlaceholderImpl(
      {this.fallbackWidth,
      this.fallbackHeight,
      this.strokeWidth,
      this.color,
      final Map<String, dynamic>? child})
      : _child = child;

  factory _$MiraiPlaceholderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiPlaceholderImplFromJson(json);

  @override
  final double? fallbackWidth;
  @override
  final double? fallbackHeight;
  @override
  final double? strokeWidth;
  @override
  final String? color;
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
    return 'MiraiPlaceholder(fallbackWidth: $fallbackWidth, fallbackHeight: $fallbackHeight, strokeWidth: $strokeWidth, color: $color, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiPlaceholderImpl &&
            (identical(other.fallbackWidth, fallbackWidth) ||
                other.fallbackWidth == fallbackWidth) &&
            (identical(other.fallbackHeight, fallbackHeight) ||
                other.fallbackHeight == fallbackHeight) &&
            (identical(other.strokeWidth, strokeWidth) ||
                other.strokeWidth == strokeWidth) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fallbackWidth, fallbackHeight,
      strokeWidth, color, const DeepCollectionEquality().hash(_child));

  /// Create a copy of MiraiPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiPlaceholderImplCopyWith<_$MiraiPlaceholderImpl> get copyWith =>
      __$$MiraiPlaceholderImplCopyWithImpl<_$MiraiPlaceholderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiPlaceholderImplToJson(
      this,
    );
  }
}

abstract class _MiraiPlaceholder implements MiraiPlaceholder {
  const factory _MiraiPlaceholder(
      {final double? fallbackWidth,
      final double? fallbackHeight,
      final double? strokeWidth,
      final String? color,
      final Map<String, dynamic>? child}) = _$MiraiPlaceholderImpl;

  factory _MiraiPlaceholder.fromJson(Map<String, dynamic> json) =
      _$MiraiPlaceholderImpl.fromJson;

  @override
  double? get fallbackWidth;
  @override
  double? get fallbackHeight;
  @override
  double? get strokeWidth;
  @override
  String? get color;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of MiraiPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiPlaceholderImplCopyWith<_$MiraiPlaceholderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
