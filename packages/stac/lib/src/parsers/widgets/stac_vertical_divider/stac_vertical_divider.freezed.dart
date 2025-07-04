// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_vertical_divider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacVerticalDivider {
  StacDouble? get width;
  StacDouble? get thickness;
  StacDouble? get indent;
  StacDouble? get endIndent;
  String? get color;

  /// Create a copy of StacVerticalDivider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacVerticalDividerCopyWith<StacVerticalDivider> get copyWith =>
      _$StacVerticalDividerCopyWithImpl<StacVerticalDivider>(
          this as StacVerticalDivider, _$identity);

  /// Serializes this StacVerticalDivider to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacVerticalDivider &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.indent, indent) || other.indent == indent) &&
            (identical(other.endIndent, endIndent) ||
                other.endIndent == endIndent) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, width, thickness, indent, endIndent, color);

  @override
  String toString() {
    return 'StacVerticalDivider(width: $width, thickness: $thickness, indent: $indent, endIndent: $endIndent, color: $color)';
  }
}

/// @nodoc
abstract mixin class $StacVerticalDividerCopyWith<$Res> {
  factory $StacVerticalDividerCopyWith(
          StacVerticalDivider value, $Res Function(StacVerticalDivider) _then) =
      _$StacVerticalDividerCopyWithImpl;
  @useResult
  $Res call(
      {StacDouble? width,
      StacDouble? thickness,
      StacDouble? indent,
      StacDouble? endIndent,
      String? color});
}

/// @nodoc
class _$StacVerticalDividerCopyWithImpl<$Res>
    implements $StacVerticalDividerCopyWith<$Res> {
  _$StacVerticalDividerCopyWithImpl(this._self, this._then);

  final StacVerticalDivider _self;
  final $Res Function(StacVerticalDivider) _then;

  /// Create a copy of StacVerticalDivider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? thickness = freezed,
    Object? indent = freezed,
    Object? endIndent = freezed,
    Object? color = freezed,
  }) {
    return _then(_self.copyWith(
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      thickness: freezed == thickness
          ? _self.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      indent: freezed == indent
          ? _self.indent
          : indent // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      endIndent: freezed == endIndent
          ? _self.endIndent
          : endIndent // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacVerticalDivider implements StacVerticalDivider {
  const _StacVerticalDivider(
      {this.width, this.thickness, this.indent, this.endIndent, this.color});
  factory _StacVerticalDivider.fromJson(Map<String, dynamic> json) =>
      _$StacVerticalDividerFromJson(json);

  @override
  final StacDouble? width;
  @override
  final StacDouble? thickness;
  @override
  final StacDouble? indent;
  @override
  final StacDouble? endIndent;
  @override
  final String? color;

  /// Create a copy of StacVerticalDivider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacVerticalDividerCopyWith<_StacVerticalDivider> get copyWith =>
      __$StacVerticalDividerCopyWithImpl<_StacVerticalDivider>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacVerticalDividerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacVerticalDivider &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.indent, indent) || other.indent == indent) &&
            (identical(other.endIndent, endIndent) ||
                other.endIndent == endIndent) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, width, thickness, indent, endIndent, color);

  @override
  String toString() {
    return 'StacVerticalDivider(width: $width, thickness: $thickness, indent: $indent, endIndent: $endIndent, color: $color)';
  }
}

/// @nodoc
abstract mixin class _$StacVerticalDividerCopyWith<$Res>
    implements $StacVerticalDividerCopyWith<$Res> {
  factory _$StacVerticalDividerCopyWith(_StacVerticalDivider value,
          $Res Function(_StacVerticalDivider) _then) =
      __$StacVerticalDividerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacDouble? width,
      StacDouble? thickness,
      StacDouble? indent,
      StacDouble? endIndent,
      String? color});
}

/// @nodoc
class __$StacVerticalDividerCopyWithImpl<$Res>
    implements _$StacVerticalDividerCopyWith<$Res> {
  __$StacVerticalDividerCopyWithImpl(this._self, this._then);

  final _StacVerticalDivider _self;
  final $Res Function(_StacVerticalDivider) _then;

  /// Create a copy of StacVerticalDivider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? width = freezed,
    Object? thickness = freezed,
    Object? indent = freezed,
    Object? endIndent = freezed,
    Object? color = freezed,
  }) {
    return _then(_StacVerticalDivider(
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      thickness: freezed == thickness
          ? _self.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      indent: freezed == indent
          ? _self.indent
          : indent // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      endIndent: freezed == endIndent
          ? _self.endIndent
          : endIndent // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
