// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_checkbox_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacCheckboxThemeData {
  StacMouseCursor? get mouseCursor;
  String? get fillColor;
  String? get checkColor;
  String? get overlayColor;
  double? get splashRadius;
  MaterialTapTargetSize? get materialTapTargetSize;
  StacVisualDensity? get visualDensity;
  StacRoundedRactangleBorder? get shape;
  StacBorderSide? get side;

  /// Create a copy of StacCheckboxThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacCheckboxThemeDataCopyWith<StacCheckboxThemeData> get copyWith =>
      _$StacCheckboxThemeDataCopyWithImpl<StacCheckboxThemeData>(
          this as StacCheckboxThemeData, _$identity);

  /// Serializes this StacCheckboxThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacCheckboxThemeData &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.fillColor, fillColor) ||
                other.fillColor == fillColor) &&
            (identical(other.checkColor, checkColor) ||
                other.checkColor == checkColor) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.splashRadius, splashRadius) ||
                other.splashRadius == splashRadius) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.visualDensity, visualDensity) ||
                other.visualDensity == visualDensity) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.side, side) || other.side == side));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mouseCursor,
      fillColor,
      checkColor,
      overlayColor,
      splashRadius,
      materialTapTargetSize,
      visualDensity,
      shape,
      side);

  @override
  String toString() {
    return 'StacCheckboxThemeData(mouseCursor: $mouseCursor, fillColor: $fillColor, checkColor: $checkColor, overlayColor: $overlayColor, splashRadius: $splashRadius, materialTapTargetSize: $materialTapTargetSize, visualDensity: $visualDensity, shape: $shape, side: $side)';
  }
}

/// @nodoc
abstract mixin class $StacCheckboxThemeDataCopyWith<$Res> {
  factory $StacCheckboxThemeDataCopyWith(StacCheckboxThemeData value,
          $Res Function(StacCheckboxThemeData) _then) =
      _$StacCheckboxThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {StacMouseCursor? mouseCursor,
      String? fillColor,
      String? checkColor,
      String? overlayColor,
      double? splashRadius,
      MaterialTapTargetSize? materialTapTargetSize,
      StacVisualDensity? visualDensity,
      StacRoundedRactangleBorder? shape,
      StacBorderSide? side});

  $StacVisualDensityCopyWith<$Res>? get visualDensity;
  $StacRoundedRactangleBorderCopyWith<$Res>? get shape;
  $StacBorderSideCopyWith<$Res>? get side;
}

/// @nodoc
class _$StacCheckboxThemeDataCopyWithImpl<$Res>
    implements $StacCheckboxThemeDataCopyWith<$Res> {
  _$StacCheckboxThemeDataCopyWithImpl(this._self, this._then);

  final StacCheckboxThemeData _self;
  final $Res Function(StacCheckboxThemeData) _then;

  /// Create a copy of StacCheckboxThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mouseCursor = freezed,
    Object? fillColor = freezed,
    Object? checkColor = freezed,
    Object? overlayColor = freezed,
    Object? splashRadius = freezed,
    Object? materialTapTargetSize = freezed,
    Object? visualDensity = freezed,
    Object? shape = freezed,
    Object? side = freezed,
  }) {
    return _then(_self.copyWith(
      mouseCursor: freezed == mouseCursor
          ? _self.mouseCursor
          : mouseCursor // ignore: cast_nullable_to_non_nullable
              as StacMouseCursor?,
      fillColor: freezed == fillColor
          ? _self.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as String?,
      checkColor: freezed == checkColor
          ? _self.checkColor
          : checkColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius: freezed == splashRadius
          ? _self.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      visualDensity: freezed == visualDensity
          ? _self.visualDensity
          : visualDensity // ignore: cast_nullable_to_non_nullable
              as StacVisualDensity?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacRoundedRactangleBorder?,
      side: freezed == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
    ));
  }

  /// Create a copy of StacCheckboxThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacVisualDensityCopyWith<$Res>? get visualDensity {
    if (_self.visualDensity == null) {
      return null;
    }

    return $StacVisualDensityCopyWith<$Res>(_self.visualDensity!, (value) {
      return _then(_self.copyWith(visualDensity: value));
    });
  }

  /// Create a copy of StacCheckboxThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRoundedRactangleBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacRoundedRactangleBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacCheckboxThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res>? get side {
    if (_self.side == null) {
      return null;
    }

    return $StacBorderSideCopyWith<$Res>(_self.side!, (value) {
      return _then(_self.copyWith(side: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacCheckboxThemeData implements StacCheckboxThemeData {
  const _StacCheckboxThemeData(
      {this.mouseCursor,
      this.fillColor,
      this.checkColor,
      this.overlayColor,
      this.splashRadius,
      this.materialTapTargetSize,
      this.visualDensity,
      this.shape,
      this.side});
  factory _StacCheckboxThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacCheckboxThemeDataFromJson(json);

  @override
  final StacMouseCursor? mouseCursor;
  @override
  final String? fillColor;
  @override
  final String? checkColor;
  @override
  final String? overlayColor;
  @override
  final double? splashRadius;
  @override
  final MaterialTapTargetSize? materialTapTargetSize;
  @override
  final StacVisualDensity? visualDensity;
  @override
  final StacRoundedRactangleBorder? shape;
  @override
  final StacBorderSide? side;

  /// Create a copy of StacCheckboxThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacCheckboxThemeDataCopyWith<_StacCheckboxThemeData> get copyWith =>
      __$StacCheckboxThemeDataCopyWithImpl<_StacCheckboxThemeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacCheckboxThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacCheckboxThemeData &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.fillColor, fillColor) ||
                other.fillColor == fillColor) &&
            (identical(other.checkColor, checkColor) ||
                other.checkColor == checkColor) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.splashRadius, splashRadius) ||
                other.splashRadius == splashRadius) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.visualDensity, visualDensity) ||
                other.visualDensity == visualDensity) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.side, side) || other.side == side));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mouseCursor,
      fillColor,
      checkColor,
      overlayColor,
      splashRadius,
      materialTapTargetSize,
      visualDensity,
      shape,
      side);

  @override
  String toString() {
    return 'StacCheckboxThemeData(mouseCursor: $mouseCursor, fillColor: $fillColor, checkColor: $checkColor, overlayColor: $overlayColor, splashRadius: $splashRadius, materialTapTargetSize: $materialTapTargetSize, visualDensity: $visualDensity, shape: $shape, side: $side)';
  }
}

