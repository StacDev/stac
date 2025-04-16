// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_scrollbar_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacScrollbarThemeData {
  bool? get thumbVisibility;
  double? get thickness;
  bool? get trackVisibility;
  double? get radius;
  String? get thumbColor;
  String? get trackColor;
  String? get trackBorderColor;
  double? get crossAxisMargin;
  double? get mainAxisMargin;
  double? get minThumbLength;
  bool? get interactive;

  /// Create a copy of StacScrollbarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacScrollbarThemeDataCopyWith<StacScrollbarThemeData> get copyWith =>
      _$StacScrollbarThemeDataCopyWithImpl<StacScrollbarThemeData>(
          this as StacScrollbarThemeData, _$identity);

  /// Serializes this StacScrollbarThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacScrollbarThemeData &&
            (identical(other.thumbVisibility, thumbVisibility) ||
                other.thumbVisibility == thumbVisibility) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.trackVisibility, trackVisibility) ||
                other.trackVisibility == trackVisibility) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.thumbColor, thumbColor) ||
                other.thumbColor == thumbColor) &&
            (identical(other.trackColor, trackColor) ||
                other.trackColor == trackColor) &&
            (identical(other.trackBorderColor, trackBorderColor) ||
                other.trackBorderColor == trackBorderColor) &&
            (identical(other.crossAxisMargin, crossAxisMargin) ||
                other.crossAxisMargin == crossAxisMargin) &&
            (identical(other.mainAxisMargin, mainAxisMargin) ||
                other.mainAxisMargin == mainAxisMargin) &&
            (identical(other.minThumbLength, minThumbLength) ||
                other.minThumbLength == minThumbLength) &&
            (identical(other.interactive, interactive) ||
                other.interactive == interactive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      thumbVisibility,
      thickness,
      trackVisibility,
      radius,
      thumbColor,
      trackColor,
      trackBorderColor,
      crossAxisMargin,
      mainAxisMargin,
      minThumbLength,
      interactive);

  @override
  String toString() {
    return 'StacScrollbarThemeData(thumbVisibility: $thumbVisibility, thickness: $thickness, trackVisibility: $trackVisibility, radius: $radius, thumbColor: $thumbColor, trackColor: $trackColor, trackBorderColor: $trackBorderColor, crossAxisMargin: $crossAxisMargin, mainAxisMargin: $mainAxisMargin, minThumbLength: $minThumbLength, interactive: $interactive)';
  }
}

/// @nodoc
abstract mixin class $StacScrollbarThemeDataCopyWith<$Res> {
  factory $StacScrollbarThemeDataCopyWith(StacScrollbarThemeData value,
          $Res Function(StacScrollbarThemeData) _then) =
      _$StacScrollbarThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {bool? thumbVisibility,
      double? thickness,
      bool? trackVisibility,
      double? radius,
      String? thumbColor,
      String? trackColor,
      String? trackBorderColor,
      double? crossAxisMargin,
      double? mainAxisMargin,
      double? minThumbLength,
      bool? interactive});
}

