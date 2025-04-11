// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_colored_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacColoredBox {
  String get color;
  Map<String, dynamic>? get child;

  /// Create a copy of StacColoredBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacColoredBoxCopyWith<StacColoredBox> get copyWith =>
      _$StacColoredBoxCopyWithImpl<StacColoredBox>(
          this as StacColoredBox, _$identity);

  /// Serializes this StacColoredBox to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacColoredBox &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, color, const DeepCollectionEquality().hash(child));

  @override
  String toString() {
    return 'StacColoredBox(color: $color, child: $child)';
  }
}

/// @nodoc
abstract mixin class $StacColoredBoxCopyWith<$Res> {
  factory $StacColoredBoxCopyWith(
          StacColoredBox value, $Res Function(StacColoredBox) _then) =
      _$StacColoredBoxCopyWithImpl;
  @useResult
  $Res call({String color, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacColoredBoxCopyWithImpl<$Res>
    implements $StacColoredBoxCopyWith<$Res> {
  _$StacColoredBoxCopyWithImpl(this._self, this._then);

  final StacColoredBox _self;
  final $Res Function(StacColoredBox) _then;

  /// Create a copy of StacColoredBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? child = freezed,
  }) {
    return _then(_self.copyWith(
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
class _StacColoredBox implements StacColoredBox {
  const _StacColoredBox(
      {required this.color, final Map<String, dynamic>? child})
      : _child = child;
  factory _StacColoredBox.fromJson(Map<String, dynamic> json) =>
      _$StacColoredBoxFromJson(json);

  @override
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

  /// Create a copy of StacColoredBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacColoredBoxCopyWith<_StacColoredBox> get copyWith =>
      __$StacColoredBoxCopyWithImpl<_StacColoredBox>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacColoredBoxToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacColoredBox &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, color, const DeepCollectionEquality().hash(_child));

  @override
  String toString() {
    return 'StacColoredBox(color: $color, child: $child)';
  }
}

/// @nodoc
abstract mixin class _$StacColoredBoxCopyWith<$Res>
    implements $StacColoredBoxCopyWith<$Res> {
  factory _$StacColoredBoxCopyWith(
          _StacColoredBox value, $Res Function(_StacColoredBox) _then) =
      __$StacColoredBoxCopyWithImpl;
  @override
  @useResult
  $Res call({String color, Map<String, dynamic>? child});
}

/// @nodoc
class __$StacColoredBoxCopyWithImpl<$Res>
    implements _$StacColoredBoxCopyWith<$Res> {
  __$StacColoredBoxCopyWithImpl(this._self, this._then);

  final _StacColoredBox _self;
  final $Res Function(_StacColoredBox) _then;

  /// Create a copy of StacColoredBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? color = null,
    Object? child = freezed,
  }) {
    return _then(_StacColoredBox(
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
