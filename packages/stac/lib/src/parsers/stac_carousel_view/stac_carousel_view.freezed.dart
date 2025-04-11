// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_carousel_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacCarouselView {
  StacCarouselViewType get carouselType;
  StacEdgeInsets? get padding;
  String? get backgroundColor;
  double? get elevation;
  String? get overlayColor;
  bool get itemSnapping;
  double get shrinkExtent;
  Axis get scrollDirection;
  bool get reverse;
  Map<String, dynamic>? get onTap;
  bool get enableSplash;
  double? get itemExtent;
  List<int>? get flexWeights;
  List<Map<String, dynamic>>? get children;

  /// Create a copy of StacCarouselView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacCarouselViewCopyWith<StacCarouselView> get copyWith =>
      _$StacCarouselViewCopyWithImpl<StacCarouselView>(
          this as StacCarouselView, _$identity);

  /// Serializes this StacCarouselView to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacCarouselView &&
            (identical(other.carouselType, carouselType) ||
                other.carouselType == carouselType) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.itemSnapping, itemSnapping) ||
                other.itemSnapping == itemSnapping) &&
            (identical(other.shrinkExtent, shrinkExtent) ||
                other.shrinkExtent == shrinkExtent) &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            const DeepCollectionEquality().equals(other.onTap, onTap) &&
            (identical(other.enableSplash, enableSplash) ||
                other.enableSplash == enableSplash) &&
            (identical(other.itemExtent, itemExtent) ||
                other.itemExtent == itemExtent) &&
            const DeepCollectionEquality()
                .equals(other.flexWeights, flexWeights) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      carouselType,
      padding,
      backgroundColor,
      elevation,
      overlayColor,
      itemSnapping,
      shrinkExtent,
      scrollDirection,
      reverse,
      const DeepCollectionEquality().hash(onTap),
      enableSplash,
      itemExtent,
      const DeepCollectionEquality().hash(flexWeights),
      const DeepCollectionEquality().hash(children));

  @override
  String toString() {
    return 'StacCarouselView(carouselType: $carouselType, padding: $padding, backgroundColor: $backgroundColor, elevation: $elevation, overlayColor: $overlayColor, itemSnapping: $itemSnapping, shrinkExtent: $shrinkExtent, scrollDirection: $scrollDirection, reverse: $reverse, onTap: $onTap, enableSplash: $enableSplash, itemExtent: $itemExtent, flexWeights: $flexWeights, children: $children)';
  }
}

/// @nodoc
abstract mixin class $StacCarouselViewCopyWith<$Res> {
  factory $StacCarouselViewCopyWith(
          StacCarouselView value, $Res Function(StacCarouselView) _then) =
      _$StacCarouselViewCopyWithImpl;
  @useResult
  $Res call(
      {StacCarouselViewType carouselType,
      StacEdgeInsets? padding,
      String? backgroundColor,
      double? elevation,
      String? overlayColor,
      bool itemSnapping,
      double shrinkExtent,
      Axis scrollDirection,
      bool reverse,
      Map<String, dynamic>? onTap,
      bool enableSplash,
      double? itemExtent,
      List<int>? flexWeights,
      List<Map<String, dynamic>>? children});

  $StacEdgeInsetsCopyWith<$Res>? get padding;
}

