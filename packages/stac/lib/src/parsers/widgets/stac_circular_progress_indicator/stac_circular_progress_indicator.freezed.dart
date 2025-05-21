// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_circular_progress_indicator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacCircularProgressIndicator {
  StacDouble? get value;
  String? get backgroundColor;
  String? get color;
  StacDouble get strokeWidth;
  StacDouble get strokeAlign;
  String? get semanticsLabel;
  String? get semanticsValue;
  StrokeCap? get strokeCap;

  /// Create a copy of StacCircularProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacCircularProgressIndicatorCopyWith<StacCircularProgressIndicator>
      get copyWith => _$StacCircularProgressIndicatorCopyWithImpl<
              StacCircularProgressIndicator>(
          this as StacCircularProgressIndicator, _$identity);

  /// Serializes this StacCircularProgressIndicator to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacCircularProgressIndicator &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.strokeWidth, strokeWidth) ||
                other.strokeWidth == strokeWidth) &&
            (identical(other.strokeAlign, strokeAlign) ||
                other.strokeAlign == strokeAlign) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.semanticsValue, semanticsValue) ||
                other.semanticsValue == semanticsValue) &&
            (identical(other.strokeCap, strokeCap) ||
                other.strokeCap == strokeCap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, backgroundColor, color,
      strokeWidth, strokeAlign, semanticsLabel, semanticsValue, strokeCap);

  @override
  String toString() {
    return 'StacCircularProgressIndicator(value: $value, backgroundColor: $backgroundColor, color: $color, strokeWidth: $strokeWidth, strokeAlign: $strokeAlign, semanticsLabel: $semanticsLabel, semanticsValue: $semanticsValue, strokeCap: $strokeCap)';
  }
}

/// @nodoc
abstract mixin class $StacCircularProgressIndicatorCopyWith<$Res> {
  factory $StacCircularProgressIndicatorCopyWith(
          StacCircularProgressIndicator value,
          $Res Function(StacCircularProgressIndicator) _then) =
      _$StacCircularProgressIndicatorCopyWithImpl;
  @useResult
  $Res call(
      {StacDouble? value,
      String? backgroundColor,
      String? color,
      StacDouble strokeWidth,
      StacDouble strokeAlign,
      String? semanticsLabel,
      String? semanticsValue,
      StrokeCap? strokeCap});
}

/// @nodoc
class _$StacCircularProgressIndicatorCopyWithImpl<$Res>
    implements $StacCircularProgressIndicatorCopyWith<$Res> {
  _$StacCircularProgressIndicatorCopyWithImpl(this._self, this._then);

  final StacCircularProgressIndicator _self;
  final $Res Function(StacCircularProgressIndicator) _then;

  /// Create a copy of StacCircularProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? backgroundColor = freezed,
    Object? color = freezed,
    Object? strokeWidth = null,
    Object? strokeAlign = null,
    Object? semanticsLabel = freezed,
    Object? semanticsValue = freezed,
    Object? strokeCap = freezed,
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
      strokeWidth: null == strokeWidth
          ? _self.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      strokeAlign: null == strokeAlign
          ? _self.strokeAlign
          : strokeAlign // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticsValue: freezed == semanticsValue
          ? _self.semanticsValue
          : semanticsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      strokeCap: freezed == strokeCap
          ? _self.strokeCap
          : strokeCap // ignore: cast_nullable_to_non_nullable
              as StrokeCap?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacCircularProgressIndicator implements StacCircularProgressIndicator {
  const _StacCircularProgressIndicator(
      {this.value,
      this.backgroundColor,
      this.color,
      this.strokeWidth = const StacDouble(4.0),
      this.strokeAlign = StacDouble.zero,
      this.semanticsLabel,
      this.semanticsValue,
      this.strokeCap});
  factory _StacCircularProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$StacCircularProgressIndicatorFromJson(json);

  @override
  final StacDouble? value;
  @override
  final String? backgroundColor;
  @override
  final String? color;
  @override
  @JsonKey()
  final StacDouble strokeWidth;
  @override
  @JsonKey()
  final StacDouble strokeAlign;
  @override
  final String? semanticsLabel;
  @override
  final String? semanticsValue;
  @override
  final StrokeCap? strokeCap;

  /// Create a copy of StacCircularProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacCircularProgressIndicatorCopyWith<_StacCircularProgressIndicator>
      get copyWith => __$StacCircularProgressIndicatorCopyWithImpl<
          _StacCircularProgressIndicator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacCircularProgressIndicatorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacCircularProgressIndicator &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.strokeWidth, strokeWidth) ||
                other.strokeWidth == strokeWidth) &&
            (identical(other.strokeAlign, strokeAlign) ||
                other.strokeAlign == strokeAlign) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.semanticsValue, semanticsValue) ||
                other.semanticsValue == semanticsValue) &&
            (identical(other.strokeCap, strokeCap) ||
                other.strokeCap == strokeCap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, backgroundColor, color,
      strokeWidth, strokeAlign, semanticsLabel, semanticsValue, strokeCap);

  @override
  String toString() {
    return 'StacCircularProgressIndicator(value: $value, backgroundColor: $backgroundColor, color: $color, strokeWidth: $strokeWidth, strokeAlign: $strokeAlign, semanticsLabel: $semanticsLabel, semanticsValue: $semanticsValue, strokeCap: $strokeCap)';
  }
}

/// @nodoc
abstract mixin class _$StacCircularProgressIndicatorCopyWith<$Res>
    implements $StacCircularProgressIndicatorCopyWith<$Res> {
  factory _$StacCircularProgressIndicatorCopyWith(
          _StacCircularProgressIndicator value,
          $Res Function(_StacCircularProgressIndicator) _then) =
      __$StacCircularProgressIndicatorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacDouble? value,
      String? backgroundColor,
      String? color,
      StacDouble strokeWidth,
      StacDouble strokeAlign,
      String? semanticsLabel,
      String? semanticsValue,
      StrokeCap? strokeCap});
}

/// @nodoc
class __$StacCircularProgressIndicatorCopyWithImpl<$Res>
    implements _$StacCircularProgressIndicatorCopyWith<$Res> {
  __$StacCircularProgressIndicatorCopyWithImpl(this._self, this._then);

  final _StacCircularProgressIndicator _self;
  final $Res Function(_StacCircularProgressIndicator) _then;

  /// Create a copy of StacCircularProgressIndicator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
    Object? backgroundColor = freezed,
    Object? color = freezed,
    Object? strokeWidth = null,
    Object? strokeAlign = null,
    Object? semanticsLabel = freezed,
    Object? semanticsValue = freezed,
    Object? strokeCap = freezed,
  }) {
    return _then(_StacCircularProgressIndicator(
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
      strokeWidth: null == strokeWidth
          ? _self.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      strokeAlign: null == strokeAlign
          ? _self.strokeAlign
          : strokeAlign // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticsValue: freezed == semanticsValue
          ? _self.semanticsValue
          : semanticsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      strokeCap: freezed == strokeCap
          ? _self.strokeCap
          : strokeCap // ignore: cast_nullable_to_non_nullable
              as StrokeCap?,
    ));
  }
}

// dart format on
