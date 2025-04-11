// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_divider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDivider {
  double? get thickness;
  double? get height;
  String? get color;

  /// Create a copy of StacDivider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDividerCopyWith<StacDivider> get copyWith =>
      _$StacDividerCopyWithImpl<StacDivider>(this as StacDivider, _$identity);

  /// Serializes this StacDivider to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDivider &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, thickness, height, color);

  @override
  String toString() {
    return 'StacDivider(thickness: $thickness, height: $height, color: $color)';
  }
}

/// @nodoc
abstract mixin class $StacDividerCopyWith<$Res> {
  factory $StacDividerCopyWith(
          StacDivider value, $Res Function(StacDivider) _then) =
      _$StacDividerCopyWithImpl;
  @useResult
  $Res call({double? thickness, double? height, String? color});
}

/// @nodoc
class _$StacDividerCopyWithImpl<$Res> implements $StacDividerCopyWith<$Res> {
  _$StacDividerCopyWithImpl(this._self, this._then);

  final StacDivider _self;
  final $Res Function(StacDivider) _then;

  /// Create a copy of StacDivider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thickness = freezed,
    Object? height = freezed,
    Object? color = freezed,
  }) {
    return _then(_self.copyWith(
      thickness: freezed == thickness
          ? _self.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacDivider implements StacDivider {
  const _StacDivider({this.thickness, this.height, this.color});
  factory _StacDivider.fromJson(Map<String, dynamic> json) =>
      _$StacDividerFromJson(json);

  @override
  final double? thickness;
  @override
  final double? height;
  @override
  final String? color;

  /// Create a copy of StacDivider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDividerCopyWith<_StacDivider> get copyWith =>
      __$StacDividerCopyWithImpl<_StacDivider>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDividerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDivider &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, thickness, height, color);

  @override
  String toString() {
    return 'StacDivider(thickness: $thickness, height: $height, color: $color)';
  }
}

/// @nodoc
abstract mixin class _$StacDividerCopyWith<$Res>
    implements $StacDividerCopyWith<$Res> {
  factory _$StacDividerCopyWith(
          _StacDivider value, $Res Function(_StacDivider) _then) =
      __$StacDividerCopyWithImpl;
  @override
  @useResult
  $Res call({double? thickness, double? height, String? color});
}

/// @nodoc
class __$StacDividerCopyWithImpl<$Res> implements _$StacDividerCopyWith<$Res> {
  __$StacDividerCopyWithImpl(this._self, this._then);

  final _StacDivider _self;
  final $Res Function(_StacDivider) _then;

  /// Create a copy of StacDivider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? thickness = freezed,
    Object? height = freezed,
    Object? color = freezed,
  }) {
    return _then(_StacDivider(
      thickness: freezed == thickness
          ? _self.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
