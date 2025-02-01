// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_placeholder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacPlaceholder _$StacPlaceholderFromJson(Map<String, dynamic> json) {
  return _StacPlaceholder.fromJson(json);
}

/// @nodoc
mixin _$StacPlaceholder {
  double get fallbackWidth => throw _privateConstructorUsedError;
  double get fallbackHeight => throw _privateConstructorUsedError;
  double get strokeWidth => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this StacPlaceholder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacPlaceholderCopyWith<StacPlaceholder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacPlaceholderCopyWith<$Res> {
  factory $StacPlaceholderCopyWith(
          StacPlaceholder value, $Res Function(StacPlaceholder) then) =
      _$StacPlaceholderCopyWithImpl<$Res, StacPlaceholder>;
  @useResult
  $Res call(
      {double fallbackWidth,
      double fallbackHeight,
      double strokeWidth,
      String color,
      Map<String, dynamic>? child});
}

/// @nodoc
class _$StacPlaceholderCopyWithImpl<$Res, $Val extends StacPlaceholder>
    implements $StacPlaceholderCopyWith<$Res> {
  _$StacPlaceholderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fallbackWidth = null,
    Object? fallbackHeight = null,
    Object? strokeWidth = null,
    Object? color = null,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      fallbackWidth: null == fallbackWidth
          ? _value.fallbackWidth
          : fallbackWidth // ignore: cast_nullable_to_non_nullable
              as double,
      fallbackHeight: null == fallbackHeight
          ? _value.fallbackHeight
          : fallbackHeight // ignore: cast_nullable_to_non_nullable
              as double,
      strokeWidth: null == strokeWidth
          ? _value.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$StacPlaceholderImplCopyWith<$Res>
    implements $StacPlaceholderCopyWith<$Res> {
  factory _$$StacPlaceholderImplCopyWith(_$StacPlaceholderImpl value,
          $Res Function(_$StacPlaceholderImpl) then) =
      __$$StacPlaceholderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double fallbackWidth,
      double fallbackHeight,
      double strokeWidth,
      String color,
      Map<String, dynamic>? child});
}

/// @nodoc
class __$$StacPlaceholderImplCopyWithImpl<$Res>
    extends _$StacPlaceholderCopyWithImpl<$Res, _$StacPlaceholderImpl>
    implements _$$StacPlaceholderImplCopyWith<$Res> {
  __$$StacPlaceholderImplCopyWithImpl(
      _$StacPlaceholderImpl _value, $Res Function(_$StacPlaceholderImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fallbackWidth = null,
    Object? fallbackHeight = null,
    Object? strokeWidth = null,
    Object? color = null,
    Object? child = freezed,
  }) {
    return _then(_$StacPlaceholderImpl(
      fallbackWidth: null == fallbackWidth
          ? _value.fallbackWidth
          : fallbackWidth // ignore: cast_nullable_to_non_nullable
              as double,
      fallbackHeight: null == fallbackHeight
          ? _value.fallbackHeight
          : fallbackHeight // ignore: cast_nullable_to_non_nullable
              as double,
      strokeWidth: null == strokeWidth
          ? _value.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$StacPlaceholderImpl implements _StacPlaceholder {
  const _$StacPlaceholderImpl(
      {this.fallbackWidth = 2.0,
      this.fallbackHeight = 400.0,
      this.strokeWidth = 400.0,
      this.color = '#455A64',
      final Map<String, dynamic>? child})
      : _child = child;

  factory _$StacPlaceholderImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacPlaceholderImplFromJson(json);

  @override
  @JsonKey()
  final double fallbackWidth;
  @override
  @JsonKey()
  final double fallbackHeight;
  @override
  @JsonKey()
  final double strokeWidth;
  @override
  @JsonKey()
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
    return 'StacPlaceholder(fallbackWidth: $fallbackWidth, fallbackHeight: $fallbackHeight, strokeWidth: $strokeWidth, color: $color, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacPlaceholderImpl &&
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

  /// Create a copy of StacPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacPlaceholderImplCopyWith<_$StacPlaceholderImpl> get copyWith =>
      __$$StacPlaceholderImplCopyWithImpl<_$StacPlaceholderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacPlaceholderImplToJson(
      this,
    );
  }
}

abstract class _StacPlaceholder implements StacPlaceholder {
  const factory _StacPlaceholder(
      {final double fallbackWidth,
      final double fallbackHeight,
      final double strokeWidth,
      final String color,
      final Map<String, dynamic>? child}) = _$StacPlaceholderImpl;

  factory _StacPlaceholder.fromJson(Map<String, dynamic> json) =
      _$StacPlaceholderImpl.fromJson;

  @override
  double get fallbackWidth;
  @override
  double get fallbackHeight;
  @override
  double get strokeWidth;
  @override
  String get color;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of StacPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacPlaceholderImplCopyWith<_$StacPlaceholderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