/// @nodoc
class _$StacScrollbarThemeDataCopyWithImpl<$Res>
    implements $StacScrollbarThemeDataCopyWith<$Res> {
  _$StacScrollbarThemeDataCopyWithImpl(this._self, this._then);

  final StacScrollbarThemeData _self;
  final $Res Function(StacScrollbarThemeData) _then;

  /// Create a copy of StacScrollbarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbVisibility = freezed,
    Object? thickness = freezed,
    Object? trackVisibility = freezed,
    Object? radius = freezed,
    Object? thumbColor = freezed,
    Object? trackColor = freezed,
    Object? trackBorderColor = freezed,
    Object? crossAxisMargin = freezed,
    Object? mainAxisMargin = freezed,
    Object? minThumbLength = freezed,
    Object? interactive = freezed,
  }) {
    return _then(_self.copyWith(
      thumbVisibility: freezed == thumbVisibility
          ? _self.thumbVisibility
          : thumbVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      thickness: freezed == thickness
          ? _self.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      trackVisibility: freezed == trackVisibility
          ? _self.trackVisibility
          : trackVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      radius: freezed == radius
          ? _self.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
      thumbColor: freezed == thumbColor
          ? _self.thumbColor
          : thumbColor // ignore: cast_nullable_to_non_nullable
              as String?,
      trackColor: freezed == trackColor
          ? _self.trackColor
          : trackColor // ignore: cast_nullable_to_non_nullable
              as String?,
      trackBorderColor: freezed == trackBorderColor
          ? _self.trackBorderColor
          : trackBorderColor // ignore: cast_nullable_to_non_nullable
              as String?,
      crossAxisMargin: freezed == crossAxisMargin
          ? _self.crossAxisMargin
          : crossAxisMargin // ignore: cast_nullable_to_non_nullable
              as double?,
      mainAxisMargin: freezed == mainAxisMargin
          ? _self.mainAxisMargin
          : mainAxisMargin // ignore: cast_nullable_to_non_nullable
              as double?,
      minThumbLength: freezed == minThumbLength
          ? _self.minThumbLength
          : minThumbLength // ignore: cast_nullable_to_non_nullable
              as double?,
      interactive: freezed == interactive
          ? _self.interactive
          : interactive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacScrollbarThemeData implements StacScrollbarThemeData {
  const _StacScrollbarThemeData(
      {this.thumbVisibility,
      this.thickness,
      this.trackVisibility,
      this.radius,
      this.thumbColor,
      this.trackColor,
      this.trackBorderColor,
      this.crossAxisMargin,
      this.mainAxisMargin,
      this.minThumbLength,
      this.interactive});
  factory _StacScrollbarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacScrollbarThemeDataFromJson(json);

  @override
  final bool? thumbVisibility;
  @override
  final double? thickness;
  @override
  final bool? trackVisibility;
  @override
  final double? radius;
  @override
  final String? thumbColor;
  @override
  final String? trackColor;
  @override
  final String? trackBorderColor;
  @override
  final double? crossAxisMargin;
  @override
  final double? mainAxisMargin;
  @override
  final double? minThumbLength;
  @override
  final bool? interactive;

  /// Create a copy of StacScrollbarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacScrollbarThemeDataCopyWith<_StacScrollbarThemeData> get copyWith =>
      __$StacScrollbarThemeDataCopyWithImpl<_StacScrollbarThemeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacScrollbarThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacScrollbarThemeData &&
            (identical(other.thumbVisibility, thumbVisibility) ||
                other.thumbVisibility == thumbVisibility) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.trackVisibility, trackVisibility) ||
                other.trackVisibility == trackVisibility) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.thumbColor, thumbColor) ||
                other.thumbColor == thumbColor) &&
            (identical(other.trackColor, trackColor) ||
                other.trackColor == trackColor) &&
            (identical(other.trackBorderColor, trackBorderColor) ||
                other.trackBorderColor == trackBorderColor) &&
            (identical(other.crossAxisMargin, crossAxisMargin) ||
                other.crossAxisMargin == crossAxisMargin) &&
            (identical(other.mainAxisMargin, mainAxisMargin) ||
                other.mainAxisMargin == mainAxisMargin) &&
            (identical(other.minThumbLength, minThumbLength) ||
                other.minThumbLength == minThumbLength) &&
            (identical(other.interactive, interactive) ||
                other.interactive == interactive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      thumbVisibility,
      thickness,
      trackVisibility,
      radius,
      thumbColor,
      trackColor,
      trackBorderColor,
      crossAxisMargin,
      mainAxisMargin,
      minThumbLength,
      interactive);

  @override
  String toString() {
    return 'StacScrollbarThemeData(thumbVisibility: $thumbVisibility, thickness: $thickness, trackVisibility: $trackVisibility, radius: $radius, thumbColor: $thumbColor, trackColor: $trackColor, trackBorderColor: $trackBorderColor, crossAxisMargin: $crossAxisMargin, mainAxisMargin: $mainAxisMargin, minThumbLength: $minThumbLength, interactive: $interactive)';
  }
}

/// @nodoc
abstract mixin class _$StacScrollbarThemeDataCopyWith<$Res>
    implements $StacScrollbarThemeDataCopyWith<$Res> {
  factory _$StacScrollbarThemeDataCopyWith(_StacScrollbarThemeData value,
          $Res Function(_StacScrollbarThemeData) _then) =
      __$StacScrollbarThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? thumbVisibility,
      double? thickness,
      bool? trackVisibility,
      double? radius,
      String? thumbColor,
      String? trackColor,
      String? trackBorderColor,
      double? crossAxisMargin,
      double? mainAxisMargin,
      double? minThumbLength,
      bool? interactive});
}

/// @nodoc
class __$StacScrollbarThemeDataCopyWithImpl<$Res>
    implements _$StacScrollbarThemeDataCopyWith<$Res> {
  __$StacScrollbarThemeDataCopyWithImpl(this._self, this._then);

  final _StacScrollbarThemeData _self;
  final $Res Function(_StacScrollbarThemeData) _then;

  /// Create a copy of StacScrollbarThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? thumbVisibility = freezed,
    Object? thickness = freezed,
    Object? trackVisibility = freezed,
    Object? radius = freezed,
    Object? thumbColor = freezed,
    Object? trackColor = freezed,
    Object? trackBorderColor = freezed,
    Object? crossAxisMargin = freezed,
    Object? mainAxisMargin = freezed,
    Object? minThumbLength = freezed,
    Object? interactive = freezed,
  }) {
    return _then(_StacScrollbarThemeData(
      thumbVisibility: freezed == thumbVisibility
          ? _self.thumbVisibility
          : thumbVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      thickness: freezed == thickness
          ? _self.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      trackVisibility: freezed == trackVisibility
          ? _self.trackVisibility
          : trackVisibility // ignore: cast_nullable_to_non_nullable
              as bool?,
      radius: freezed == radius
          ? _self.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
      thumbColor: freezed == thumbColor
          ? _self.thumbColor
          : thumbColor // ignore: cast_nullable_to_non_nullable
              as String?,
      trackColor: freezed == trackColor
          ? _self.trackColor
          : trackColor // ignore: cast_nullable_to_non_nullable
              as String?,
      trackBorderColor: freezed == trackBorderColor
          ? _self.trackBorderColor
          : trackBorderColor // ignore: cast_nullable_to_non_nullable
              as String?,
      crossAxisMargin: freezed == crossAxisMargin
          ? _self.crossAxisMargin
          : crossAxisMargin // ignore: cast_nullable_to_non_nullable
              as double?,
      mainAxisMargin: freezed == mainAxisMargin
          ? _self.mainAxisMargin
          : mainAxisMargin // ignore: cast_nullable_to_non_nullable
              as double?,
      minThumbLength: freezed == minThumbLength
          ? _self.minThumbLength
          : minThumbLength // ignore: cast_nullable_to_non_nullable
              as double?,
      interactive: freezed == interactive
          ? _self.interactive
          : interactive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
