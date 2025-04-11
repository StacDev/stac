// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_sized_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSizedBox {
  double? get width;
  double? get height;
  Map<String, dynamic>? get child;

  /// Create a copy of StacSizedBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSizedBoxCopyWith<StacSizedBox> get copyWith =>
      _$StacSizedBoxCopyWithImpl<StacSizedBox>(
          this as StacSizedBox, _$identity);

  /// Serializes this StacSizedBox to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSizedBox &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, width, height, const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacSizedBox(width: $width, height: $height, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacSizedBoxCopyWith<$Res> {
  factory $StacSizedBoxCopyWith(
          StacSizedBox value, $Res Function(StacSizedBox) _then) =
      _$StacSizedBoxCopyWithImpl;
  @useResult
  $Res call({double? width, double? height, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacSizedBoxCopyWithImpl<$Res> implements $StacSizedBoxCopyWith<$Res> {
  _$StacSizedBoxCopyWithImpl(this._self, this._then);

  final StacSizedBox _self;
  final $Res Function(StacSizedBox) _then;

  /// Create a copy of StacSizedBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacSizedBox implements StacSizedBox {
  const _StacSizedBox(
      {this.width, this.height, final Map<String, dynamic>? child})
      : _child = child;
  factory _StacSizedBox.fromJson(Map<String, dynamic> json) =>
      _$StacSizedBoxFromJson(json);

  @override
  final double? width;
  @override
  final double? height;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacSizedBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSizedBoxCopyWith<_StacSizedBox> get copyWith =>
      __$StacSizedBoxCopyWithImpl<_StacSizedBox>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSizedBoxToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSizedBox &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, width, height, const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacSizedBox(width: $width, height: $height, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacSizedBoxCopyWith<$Res>
    implements $StacSizedBoxCopyWith<$Res> {
  factory _$StacSizedBoxCopyWith(
          _StacSizedBox value, $Res Function(_StacSizedBox) _then) =
      __$StacSizedBoxCopyWithImpl;
  @override
  @useResult
  $Res call({double? width, double? height, Map<String, dynamic>? child});
}

/// @nodoc
class __$StacSizedBoxCopyWithImpl<$Res>
    implements _$StacSizedBoxCopyWith<$Res> {
  __$StacSizedBoxCopyWithImpl(this._self, this._then);

  final _StacSizedBox _self;
  final $Res Function(_StacSizedBox) _then;

  /// Create a copy of StacSizedBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? child = freezed,
  }) {
    return _then(_StacSizedBox(
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
