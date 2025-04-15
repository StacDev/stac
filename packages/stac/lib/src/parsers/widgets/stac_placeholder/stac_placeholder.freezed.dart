// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_placeholder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacPlaceholder {
  double get fallbackWidth;
  double get fallbackHeight;
  double get strokeWidth;
  String get color;
  Map<String, dynamic>? get child;

  /// Create a copy of StacPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacPlaceholderCopyWith<StacPlaceholder> get copyWith =>
      _$StacPlaceholderCopyWithImpl<StacPlaceholder>(
          this as StacPlaceholder, _$identity);

  /// Serializes this StacPlaceholder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacPlaceholder &&
            (identical(other.fallbackWidth, fallbackWidth) ||
                other.fallbackWidth == fallbackWidth) &&
            (identical(other.fallbackHeight, fallbackHeight) ||
                other.fallbackHeight == fallbackHeight) &&
            (identical(other.strokeWidth, strokeWidth) ||
                other.strokeWidth == strokeWidth) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fallbackWidth, fallbackHeight,
      strokeWidth, color, const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacPlaceholder(fallbackWidth: $fallbackWidth, fallbackHeight: $fallbackHeight, strokeWidth: $strokeWidth, color: $color, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacPlaceholderCopyWith<$Res> {
  factory $StacPlaceholderCopyWith(
          StacPlaceholder value, $Res Function(StacPlaceholder) _then) =
      _$StacPlaceholderCopyWithImpl;
  @useResult
  $Res call(
      {double fallbackWidth,
      double fallbackHeight,
      double strokeWidth,
      String color,
      Map<String, dynamic>? child});
}

/// @nodoc
class _$StacPlaceholderCopyWithImpl<$Res>
    implements $StacPlaceholderCopyWith<$Res> {
  _$StacPlaceholderCopyWithImpl(this._self, this._then);

  final StacPlaceholder _self;
  final $Res Function(StacPlaceholder) _then;

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
    return _then(_self.copyWith(
      fallbackWidth: null == fallbackWidth
          ? _self.fallbackWidth
          : fallbackWidth // ignore: cast_nullable_to_non_nullable
              as double,
      fallbackHeight: null == fallbackHeight
          ? _self.fallbackHeight
          : fallbackHeight // ignore: cast_nullable_to_non_nullable
              as double,
      strokeWidth: null == strokeWidth
          ? _self.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacPlaceholder implements StacPlaceholder {
  const _StacPlaceholder(
      {this.fallbackWidth = 2.0,
      this.fallbackHeight = 400.0,
      this.strokeWidth = 400.0,
      this.color = '#455A64',
      final Map<String, dynamic>? child})
      : _child = child;
  factory _StacPlaceholder.fromJson(Map<String, dynamic> json) =>
      _$StacPlaceholderFromJson(json);

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

  /// Create a copy of StacPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacPlaceholderCopyWith<_StacPlaceholder> get copyWith =>
      __$StacPlaceholderCopyWithImpl<_StacPlaceholder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacPlaceholderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacPlaceholder &&
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

  @override
  String toString() {
    return 'StacPlaceholder(fallbackWidth: $fallbackWidth, fallbackHeight: $fallbackHeight, strokeWidth: $strokeWidth, color: $color, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacPlaceholderCopyWith<$Res>
    implements $StacPlaceholderCopyWith<$Res> {
  factory _$StacPlaceholderCopyWith(
          _StacPlaceholder value, $Res Function(_StacPlaceholder) _then) =
      __$StacPlaceholderCopyWithImpl;
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
class __$StacPlaceholderCopyWithImpl<$Res>
    implements _$StacPlaceholderCopyWith<$Res> {
  __$StacPlaceholderCopyWithImpl(this._self, this._then);

  final _StacPlaceholder _self;
  final $Res Function(_StacPlaceholder) _then;

  /// Create a copy of StacPlaceholder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fallbackWidth = null,
    Object? fallbackHeight = null,
    Object? strokeWidth = null,
    Object? color = null,
    Object? child = freezed,
  }) {
    return _then(_StacPlaceholder(
      fallbackWidth: null == fallbackWidth
          ? _self.fallbackWidth
          : fallbackWidth // ignore: cast_nullable_to_non_nullable
              as double,
      fallbackHeight: null == fallbackHeight
          ? _self.fallbackHeight
          : fallbackHeight // ignore: cast_nullable_to_non_nullable
              as double,
      strokeWidth: null == strokeWidth
          ? _self.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
