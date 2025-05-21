// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_refresh_indicator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacRefreshIndicator {
  Map<String, dynamic>? get child;
  StacDouble get displacement;
  StacDouble get edgeOffset;
  Map<String, dynamic>? get onRefresh;
  String? get color;
  String? get backgroundColor;
  String? get semanticsLabel;
  String? get semanticsValue;
  StacDouble get strokeWidth;
  RefreshIndicatorTriggerMode get triggerMode;

  /// Create a copy of StacRefreshIndicator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacRefreshIndicatorCopyWith<StacRefreshIndicator> get copyWith =>
      _$StacRefreshIndicatorCopyWithImpl<StacRefreshIndicator>(
          this as StacRefreshIndicator, _$identity);

  /// Serializes this StacRefreshIndicator to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacRefreshIndicator &&
            const DeepCollectionEquality().equals(other.child, child) &&
            (identical(other.displacement, displacement) ||
                other.displacement == displacement) &&
            (identical(other.edgeOffset, edgeOffset) ||
                other.edgeOffset == edgeOffset) &&
            const DeepCollectionEquality().equals(other.onRefresh, onRefresh) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.semanticsValue, semanticsValue) ||
                other.semanticsValue == semanticsValue) &&
            (identical(other.strokeWidth, strokeWidth) ||
                other.strokeWidth == strokeWidth) &&
            (identical(other.triggerMode, triggerMode) ||
                other.triggerMode == triggerMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(child),
      displacement,
      edgeOffset,
      const DeepCollectionEquality().hash(onRefresh),
      color,
      backgroundColor,
      semanticsLabel,
      semanticsValue,
      strokeWidth,
      triggerMode);

  @override
  String toString() {
    return 'StacRefreshIndicator(child: $child, displacement: $displacement, edgeOffset: $edgeOffset, onRefresh: $onRefresh, color: $color, backgroundColor: $backgroundColor, semanticsLabel: $semanticsLabel, semanticsValue: $semanticsValue, strokeWidth: $strokeWidth, triggerMode: $triggerMode)';
  }
}

/// @nodoc
abstract mixin class $StacRefreshIndicatorCopyWith<$Res> {
  factory $StacRefreshIndicatorCopyWith(StacRefreshIndicator value,
          $Res Function(StacRefreshIndicator) _then) =
      _$StacRefreshIndicatorCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? child,
      StacDouble displacement,
      StacDouble edgeOffset,
      Map<String, dynamic>? onRefresh,
      String? color,
      String? backgroundColor,
      String? semanticsLabel,
      String? semanticsValue,
      StacDouble strokeWidth,
      RefreshIndicatorTriggerMode triggerMode});
}

