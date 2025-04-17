// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_divider_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDividerThemeData {
  String? get color;
  double? get space;
  double? get thickness;
  double? get indent;
  double? get endIndent;

  /// Create a copy of StacDividerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDividerThemeDataCopyWith<StacDividerThemeData> get copyWith =>
      _$StacDividerThemeDataCopyWithImpl<StacDividerThemeData>(
          this as StacDividerThemeData, _$identity);

  /// Serializes this StacDividerThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDividerThemeData &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.space, space) || other.space == space) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.indent, indent) || other.indent == indent) &&
            (identical(other.endIndent, endIndent) ||
                other.endIndent == endIndent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, color, space, thickness, indent, endIndent);

  @override
  String toString() {
    return 'StacDividerThemeData(color: $color, space: $space, thickness: $thickness, indent: $indent, endIndent: $endIndent)';
  }
}

/// @nodoc
abstract mixin class $StacDividerThemeDataCopyWith<$Res> {
  factory $StacDividerThemeDataCopyWith(StacDividerThemeData value,
          $Res Function(StacDividerThemeData) _then) =
      _$StacDividerThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {String? color,
      double? space,
      double? thickness,
      double? indent,
      double? endIndent});
}

/// @nodoc
class _$StacDividerThemeDataCopyWithImpl<$Res>
    implements $StacDividerThemeDataCopyWith<$Res> {
  _$StacDividerThemeDataCopyWithImpl(this._self, this._then);

  final StacDividerThemeData _self;
  final $Res Function(StacDividerThemeData) _then;

  /// Create a copy of StacDividerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? space = freezed,
    Object? thickness = freezed,
    Object? indent = freezed,
    Object? endIndent = freezed,
  }) {
    return _then(_self.copyWith(
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      space: freezed == space
          ? _self.space
          : space // ignore: cast_nullable_to_non_nullable
              as double?,
      thickness: freezed == thickness
          ? _self.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      indent: freezed == indent
          ? _self.indent
          : indent // ignore: cast_nullable_to_non_nullable
              as double?,
      endIndent: freezed == endIndent
          ? _self.endIndent
          : endIndent // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacDividerThemeData implements StacDividerThemeData {
  const _StacDividerThemeData(
      {this.color, this.space, this.thickness, this.indent, this.endIndent});
  factory _StacDividerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDividerThemeDataFromJson(json);

  @override
  final String? color;
  @override
  final double? space;
  @override
  final double? thickness;
  @override
  final double? indent;
  @override
  final double? endIndent;

  /// Create a copy of StacDividerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDividerThemeDataCopyWith<_StacDividerThemeData> get copyWith =>
      __$StacDividerThemeDataCopyWithImpl<_StacDividerThemeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDividerThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDividerThemeData &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.space, space) || other.space == space) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.indent, indent) || other.indent == indent) &&
            (identical(other.endIndent, endIndent) ||
                other.endIndent == endIndent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, color, space, thickness, indent, endIndent);

  @override
  String toString() {
    return 'StacDividerThemeData(color: $color, space: $space, thickness: $thickness, indent: $indent, endIndent: $endIndent)';
  }
}

/// @nodoc
abstract mixin class _$StacDividerThemeDataCopyWith<$Res>
    implements $StacDividerThemeDataCopyWith<$Res> {
  factory _$StacDividerThemeDataCopyWith(_StacDividerThemeData value,
          $Res Function(_StacDividerThemeData) _then) =
      __$StacDividerThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? color,
      double? space,
      double? thickness,
      double? indent,
      double? endIndent});
}

/// @nodoc
class __$StacDividerThemeDataCopyWithImpl<$Res>
    implements _$StacDividerThemeDataCopyWith<$Res> {
  __$StacDividerThemeDataCopyWithImpl(this._self, this._then);

  final _StacDividerThemeData _self;
  final $Res Function(_StacDividerThemeData) _then;

  /// Create a copy of StacDividerThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? color = freezed,
    Object? space = freezed,
    Object? thickness = freezed,
    Object? indent = freezed,
    Object? endIndent = freezed,
  }) {
    return _then(_StacDividerThemeData(
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      space: freezed == space
          ? _self.space
          : space // ignore: cast_nullable_to_non_nullable
              as double?,
      thickness: freezed == thickness
          ? _self.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      indent: freezed == indent
          ? _self.indent
          : indent // ignore: cast_nullable_to_non_nullable
              as double?,
      endIndent: freezed == endIndent
          ? _self.endIndent
          : endIndent // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
