// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_network_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacNetworkRequest _$StacNetworkRequestFromJson(Map<String, dynamic> json) {
  return _StacNetworkRequest.fromJson(json);
}

/// @nodoc
mixin _$StacNetworkRequest {
  String get url => throw _privateConstructorUsedError;
  Method get method => throw _privateConstructorUsedError;
  Map<String, dynamic>? get queryParameters =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get headers => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;
  List<StacNetworkResult> get results => throw _privateConstructorUsedError;

  /// Serializes this StacNetworkRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacNetworkRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacNetworkRequestCopyWith<StacNetworkRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacNetworkRequestCopyWith<$Res> {
  factory $StacNetworkRequestCopyWith(
          StacNetworkRequest value, $Res Function(StacNetworkRequest) then) =
      _$StacNetworkRequestCopyWithImpl<$Res, StacNetworkRequest>;
  @useResult
  $Res call(
      {String url,
      Method method,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      String? contentType,
      dynamic body,
      List<StacNetworkResult> results});
}

/// @nodoc
class _$StacNetworkRequestCopyWithImpl<$Res, $Val extends StacNetworkRequest>
    implements $StacNetworkRequestCopyWith<$Res> {
  _$StacNetworkRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacNetworkRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? method = null,
    Object? queryParameters = freezed,
    Object? headers = freezed,
    Object? contentType = freezed,
    Object? body = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Method,
      queryParameters: freezed == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<StacNetworkResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacNetworkRequestImplCopyWith<$Res>
    implements $StacNetworkRequestCopyWith<$Res> {
  factory _$$StacNetworkRequestImplCopyWith(_$StacNetworkRequestImpl value,
          $Res Function(_$StacNetworkRequestImpl) then) =
      __$$StacNetworkRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      Method method,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      String? contentType,
      dynamic body,
      List<StacNetworkResult> results});
}