/// @nodoc
class _$StacRefreshIndicatorCopyWithImpl<$Res>
    implements $StacRefreshIndicatorCopyWith<$Res> {
  _$StacRefreshIndicatorCopyWithImpl(this._self, this._then);

  final StacRefreshIndicator _self;
  final $Res Function(StacRefreshIndicator) _then;

  /// Create a copy of StacRefreshIndicator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = freezed,
    Object? displacement = null,
    Object? edgeOffset = null,
    Object? onRefresh = freezed,
    Object? color = freezed,
    Object? backgroundColor = freezed,
    Object? semanticsLabel = freezed,
    Object? semanticsValue = freezed,
    Object? strokeWidth = null,
    Object? triggerMode = null,
  }) {
    return _then(_self.copyWith(
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      displacement: null == displacement
          ? _self.displacement
          : displacement // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      edgeOffset: null == edgeOffset
          ? _self.edgeOffset
          : edgeOffset // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      onRefresh: freezed == onRefresh
          ? _self.onRefresh
          : onRefresh // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticsValue: freezed == semanticsValue
          ? _self.semanticsValue
          : semanticsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      strokeWidth: null == strokeWidth
          ? _self.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      triggerMode: null == triggerMode
          ? _self.triggerMode
          : triggerMode // ignore: cast_nullable_to_non_nullable
              as RefreshIndicatorTriggerMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacRefreshIndicator implements StacRefreshIndicator {
  const _StacRefreshIndicator(
      {final Map<String, dynamic>? child,
      this.displacement = const StacDouble(40),
      this.edgeOffset = StacDouble.zero,
      final Map<String, dynamic>? onRefresh,
      this.color,
      this.backgroundColor,
      this.semanticsLabel,
      this.semanticsValue,
      this.strokeWidth =
          const StacDouble(RefreshProgressIndicator.defaultStrokeWidth),
      this.triggerMode = RefreshIndicatorTriggerMode.onEdge})
      : _child = child,
        _onRefresh = onRefresh;
  factory _StacRefreshIndicator.fromJson(Map<String, dynamic> json) =>
      _$StacRefreshIndicatorFromJson(json);

  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final StacDouble displacement;
  @override
  @JsonKey()
  final StacDouble edgeOffset;
  final Map<String, dynamic>? _onRefresh;
  @override
  Map<String, dynamic>? get onRefresh {
    final value = _onRefresh;
    if (value == null) return null;
    if (_onRefresh is EqualUnmodifiableMapView) return _onRefresh;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? color;
  @override
  final String? backgroundColor;
  @override
  final String? semanticsLabel;
  @override
  final String? semanticsValue;
  @override
  @JsonKey()
  final StacDouble strokeWidth;
  @override
  @JsonKey()
  final RefreshIndicatorTriggerMode triggerMode;

  /// Create a copy of StacRefreshIndicator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacRefreshIndicatorCopyWith<_StacRefreshIndicator> get copyWith =>
      __$StacRefreshIndicatorCopyWithImpl<_StacRefreshIndicator>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacRefreshIndicatorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacRefreshIndicator &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.displacement, displacement) ||
                other.displacement == displacement) &&
            (identical(other.edgeOffset, edgeOffset) ||
                other.edgeOffset == edgeOffset) &&
            const DeepCollectionEquality()
                .equals(other._onRefresh, _onRefresh) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.semanticsValue, semanticsValue) ||
                other.semanticsValue == semanticsValue) &&
            (identical(other.strokeWidth, strokeWidth) ||
                other.strokeWidth == strokeWidth) &&
            (identical(other.triggerMode, triggerMode) ||
                other.triggerMode == triggerMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_child),
      displacement,
      edgeOffset,
      const DeepCollectionEquality().hash(_onRefresh),
      color,
      backgroundColor,
      semanticsLabel,
      semanticsValue,
      strokeWidth,
      triggerMode);

  @override
  String toString() {
    return 'StacRefreshIndicator(child: $child, displacement: $displacement, edgeOffset: $edgeOffset, onRefresh: $onRefresh, color: $color, backgroundColor: $backgroundColor, semanticsLabel: $semanticsLabel, semanticsValue: $semanticsValue, strokeWidth: $strokeWidth, triggerMode: $triggerMode)';
  }
}

/// @nodoc
abstract mixin class _$StacRefreshIndicatorCopyWith<$Res>
    implements $StacRefreshIndicatorCopyWith<$Res> {
  factory _$StacRefreshIndicatorCopyWith(_StacRefreshIndicator value,
          $Res Function(_StacRefreshIndicator) _then) =
      __$StacRefreshIndicatorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? child,
      StacDouble displacement,
      StacDouble edgeOffset,
      Map<String, dynamic>? onRefresh,
      String? color,
      String? backgroundColor,
      String? semanticsLabel,
      String? semanticsValue,
      StacDouble strokeWidth,
      RefreshIndicatorTriggerMode triggerMode});
}

/// @nodoc
class __$StacRefreshIndicatorCopyWithImpl<$Res>
    implements _$StacRefreshIndicatorCopyWith<$Res> {
  __$StacRefreshIndicatorCopyWithImpl(this._self, this._then);

  final _StacRefreshIndicator _self;
  final $Res Function(_StacRefreshIndicator) _then;

  /// Create a copy of StacRefreshIndicator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? child = freezed,
    Object? displacement = null,
    Object? edgeOffset = null,
    Object? onRefresh = freezed,
    Object? color = freezed,
    Object? backgroundColor = freezed,
    Object? semanticsLabel = freezed,
    Object? semanticsValue = freezed,
    Object? strokeWidth = null,
    Object? triggerMode = null,
  }) {
    return _then(_StacRefreshIndicator(
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      displacement: null == displacement
          ? _self.displacement
          : displacement // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      edgeOffset: null == edgeOffset
          ? _self.edgeOffset
          : edgeOffset // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      onRefresh: freezed == onRefresh
          ? _self._onRefresh
          : onRefresh // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticsLabel: freezed == semanticsLabel
          ? _self.semanticsLabel
          : semanticsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticsValue: freezed == semanticsValue
          ? _self.semanticsValue
          : semanticsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      strokeWidth: null == strokeWidth
          ? _self.strokeWidth
          : strokeWidth // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      triggerMode: null == triggerMode
          ? _self.triggerMode
          : triggerMode // ignore: cast_nullable_to_non_nullable
              as RefreshIndicatorTriggerMode,
    ));
  }
}

// dart format on