/// @nodoc
abstract mixin class _$StacCheckboxThemeDataCopyWith<$Res>
    implements $StacCheckboxThemeDataCopyWith<$Res> {
  factory _$StacCheckboxThemeDataCopyWith(_StacCheckboxThemeData value,
          $Res Function(_StacCheckboxThemeData) _then) =
      __$StacCheckboxThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacMouseCursor? mouseCursor,
      String? fillColor,
      String? checkColor,
      String? overlayColor,
      double? splashRadius,
      MaterialTapTargetSize? materialTapTargetSize,
      StacVisualDensity? visualDensity,
      StacRoundedRactangleBorder? shape,
      StacBorderSide? side});

  @override
  $StacVisualDensityCopyWith<$Res>? get visualDensity;
  @override
  $StacRoundedRactangleBorderCopyWith<$Res>? get shape;
  @override
  $StacBorderSideCopyWith<$Res>? get side;
}

/// @nodoc
class __$StacCheckboxThemeDataCopyWithImpl<$Res>
    implements _$StacCheckboxThemeDataCopyWith<$Res> {
  __$StacCheckboxThemeDataCopyWithImpl(this._self, this._then);

  final _StacCheckboxThemeData _self;
  final $Res Function(_StacCheckboxThemeData) _then;

  /// Create a copy of StacCheckboxThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mouseCursor = freezed,
    Object? fillColor = freezed,
    Object? checkColor = freezed,
    Object? overlayColor = freezed,
    Object? splashRadius = freezed,
    Object? materialTapTargetSize = freezed,
    Object? visualDensity = freezed,
    Object? shape = freezed,
    Object? side = freezed,
  }) {
    return _then(_StacCheckboxThemeData(
      mouseCursor: freezed == mouseCursor
          ? _self.mouseCursor
          : mouseCursor // ignore: cast_nullable_to_non_nullable
              as StacMouseCursor?,
      fillColor: freezed == fillColor
          ? _self.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as String?,
      checkColor: freezed == checkColor
          ? _self.checkColor
          : checkColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius: freezed == splashRadius
          ? _self.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      visualDensity: freezed == visualDensity
          ? _self.visualDensity
          : visualDensity // ignore: cast_nullable_to_non_nullable
              as StacVisualDensity?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as StacRoundedRactangleBorder?,
      side: freezed == side
          ? _self.side
          : side // ignore: cast_nullable_to_non_nullable
              as StacBorderSide?,
    ));
  }

  /// Create a copy of StacCheckboxThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacVisualDensityCopyWith<$Res>? get visualDensity {
    if (_self.visualDensity == null) {
      return null;
    }

    return $StacVisualDensityCopyWith<$Res>(_self.visualDensity!, (value) {
      return _then(_self.copyWith(visualDensity: value));
    });
  }

  /// Create a copy of StacCheckboxThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacRoundedRactangleBorderCopyWith<$Res>? get shape {
    if (_self.shape == null) {
      return null;
    }

    return $StacRoundedRactangleBorderCopyWith<$Res>(_self.shape!, (value) {
      return _then(_self.copyWith(shape: value));
    });
  }

  /// Create a copy of StacCheckboxThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderSideCopyWith<$Res>? get side {
    if (_self.side == null) {
      return null;
    }

    return $StacBorderSideCopyWith<$Res>(_self.side!, (value) {
      return _then(_self.copyWith(side: value));
    });
  }
}

// dart format on
