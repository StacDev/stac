// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_limited_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacLimitedBox {
  double get maxHeight;
  double get maxWidth;
  Map<String, dynamic>? get child;

  /// Create a copy of StacLimitedBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacLimitedBoxCopyWith<StacLimitedBox> get copyWith =>
      _$StacLimitedBoxCopyWithImpl<StacLimitedBox>(
          this as StacLimitedBox, _$identity);

  /// Serializes this StacLimitedBox to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacLimitedBox &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maxHeight, maxWidth,
      const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacLimitedBox(maxHeight: $maxHeight, maxWidth: $maxWidth, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacLimitedBoxCopyWith<$Res> {
  factory $StacLimitedBoxCopyWith(
          StacLimitedBox value, $Res Function(StacLimitedBox) _then) =
      _$StacLimitedBoxCopyWithImpl;
  @useResult
  $Res call({double maxHeight, double maxWidth, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacLimitedBoxCopyWithImpl<$Res>
    implements $StacLimitedBoxCopyWith<$Res> {
  _$StacLimitedBoxCopyWithImpl(this._self, this._then);

  final StacLimitedBox _self;
  final $Res Function(StacLimitedBox) _then;

  /// Create a copy of StacLimitedBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxHeight = null,
    Object? maxWidth = null,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      maxHeight: null == maxHeight
          ? _self.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: null == maxWidth
          ? _self.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacLimitedBox implements StacLimitedBox {
  const _StacLimitedBox(
      {this.maxHeight = double.infinity,
      this.maxWidth = double.infinity,
      final Map<String, dynamic>? child})
      : _child = child;
  factory _StacLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$StacLimitedBoxFromJson(json);

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

  /// Create a copy of StacLimitedBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacLimitedBoxCopyWith<_StacLimitedBox> get copyWith =>
      __$StacLimitedBoxCopyWithImpl<_StacLimitedBox>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacLimitedBoxToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacLimitedBox &&
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

  @override
  String toString() {
    return 'StacLimitedBox(maxHeight: $maxHeight, maxWidth: $maxWidth, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacLimitedBoxCopyWith<$Res>
    implements $StacLimitedBoxCopyWith<$Res> {
  factory _$StacLimitedBoxCopyWith(
          _StacLimitedBox value, $Res Function(_StacLimitedBox) _then) =
      __$StacLimitedBoxCopyWithImpl;
  @override
  @useResult
  $Res call({double maxHeight, double maxWidth, Map<String, dynamic>? child});
}

/// @nodoc
class __$StacLimitedBoxCopyWithImpl<$Res>
    implements _$StacLimitedBoxCopyWith<$Res> {
  __$StacLimitedBoxCopyWithImpl(this._self, this._then);

  final _StacLimitedBox _self;
  final $Res Function(_StacLimitedBox) _then;

  /// Create a copy of StacLimitedBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? maxHeight = null,
    Object? maxWidth = null,
    Object? child = freezed,
  }) {
    return _then(_StacLimitedBox(
      maxHeight: null == maxHeight
          ? _self.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: null == maxWidth
          ? _self.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
