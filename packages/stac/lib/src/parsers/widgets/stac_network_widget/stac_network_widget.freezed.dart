// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_network_widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacNetworkWidget {
  StacNetworkRequest get request;
  Map<String, dynamic>? get loading;

  /// Create a copy of StacNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacNetworkWidgetCopyWith<StacNetworkWidget> get copyWith =>
      _$StacNetworkWidgetCopyWithImpl<StacNetworkWidget>(
          this as StacNetworkWidget, _$identity);

  /// Serializes this StacNetworkWidget to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacNetworkWidget &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, request, const DeepCollectionEquality().hash(loading));

  @override
  String toString() {
    return 'StacNetworkWidget(request: $request, loading: $loading)';
  }
}

/// @nodoc
abstract mixin class $StacNetworkWidgetCopyWith<$Res> {
  factory $StacNetworkWidgetCopyWith(
          StacNetworkWidget value, $Res Function(StacNetworkWidget) _then) =
      _$StacNetworkWidgetCopyWithImpl;
  @useResult
  $Res call({StacNetworkRequest request, Map<String, dynamic>? loading});

  $StacNetworkRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$StacNetworkWidgetCopyWithImpl<$Res>
    implements $StacNetworkWidgetCopyWith<$Res> {
  _$StacNetworkWidgetCopyWithImpl(this._self, this._then);

  final StacNetworkWidget _self;
  final $Res Function(StacNetworkWidget) _then;

  /// Create a copy of StacNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? loading = freezed,
  }) {
    return _then(_self.copyWith(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest,
      loading: freezed == loading
          ? _self.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNetworkRequestCopyWith<$Res> get request {
    return $StacNetworkRequestCopyWith<$Res>(_self.request, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacNetworkWidget implements StacNetworkWidget {
  const _StacNetworkWidget(
      {required this.request, final Map<String, dynamic>? loading})
      : _loading = loading;
  factory _StacNetworkWidget.fromJson(Map<String, dynamic> json) =>
      _$StacNetworkWidgetFromJson(json);

  @override
  final StacNetworkRequest request;
  final Map<String, dynamic>? _loading;
  @override
  Map<String, dynamic>? get loading {
    final value = _loading;
    if (value == null) return null;
    if (_loading is EqualUnmodifiableMapView) return _loading;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacNetworkWidgetCopyWith<_StacNetworkWidget> get copyWith =>
      __$StacNetworkWidgetCopyWithImpl<_StacNetworkWidget>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacNetworkWidgetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacNetworkWidget &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality().equals(other._loading, _loading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, request, const DeepCollectionEquality().hash(_loading));

  @override
  String toString() {
    return 'StacNetworkWidget(request: $request, loading: $loading)';
  }
}

/// @nodoc
abstract mixin class _$StacNetworkWidgetCopyWith<$Res>
    implements $StacNetworkWidgetCopyWith<$Res> {
  factory _$StacNetworkWidgetCopyWith(
          _StacNetworkWidget value, $Res Function(_StacNetworkWidget) _then) =
      __$StacNetworkWidgetCopyWithImpl;
  @override
  @useResult
  $Res call({StacNetworkRequest request, Map<String, dynamic>? loading});

  @override
  $StacNetworkRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$StacNetworkWidgetCopyWithImpl<$Res>
    implements _$StacNetworkWidgetCopyWith<$Res> {
  __$StacNetworkWidgetCopyWithImpl(this._self, this._then);

  final _StacNetworkWidget _self;
  final $Res Function(_StacNetworkWidget) _then;

  /// Create a copy of StacNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = null,
    Object? loading = freezed,
  }) {
    return _then(_StacNetworkWidget(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest,
      loading: freezed == loading
          ? _self._loading
          : loading // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StacNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNetworkRequestCopyWith<$Res> get request {
    return $StacNetworkRequestCopyWith<$Res>(_self.request, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

// dart format on
