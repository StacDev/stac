// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_linear_progress_indicator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacLinearProgressIndicator {
  StacDouble? get value;
  String? get backgroundColor;
  String? get color;
  StacDouble? get minHeight;
  String? get semanticsLabel;
  String? get semanticsValue;
  StacBorderRadius get borderRadius;

  /// Create a copy of StacLinearProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacLinearProgressIndicatorCopyWith<StacLinearProgressIndicator>
      get copyWith => _$StacLinearProgressIndicatorCopyWithImpl<
              StacLinearProgressIndicator>(
          this as StacLinearProgressIndicator, _$identity);

  /// Serializes this StacLinearProgressIndicator to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacLinearProgressIndicator &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.semanticsValue, semanticsValue) ||
                other.semanticsValue == semanticsValue) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, backgroundColor, color,
      minHeight, semanticsLabel, semanticsValue, borderRadius);

  @override
  String toString() {
    return 'StacLinearProgressIndicator(value: $value, backgroundColor: $backgroundColor, color: $color, minHeight: $minHeight, semanticsLabel: $semanticsLabel, semanticsValue: $semanticsValue, borderRadius: $borderRadius)';
  }
}

/// @nodoc
abstract mixin class $StacLinearProgressIndicatorCopyWith<$Res> {
  factory $StacLinearProgressIndicatorCopyWith(
          StacLinearProgressIndicator value,
          $Res Function(StacLinearProgressIndicator) _then) =
      _$StacLinearProgressIndicatorCopyWithImpl;
  @useResult
  $Res call(
      {StacDouble? value,
      String? backgroundColor,
      String? color,
      StacDouble? minHeight,
      String? semanticsLabel,
      String? semanticsValue,
      StacBorderRadius borderRadius});

  $StacBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class _$StacLinearProgressIndicatorCopyWithImpl<$Res>
    implements $StacLinearProgressIndicatorCopyWith<$Res> {
  _$StacLinearProgressIndicatorCopyWithImpl(this._self, this._then);

  final StacLinearProgressIndicator _self;
  final $Res Function(StacLinearProgressIndicator) _then;

  /// Create a copy of StacLinearProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? backgroundColor = freezed,
    Object? color = freezed,
    Object? minHeight = freezed,
    Object? semanticsLabel = freezed,
    Object? semanticsValue = freezed,
    Object? borderRadius = null,
  }) {
    return _then(_self.copyWith(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      minHeight: freezed == minHeight
          ? _self.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticsValue: freezed == semanticsValue
          ? _self.semanticsValue
          : semanticsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      borderRadius: null == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius,
    ));
  }

  /// Create a copy of StacLinearProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderRadiusCopyWith<$Res> get borderRadius {
    return $StacBorderRadiusCopyWith<$Res>(_self.borderRadius, (value) {
      return _then(_self.copyWith(borderRadius: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacLinearProgressIndicator implements StacLinearProgressIndicator {
  const _StacLinearProgressIndicator(
      {this.value,
      this.backgroundColor,
      this.color,
      this.minHeight,
      this.semanticsLabel,
      this.semanticsValue,
      this.borderRadius = const StacBorderRadius()});
  factory _StacLinearProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$StacLinearProgressIndicatorFromJson(json);

  @override
  final StacDouble? value;
  @override
  final String? backgroundColor;
  @override
  final String? color;
  @override
  final StacDouble? minHeight;
  @override
  final String? semanticsLabel;
  @override
  final String? semanticsValue;
  @override
  @JsonKey()
  final StacBorderRadius borderRadius;

  /// Create a copy of StacLinearProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacLinearProgressIndicatorCopyWith<_StacLinearProgressIndicator>
      get copyWith => __$StacLinearProgressIndicatorCopyWithImpl<
          _StacLinearProgressIndicator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacLinearProgressIndicatorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacLinearProgressIndicator &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.semanticsValue, semanticsValue) ||
                other.semanticsValue == semanticsValue) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, backgroundColor, color,
      minHeight, semanticsLabel, semanticsValue, borderRadius);

  @override
  String toString() {
    return 'StacLinearProgressIndicator(value: $value, backgroundColor: $backgroundColor, color: $color, minHeight: $minHeight, semanticsLabel: $semanticsLabel, semanticsValue: $semanticsValue, borderRadius: $borderRadius)';
  }
}

/// @nodoc
abstract mixin class _$StacLinearProgressIndicatorCopyWith<$Res>
    implements $StacLinearProgressIndicatorCopyWith<$Res> {
  factory _$StacLinearProgressIndicatorCopyWith(
          _StacLinearProgressIndicator value,
          $Res Function(_StacLinearProgressIndicator) _then) =
      __$StacLinearProgressIndicatorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacDouble? value,
      String? backgroundColor,
      String? color,
      StacDouble? minHeight,
      String? semanticsLabel,
      String? semanticsValue,
      StacBorderRadius borderRadius});

  @override
  $StacBorderRadiusCopyWith<$Res> get borderRadius;
}

/// @nodoc
class __$StacLinearProgressIndicatorCopyWithImpl<$Res>
    implements _$StacLinearProgressIndicatorCopyWith<$Res> {
  __$StacLinearProgressIndicatorCopyWithImpl(this._self, this._then);

  final _StacLinearProgressIndicator _self;
  final $Res Function(_StacLinearProgressIndicator) _then;

  /// Create a copy of StacLinearProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
    Object? backgroundColor = freezed,
    Object? color = freezed,
    Object? minHeight = freezed,
    Object? semanticsLabel = freezed,
    Object? semanticsValue = freezed,
    Object? borderRadius = null,
  }) {
    return _then(_StacLinearProgressIndicator(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      minHeight: freezed == minHeight
          ? _self.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticsValue: freezed == semanticsValue
          ? _self.semanticsValue
          : semanticsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      borderRadius: null == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as StacBorderRadius,
    ));
  }

  /// Create a copy of StacLinearProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacBorderRadiusCopyWith<$Res> get borderRadius {
    return $StacBorderRadiusCopyWith<$Res>(_self.borderRadius, (value) {
      return _then(_self.copyWith(borderRadius: value));
    });
  }
}

// dart format on
