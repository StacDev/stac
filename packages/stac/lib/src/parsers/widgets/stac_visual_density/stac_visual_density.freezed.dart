// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_visual_density.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacVisualDensity {
  double get horizontal;
  double get vertical;

  /// Create a copy of StacVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacVisualDensityCopyWith<StacVisualDensity> get copyWith =>
      _$StacVisualDensityCopyWithImpl<StacVisualDensity>(
          this as StacVisualDensity, _$identity);

  /// Serializes this StacVisualDensity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacVisualDensity &&
            (identical(other.horizontal, horizontal) ||
                other.horizontal == horizontal) &&
            (identical(other.vertical, vertical) ||
                other.vertical == vertical));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, horizontal, vertical);

  @override
  String toString() {
    return 'StacVisualDensity(horizontal: $horizontal, vertical: $vertical)';
  }
}

/// @nodoc
abstract mixin class $StacVisualDensityCopyWith<$Res> {
  factory $StacVisualDensityCopyWith(
          StacVisualDensity value, $Res Function(StacVisualDensity) _then) =
      _$StacVisualDensityCopyWithImpl;
  @useResult
  $Res call({double horizontal, double vertical});
}

/// @nodoc
class _$StacVisualDensityCopyWithImpl<$Res>
    implements $StacVisualDensityCopyWith<$Res> {
  _$StacVisualDensityCopyWithImpl(this._self, this._then);

  final StacVisualDensity _self;
  final $Res Function(StacVisualDensity) _then;

  /// Create a copy of StacVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horizontal = null,
    Object? vertical = null,
  }) {
    return _then(_self.copyWith(
      horizontal: null == horizontal
          ? _self.horizontal
          : horizontal // ignore: cast_nullable_to_non_nullable
              as double,
      vertical: null == vertical
          ? _self.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacVisualDensity implements StacVisualDensity {
  const _StacVisualDensity({required this.horizontal, required this.vertical});
  factory _StacVisualDensity.fromJson(Map<String, dynamic> json) =>
      _$StacVisualDensityFromJson(json);

  @override
  final double horizontal;
  @override
  final double vertical;

  /// Create a copy of StacVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacVisualDensityCopyWith<_StacVisualDensity> get copyWith =>
      __$StacVisualDensityCopyWithImpl<_StacVisualDensity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacVisualDensityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacVisualDensity &&
            (identical(other.horizontal, horizontal) ||
                other.horizontal == horizontal) &&
            (identical(other.vertical, vertical) ||
                other.vertical == vertical));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, horizontal, vertical);

  @override
  String toString() {
    return 'StacVisualDensity(horizontal: $horizontal, vertical: $vertical)';
  }
}

/// @nodoc
abstract mixin class _$StacVisualDensityCopyWith<$Res>
    implements $StacVisualDensityCopyWith<$Res> {
  factory _$StacVisualDensityCopyWith(
          _StacVisualDensity value, $Res Function(_StacVisualDensity) _then) =
      __$StacVisualDensityCopyWithImpl;
  @override
  @useResult
  $Res call({double horizontal, double vertical});
}

/// @nodoc
class __$StacVisualDensityCopyWithImpl<$Res>
    implements _$StacVisualDensityCopyWith<$Res> {
  __$StacVisualDensityCopyWithImpl(this._self, this._then);

  final _StacVisualDensity _self;
  final $Res Function(_StacVisualDensity) _then;

  /// Create a copy of StacVisualDensity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? horizontal = null,
    Object? vertical = null,
  }) {
    return _then(_StacVisualDensity(
      horizontal: null == horizontal
          ? _self.horizontal
          : horizontal // ignore: cast_nullable_to_non_nullable
              as double,
      vertical: null == vertical
          ? _self.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
