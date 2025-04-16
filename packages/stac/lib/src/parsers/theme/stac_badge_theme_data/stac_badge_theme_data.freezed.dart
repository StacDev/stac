// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_badge_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacBadgeThemeData {
  String? get backgroundColor;
  String? get textColor;
  double? get smallSize;
  double? get largeSize;
  StacTextStyle? get textStyle;
  StacEdgeInsets? get padding;
  StacAlignmentGeometry? get alignment;
  StacOffset? get offset;

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBadgeThemeDataCopyWith<StacBadgeThemeData> get copyWith =>
      _$StacBadgeThemeDataCopyWithImpl<StacBadgeThemeData>(
          this as StacBadgeThemeData, _$identity);

  /// Serializes this StacBadgeThemeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBadgeThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.smallSize, smallSize) ||
                other.smallSize == smallSize) &&
            (identical(other.largeSize, largeSize) ||
                other.largeSize == largeSize) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, backgroundColor, textColor,
      smallSize, largeSize, textStyle, padding, alignment, offset);

  @override
  String toString() {
    return 'StacBadgeThemeData(backgroundColor: $backgroundColor, textColor: $textColor, smallSize: $smallSize, largeSize: $largeSize, textStyle: $textStyle, padding: $padding, alignment: $alignment, offset: $offset)';
  }
}

/// @nodoc
abstract mixin class $StacBadgeThemeDataCopyWith<$Res> {
  factory $StacBadgeThemeDataCopyWith(
          StacBadgeThemeData value, $Res Function(StacBadgeThemeData) _then) =
      _$StacBadgeThemeDataCopyWithImpl;
  @useResult
  $Res call(
      {String? backgroundColor,
      String? textColor,
      double? smallSize,
      double? largeSize,
      StacTextStyle? textStyle,
      StacEdgeInsets? padding,
      StacAlignmentGeometry? alignment,
      StacOffset? offset});

  $StacTextStyleCopyWith<$Res>? get textStyle;
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  $StacAlignmentGeometryCopyWith<$Res>? get alignment;
  $StacOffsetCopyWith<$Res>? get offset;
}

/// @nodoc
class _$StacBadgeThemeDataCopyWithImpl<$Res>
    implements $StacBadgeThemeDataCopyWith<$Res> {
  _$StacBadgeThemeDataCopyWithImpl(this._self, this._then);

  final StacBadgeThemeData _self;
  final $Res Function(StacBadgeThemeData) _then;

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? smallSize = freezed,
    Object? largeSize = freezed,
    Object? textStyle = freezed,
    Object? padding = freezed,
    Object? alignment = freezed,
    Object? offset = freezed,
  }) {
    return _then(_self.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _self.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      smallSize: freezed == smallSize
          ? _self.smallSize
          : smallSize // ignore: cast_nullable_to_non_nullable
              as double?,
      largeSize: freezed == largeSize
          ? _self.largeSize
          : largeSize // ignore: cast_nullable_to_non_nullable
              as double?,
      textStyle: freezed == textStyle
          ? _self.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentGeometry?,
      offset: freezed == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
    ));
  }

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get textStyle {
    if (_self.textStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.textStyle!, (value) {
      return _then(_self.copyWith(textStyle: value));
    });
  }

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get padding {
    if (_self.padding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.padding!, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacAlignmentGeometryCopyWith<$Res>? get alignment {
    if (_self.alignment == null) {
      return null;
    }

    return $StacAlignmentGeometryCopyWith<$Res>(_self.alignment!, (value) {
      return _then(_self.copyWith(alignment: value));
    });
  }

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get offset {
    if (_self.offset == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_self.offset!, (value) {
      return _then(_self.copyWith(offset: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacBadgeThemeData implements StacBadgeThemeData {
  const _StacBadgeThemeData(
      {this.backgroundColor,
      this.textColor,
      this.smallSize,
      this.largeSize,
      this.textStyle,
      this.padding,
      this.alignment,
      this.offset});
  factory _StacBadgeThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBadgeThemeDataFromJson(json);

  @override
  final String? backgroundColor;
  @override
  final String? textColor;
  @override
  final double? smallSize;
  @override
  final double? largeSize;
  @override
  final StacTextStyle? textStyle;
  @override
  final StacEdgeInsets? padding;
  @override
  final StacAlignmentGeometry? alignment;
  @override
  final StacOffset? offset;

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBadgeThemeDataCopyWith<_StacBadgeThemeData> get copyWith =>
      __$StacBadgeThemeDataCopyWithImpl<_StacBadgeThemeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBadgeThemeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBadgeThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.smallSize, smallSize) ||
                other.smallSize == smallSize) &&
            (identical(other.largeSize, largeSize) ||
                other.largeSize == largeSize) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, backgroundColor, textColor,
      smallSize, largeSize, textStyle, padding, alignment, offset);

  @override
  String toString() {
    return 'StacBadgeThemeData(backgroundColor: $backgroundColor, textColor: $textColor, smallSize: $smallSize, largeSize: $largeSize, textStyle: $textStyle, padding: $padding, alignment: $alignment, offset: $offset)';
  }
}

/// @nodoc
abstract mixin class _$StacBadgeThemeDataCopyWith<$Res>
    implements $StacBadgeThemeDataCopyWith<$Res> {
  factory _$StacBadgeThemeDataCopyWith(
          _StacBadgeThemeData value, $Res Function(_StacBadgeThemeData) _then) =
      __$StacBadgeThemeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? backgroundColor,
      String? textColor,
      double? smallSize,
      double? largeSize,
      StacTextStyle? textStyle,
      StacEdgeInsets? padding,
      StacAlignmentGeometry? alignment,
      StacOffset? offset});

  @override
  $StacTextStyleCopyWith<$Res>? get textStyle;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
  @override
  $StacAlignmentGeometryCopyWith<$Res>? get alignment;
  @override
  $StacOffsetCopyWith<$Res>? get offset;
}

/// @nodoc
class __$StacBadgeThemeDataCopyWithImpl<$Res>
    implements _$StacBadgeThemeDataCopyWith<$Res> {
  __$StacBadgeThemeDataCopyWithImpl(this._self, this._then);

  final _StacBadgeThemeData _self;
  final $Res Function(_StacBadgeThemeData) _then;

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? smallSize = freezed,
    Object? largeSize = freezed,
    Object? textStyle = freezed,
    Object? padding = freezed,
    Object? alignment = freezed,
    Object? offset = freezed,
  }) {
    return _then(_StacBadgeThemeData(
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _self.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      smallSize: freezed == smallSize
          ? _self.smallSize
          : smallSize // ignore: cast_nullable_to_non_nullable
              as double?,
      largeSize: freezed == largeSize
          ? _self.largeSize
          : largeSize // ignore: cast_nullable_to_non_nullable
              as double?,
      textStyle: freezed == textStyle
          ? _self.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      alignment: freezed == alignment
          ? _self.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as StacAlignmentGeometry?,
      offset: freezed == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
    ));
  }

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get textStyle {
    if (_self.textStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.textStyle!, (value) {
      return _then(_self.copyWith(textStyle: value));
    });
  }

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get padding {
    if (_self.padding == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.padding!, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacAlignmentGeometryCopyWith<$Res>? get alignment {
    if (_self.alignment == null) {
      return null;
    }

    return $StacAlignmentGeometryCopyWith<$Res>(_self.alignment!, (value) {
      return _then(_self.copyWith(alignment: value));
    });
  }

  /// Create a copy of StacBadgeThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get offset {
    if (_self.offset == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_self.offset!, (value) {
      return _then(_self.copyWith(offset: value));
    });
  }
}

// dart format on
