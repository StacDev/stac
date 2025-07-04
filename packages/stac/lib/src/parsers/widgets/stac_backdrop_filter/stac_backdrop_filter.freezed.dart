// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_backdrop_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacBackdropFilter {
  StacImageFilter get filter;
  Map<String, dynamic>? get child;
  bool get enabled;
  BlendMode get blendMode;

  /// Create a copy of StacBackdropFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBackdropFilterCopyWith<StacBackdropFilter> get copyWith =>
      _$StacBackdropFilterCopyWithImpl<StacBackdropFilter>(
          this as StacBackdropFilter, _$identity);

  /// Serializes this StacBackdropFilter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBackdropFilter &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.blendMode, blendMode) ||
                other.blendMode == blendMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filter,
      const DeepCollectionEquality().hash(child), enabled, blendMode);

  @override
  String toString() {
    return 'StacBackdropFilter(filter: $filter, child: $child, enabled: $enabled, blendMode: $blendMode)';
  }
}

/// @nodoc
abstract mixin class $StacBackdropFilterCopyWith<$Res> {
  factory $StacBackdropFilterCopyWith(
          StacBackdropFilter value, $Res Function(StacBackdropFilter) _then) =
      _$StacBackdropFilterCopyWithImpl;
  @useResult
  $Res call(
      {StacImageFilter filter,
      Map<String, dynamic>? child,
      bool enabled,
      BlendMode blendMode});

  $StacImageFilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$StacBackdropFilterCopyWithImpl<$Res>
    implements $StacBackdropFilterCopyWith<$Res> {
  _$StacBackdropFilterCopyWithImpl(this._self, this._then);

  final StacBackdropFilter _self;
  final $Res Function(StacBackdropFilter) _then;

  /// Create a copy of StacBackdropFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? child = freezed,
    Object? enabled = null,
    Object? blendMode = null,
  }) {
    return _then(_self.copyWith(
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as StacImageFilter,
      child: freezed == child
          ? _self.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      blendMode: null == blendMode
          ? _self.blendMode
          : blendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode,
    ));
  }

  /// Create a copy of StacBackdropFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacImageFilterCopyWith<$Res> get filter {
    return $StacImageFilterCopyWith<$Res>(_self.filter, (value) {
      return _then(_self.copyWith(filter: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacBackdropFilter implements StacBackdropFilter {
  const _StacBackdropFilter(
      {required this.filter,
      final Map<String, dynamic>? child,
      this.enabled = true,
      this.blendMode = BlendMode.srcOver})
      : _child = child;
  factory _StacBackdropFilter.fromJson(Map<String, dynamic> json) =>
      _$StacBackdropFilterFromJson(json);

  @override
  final StacImageFilter filter;
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
  final bool enabled;
  @override
  @JsonKey()
  final BlendMode blendMode;

  /// Create a copy of StacBackdropFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBackdropFilterCopyWith<_StacBackdropFilter> get copyWith =>
      __$StacBackdropFilterCopyWithImpl<_StacBackdropFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBackdropFilterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBackdropFilter &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.blendMode, blendMode) ||
                other.blendMode == blendMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filter,
      const DeepCollectionEquality().hash(_child), enabled, blendMode);

  @override
  String toString() {
    return 'StacBackdropFilter(filter: $filter, child: $child, enabled: $enabled, blendMode: $blendMode)';
  }
}

/// @nodoc
abstract mixin class _$StacBackdropFilterCopyWith<$Res>
    implements $StacBackdropFilterCopyWith<$Res> {
  factory _$StacBackdropFilterCopyWith(
          _StacBackdropFilter value, $Res Function(_StacBackdropFilter) _then) =
      __$StacBackdropFilterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacImageFilter filter,
      Map<String, dynamic>? child,
      bool enabled,
      BlendMode blendMode});

  @override
  $StacImageFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$StacBackdropFilterCopyWithImpl<$Res>
    implements _$StacBackdropFilterCopyWith<$Res> {
  __$StacBackdropFilterCopyWithImpl(this._self, this._then);

  final _StacBackdropFilter _self;
  final $Res Function(_StacBackdropFilter) _then;

  /// Create a copy of StacBackdropFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? filter = null,
    Object? child = freezed,
    Object? enabled = null,
    Object? blendMode = null,
  }) {
    return _then(_StacBackdropFilter(
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as StacImageFilter,
      child: freezed == child
          ? _self._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      blendMode: null == blendMode
          ? _self.blendMode
          : blendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode,
    ));
  }

  /// Create a copy of StacBackdropFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacImageFilterCopyWith<$Res> get filter {
    return $StacImageFilterCopyWith<$Res>(_self.filter, (value) {
      return _then(_self.copyWith(filter: value));
    });
  }
}

// dart format on