/// @nodoc
class _$StacCarouselViewCopyWithImpl<$Res>
    implements $StacCarouselViewCopyWith<$Res> {
  _$StacCarouselViewCopyWithImpl(this._self, this._then);

  final StacCarouselView _self;
  final $Res Function(StacCarouselView) _then;

  /// Create a copy of StacCarouselView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carouselType = null,
    Object? padding = freezed,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? overlayColor = freezed,
    Object? itemSnapping = null,
    Object? shrinkExtent = null,
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? onTap = freezed,
    Object? enableSplash = null,
    Object? itemExtent = freezed,
    Object? flexWeights = freezed,
    Object? children = freezed,
  }) {
    return _then(_self.copyWith(
      carouselType: null == carouselType
          ? _self.carouselType
          : carouselType // ignore: cast_nullable_to_non_nullable
              as StacCarouselViewType,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      itemSnapping: null == itemSnapping
          ? _self.itemSnapping
          : itemSnapping // ignore: cast_nullable_to_non_nullable
              as bool,
      shrinkExtent: null == shrinkExtent
          ? _self.shrinkExtent
          : shrinkExtent // ignore: cast_nullable_to_non_nullable
              as double,
      scrollDirection: null == scrollDirection
          ? _self.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as Axis,
      reverse: null == reverse
          ? _self.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      onTap: freezed == onTap
          ? _self.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      enableSplash: null == enableSplash
          ? _self.enableSplash
          : enableSplash // ignore: cast_nullable_to_non_nullable
              as bool,
      itemExtent: freezed == itemExtent
          ? _self.itemExtent
          : itemExtent // ignore: cast_nullable_to_non_nullable
              as double?,
      flexWeights: freezed == flexWeights
          ? _self.flexWeights
          : flexWeights // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      children: freezed == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }

  /// Create a copy of StacCarouselView
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
}

/// @nodoc
@JsonSerializable()
class _StacCarouselView implements StacCarouselView {
  const _StacCarouselView(
      {this.carouselType = StacCarouselViewType.regular,
      this.padding,
      this.backgroundColor,
      this.elevation,
      this.overlayColor,
      this.itemSnapping = false,
      this.shrinkExtent = 0.0,
      this.scrollDirection = Axis.horizontal,
      this.reverse = false,
      final Map<String, dynamic>? onTap,
      this.enableSplash = true,
      this.itemExtent,
      final List<int>? flexWeights,
      required final List<Map<String, dynamic>>? children})
      : _onTap = onTap,
        _flexWeights = flexWeights,
        _children = children;
  factory _StacCarouselView.fromJson(Map<String, dynamic> json) =>
      _$StacCarouselViewFromJson(json);

  @override
  @JsonKey()
  final StacCarouselViewType carouselType;
  @override
  final StacEdgeInsets? padding;
  @override
  final String? backgroundColor;
  @override
  final double? elevation;
  @override
  final String? overlayColor;
  @override
  @JsonKey()
  final bool itemSnapping;
  @override
  @JsonKey()
  final double shrinkExtent;
  @override
  @JsonKey()
  final Axis scrollDirection;
  @override
  @JsonKey()
  final bool reverse;
  final Map<String, dynamic>? _onTap;
  @override
  Map<String, dynamic>? get onTap {
    final value = _onTap;
    if (value == null) return null;
    if (_onTap is EqualUnmodifiableMapView) return _onTap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool enableSplash;
  @override
  final double? itemExtent;
  final List<int>? _flexWeights;
  @override
  List<int>? get flexWeights {
    final value = _flexWeights;
    if (value == null) return null;
    if (_flexWeights is EqualUnmodifiableListView) return _flexWeights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, dynamic>>? _children;
  @override
  List<Map<String, dynamic>>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of StacCarouselView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacCarouselViewCopyWith<_StacCarouselView> get copyWith =>
      __$StacCarouselViewCopyWithImpl<_StacCarouselView>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacCarouselViewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacCarouselView &&
            (identical(other.carouselType, carouselType) ||
                other.carouselType == carouselType) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.itemSnapping, itemSnapping) ||
                other.itemSnapping == itemSnapping) &&
            (identical(other.shrinkExtent, shrinkExtent) ||
                other.shrinkExtent == shrinkExtent) &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            const DeepCollectionEquality().equals(other._onTap, _onTap) &&
            (identical(other.enableSplash, enableSplash) ||
                other.enableSplash == enableSplash) &&
            (identical(other.itemExtent, itemExtent) ||
                other.itemExtent == itemExtent) &&
            const DeepCollectionEquality()
                .equals(other._flexWeights, _flexWeights) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      carouselType,
      padding,
      backgroundColor,
      elevation,
      overlayColor,
      itemSnapping,
      shrinkExtent,
      scrollDirection,
      reverse,
      const DeepCollectionEquality().hash(_onTap),
      enableSplash,
      itemExtent,
      const DeepCollectionEquality().hash(_flexWeights),
      const DeepCollectionEquality().hash(_children));

  @override
  String toString() {
    return 'StacCarouselView(carouselType: $carouselType, padding: $padding, backgroundColor: $backgroundColor, elevation: $elevation, overlayColor: $overlayColor, itemSnapping: $itemSnapping, shrinkExtent: $shrinkExtent, scrollDirection: $scrollDirection, reverse: $reverse, onTap: $onTap, enableSplash: $enableSplash, itemExtent: $itemExtent, flexWeights: $flexWeights, children: $children)';
  }
}

/// @nodoc
abstract mixin class _$StacCarouselViewCopyWith<$Res>
    implements $StacCarouselViewCopyWith<$Res> {
  factory _$StacCarouselViewCopyWith(
          _StacCarouselView value, $Res Function(_StacCarouselView) _then) =
      __$StacCarouselViewCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacCarouselViewType carouselType,
      StacEdgeInsets? padding,
      String? backgroundColor,
      double? elevation,
      String? overlayColor,
      bool itemSnapping,
      double shrinkExtent,
      Axis scrollDirection,
      bool reverse,
      Map<String, dynamic>? onTap,
      bool enableSplash,
      double? itemExtent,
      List<int>? flexWeights,
      List<Map<String, dynamic>>? children});

  @override
  $StacEdgeInsetsCopyWith<$Res>? get padding;
}

/// @nodoc
class __$StacCarouselViewCopyWithImpl<$Res>
    implements _$StacCarouselViewCopyWith<$Res> {
  __$StacCarouselViewCopyWithImpl(this._self, this._then);

  final _StacCarouselView _self;
  final $Res Function(_StacCarouselView) _then;

  /// Create a copy of StacCarouselView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? carouselType = null,
    Object? padding = freezed,
    Object? backgroundColor = freezed,
    Object? elevation = freezed,
    Object? overlayColor = freezed,
    Object? itemSnapping = null,
    Object? shrinkExtent = null,
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? onTap = freezed,
    Object? enableSplash = null,
    Object? itemExtent = freezed,
    Object? flexWeights = freezed,
    Object? children = freezed,
  }) {
    return _then(_StacCarouselView(
      carouselType: null == carouselType
          ? _self.carouselType
          : carouselType // ignore: cast_nullable_to_non_nullable
              as StacCarouselViewType,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      itemSnapping: null == itemSnapping
          ? _self.itemSnapping
          : itemSnapping // ignore: cast_nullable_to_non_nullable
              as bool,
      shrinkExtent: null == shrinkExtent
          ? _self.shrinkExtent
          : shrinkExtent // ignore: cast_nullable_to_non_nullable
              as double,
      scrollDirection: null == scrollDirection
          ? _self.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as Axis,
      reverse: null == reverse
          ? _self.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      onTap: freezed == onTap
          ? _self._onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      enableSplash: null == enableSplash
          ? _self.enableSplash
          : enableSplash // ignore: cast_nullable_to_non_nullable
              as bool,
      itemExtent: freezed == itemExtent
          ? _self.itemExtent
          : itemExtent // ignore: cast_nullable_to_non_nullable
              as double?,
      flexWeights: freezed == flexWeights
          ? _self._flexWeights
          : flexWeights // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      children: freezed == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }

  /// Create a copy of StacCarouselView
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
}

// dart format on