/// @nodoc
class __$$StacNetworkRequestImplCopyWithImpl<$Res>
    extends _$StacNetworkRequestCopyWithImpl<$Res, _$StacNetworkRequestImpl>
    implements _$$StacNetworkRequestImplCopyWith<$Res> {
  __$$StacNetworkRequestImplCopyWithImpl(_$StacNetworkRequestImpl _value,
      $Res Function(_$StacNetworkRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacNetworkRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? method = null,
    Object? queryParameters = freezed,
    Object? headers = freezed,
    Object? contentType = freezed,
    Object? body = freezed,
    Object? results = null,
  }) {
    return _then(_$StacNetworkRequestImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Method,
      queryParameters: freezed == queryParameters
          ? _value._queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<StacNetworkResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacNetworkRequestImpl implements _StacNetworkRequest {
  const _$StacNetworkRequestImpl(
      {required this.url,
      this.method = Method.get,
      final Map<String, dynamic>? queryParameters,
      final Map<String, dynamic>? headers,
      this.contentType,
      this.body,
      final List<StacNetworkResult> results = const []})
      : _queryParameters = queryParameters,
        _headers = headers,
        _results = results;

  factory _$StacNetworkRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacNetworkRequestImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey()
  final Method method;
  final Map<String, dynamic>? _queryParameters;
  @override
  Map<String, dynamic>? get queryParameters {
    final value = _queryParameters;
    if (value == null) return null;
    if (_queryParameters is EqualUnmodifiableMapView) return _queryParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _headers;
  @override
  Map<String, dynamic>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? contentType;
  @override
  final dynamic body;
  final List<StacNetworkResult> _results;
  @override
  @JsonKey()
  List<StacNetworkResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'StacNetworkRequest(url: $url, method: $method, queryParameters: $queryParameters, headers: $headers, contentType: $contentType, body: $body, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacNetworkRequestImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality()
                .equals(other._queryParameters, _queryParameters) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      method,
      const DeepCollectionEquality().hash(_queryParameters),
      const DeepCollectionEquality().hash(_headers),
      contentType,
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of StacNetworkRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacNetworkRequestImplCopyWith<_$StacNetworkRequestImpl> get copyWith =>
      __$$StacNetworkRequestImplCopyWithImpl<_$StacNetworkRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacNetworkRequestImplToJson(
      this,
    );
  }
}

abstract class _StacNetworkRequest implements StacNetworkRequest {
  const factory _StacNetworkRequest(
      {required final String url,
      final Method method,
      final Map<String, dynamic>? queryParameters,
      final Map<String, dynamic>? headers,
      final String? contentType,
      final dynamic body,
      final List<StacNetworkResult> results}) = _$StacNetworkRequestImpl;

  factory _StacNetworkRequest.fromJson(Map<String, dynamic> json) =
      _$StacNetworkRequestImpl.fromJson;

  @override
  String get url;
  @override
  Method get method;
  @override
  Map<String, dynamic>? get queryParameters;
  @override
  Map<String, dynamic>? get headers;
  @override
  String? get contentType;
  @override
  dynamic get body;
  @override
  List<StacNetworkResult> get results;

  /// Create a copy of StacNetworkRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacNetworkRequestImplCopyWith<_$StacNetworkRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StacNetworkResult _$StacNetworkResultFromJson(Map<String, dynamic> json) {
  return _StacNetworkResult.fromJson(json);
}

/// @nodoc
mixin _$StacNetworkResult {
  int get statusCode => throw _privateConstructorUsedError;
  Map<String, dynamic> get action => throw _privateConstructorUsedError;

  /// Serializes this StacNetworkResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacNetworkResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacNetworkResultCopyWith<StacNetworkResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacNetworkResultCopyWith<$Res> {
  factory $StacNetworkResultCopyWith(
          StacNetworkResult value, $Res Function(StacNetworkResult) then) =
      _$StacNetworkResultCopyWithImpl<$Res, StacNetworkResult>;
  @useResult
  $Res call({int statusCode, Map<String, dynamic> action});
}

/// @nodoc
class _$StacNetworkResultCopyWithImpl<$Res, $Val extends StacNetworkResult>
    implements $StacNetworkResultCopyWith<$Res> {
  _$StacNetworkResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacNetworkResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacNetworkResultImplCopyWith<$Res>
    implements $StacNetworkResultCopyWith<$Res> {
  factory _$$StacNetworkResultImplCopyWith(_$StacNetworkResultImpl value,
          $Res Function(_$StacNetworkResultImpl) then) =
      __$$StacNetworkResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, Map<String, dynamic> action});
}

/// @nodoc
class __$$StacNetworkResultImplCopyWithImpl<$Res>
    extends _$StacNetworkResultCopyWithImpl<$Res, _$StacNetworkResultImpl>
    implements _$$StacNetworkResultImplCopyWith<$Res> {
  __$$StacNetworkResultImplCopyWithImpl(_$StacNetworkResultImpl _value,
      $Res Function(_$StacNetworkResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacNetworkResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? action = null,
  }) {
    return _then(_$StacNetworkResultImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value._action
          : action // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacNetworkResultImpl implements _StacNetworkResult {
  const _$StacNetworkResultImpl(
      {required this.statusCode, required final Map<String, dynamic> action})
      : _action = action;

  factory _$StacNetworkResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacNetworkResultImplFromJson(json);

  @override
  final int statusCode;
  final Map<String, dynamic> _action;
  @override
  Map<String, dynamic> get action {
    if (_action is EqualUnmodifiableMapView) return _action;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_action);
  }

  @override
  String toString() {
    return 'StacNetworkResult(statusCode: $statusCode, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacNetworkResultImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._action, _action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(_action));

  /// Create a copy of StacNetworkResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacNetworkResultImplCopyWith<_$StacNetworkResultImpl> get copyWith =>
      __$$StacNetworkResultImplCopyWithImpl<_$StacNetworkResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacNetworkResultImplToJson(
      this,
    );
  }
}

abstract class _StacNetworkResult implements StacNetworkResult {
  const factory _StacNetworkResult(
      {required final int statusCode,
      required final Map<String, dynamic> action}) = _$StacNetworkResultImpl;

  factory _StacNetworkResult.fromJson(Map<String, dynamic> json) =
      _$StacNetworkResultImpl.fromJson;

  @override
  int get statusCode;
  @override
  Map<String, dynamic> get action;

  /// Create a copy of StacNetworkResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacNetworkResultImplCopyWith<_$StacNetworkResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
