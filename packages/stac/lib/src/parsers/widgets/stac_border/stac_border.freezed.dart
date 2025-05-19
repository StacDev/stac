// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacBorder {
  String? get color;
  BorderStyle get borderStyle;
  StacDouble get width;
  StacDouble get strokeAlign;

  /// Create a copy of StacBorder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBorderCopyWith<StacBorder> get copyWith =>
      _$StacBorderCopyWithImpl<StacBorder>(this as StacBorder, _$identity);

  /// Serializes this StacBorder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBorder &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.borderStyle, borderStyle) ||
                other.borderStyle == borderStyle) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.strokeAlign, strokeAlign) ||
                other.strokeAlign == strokeAlign));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, color, borderStyle, width, strokeAlign);

  @override
  String toString() {
    return 'StacBorder(color: $color, borderStyle: $borderStyle, width: $width, strokeAlign: $strokeAlign)';
  }
}

/// @nodoc
abstract mixin class $StacBorderCopyWith<$Res> {
  factory $StacBorderCopyWith(
          StacBorder value, $Res Function(StacBorder) _then) =
      _$StacBorderCopyWithImpl;
  @useResult
  $Res call(
      {String? color,
      BorderStyle borderStyle,
      StacDouble width,
      StacDouble strokeAlign});
}

/// @nodoc
class _$StacBorderCopyWithImpl<$Res> implements $StacBorderCopyWith<$Res> {
  _$StacBorderCopyWithImpl(this._self, this._then);

  final StacBorder _self;
  final $Res Function(StacBorder) _then;

  /// Create a copy of StacBorder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? borderStyle = null,
    Object? width = null,
    Object? strokeAlign = null,
  }) {
    return _then(_self.copyWith(
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      borderStyle: null == borderStyle
          ? _self.borderStyle
          : borderStyle // ignore: cast_nullable_to_non_nullable
              as BorderStyle,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      strokeAlign: null == strokeAlign
          ? _self.strokeAlign
          : strokeAlign // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacBorder implements StacBorder {
  const _StacBorder(
      {this.color,
      this.borderStyle = BorderStyle.solid,
      this.width = const StacDouble(1.0),
      this.strokeAlign = const StacDouble(BorderSide.strokeAlignInside)});
  factory _StacBorder.fromJson(Map<String, dynamic> json) =>
      _$StacBorderFromJson(json);

  @override
  final String? color;
  @override
  @JsonKey()
  final BorderStyle borderStyle;
  @override
  @JsonKey()
  final StacDouble width;
  @override
  @JsonKey()
  final StacDouble strokeAlign;

  /// Create a copy of StacBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBorderCopyWith<_StacBorder> get copyWith =>
      __$StacBorderCopyWithImpl<_StacBorder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBorderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBorder &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.borderStyle, borderStyle) ||
                other.borderStyle == borderStyle) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.strokeAlign, strokeAlign) ||
                other.strokeAlign == strokeAlign));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, color, borderStyle, width, strokeAlign);

  @override
  String toString() {
    return 'StacBorder(color: $color, borderStyle: $borderStyle, width: $width, strokeAlign: $strokeAlign)';
  }
}

/// @nodoc
abstract mixin class _$StacBorderCopyWith<$Res>
    implements $StacBorderCopyWith<$Res> {
  factory _$StacBorderCopyWith(
          _StacBorder value, $Res Function(_StacBorder) _then) =
      __$StacBorderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? color,
      BorderStyle borderStyle,
      StacDouble width,
      StacDouble strokeAlign});
}

/// @nodoc
class __$StacBorderCopyWithImpl<$Res> implements _$StacBorderCopyWith<$Res> {
  __$StacBorderCopyWithImpl(this._self, this._then);

  final _StacBorder _self;
  final $Res Function(_StacBorder) _then;

  /// Create a copy of StacBorder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? color = freezed,
    Object? borderStyle = null,
    Object? width = null,
    Object? strokeAlign = null,
  }) {
    return _then(_StacBorder(
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      borderStyle: null == borderStyle
          ? _self.borderStyle
          : borderStyle // ignore: cast_nullable_to_non_nullable
              as BorderStyle,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      strokeAlign: null == strokeAlign
          ? _self.strokeAlign
          : strokeAlign // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }
}

// dart format on
