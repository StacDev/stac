// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_network_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiNetworkRequest _$MiraiNetworkRequestFromJson(Map<String, dynamic> json) {
  return _MiraiNetworkRequest.fromJson(json);
}

/// @nodoc
mixin _$MiraiNetworkRequest {
  String get url => throw _privateConstructorUsedError;
  Method get method => throw _privateConstructorUsedError;
  Map<String, dynamic>? get queryParameters =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get headers => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;
  List<MiraiNetworkResult> get results => throw _privateConstructorUsedError;

  /// Serializes this MiraiNetworkRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiNetworkRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiNetworkRequestCopyWith<MiraiNetworkRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiNetworkRequestCopyWith<$Res> {
  factory $MiraiNetworkRequestCopyWith(
          MiraiNetworkRequest value, $Res Function(MiraiNetworkRequest) then) =
      _$MiraiNetworkRequestCopyWithImpl<$Res, MiraiNetworkRequest>;
  @useResult
  $Res call(
      {String url,
      Method method,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      String? contentType,
      dynamic body,
      List<MiraiNetworkResult> results});
}

/// @nodoc
class _$MiraiNetworkRequestCopyWithImpl<$Res, $Val extends MiraiNetworkRequest>
    implements $MiraiNetworkRequestCopyWith<$Res> {
  _$MiraiNetworkRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiNetworkRequest
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
              as List<MiraiNetworkResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiNetworkRequestImplCopyWith<$Res>
    implements $MiraiNetworkRequestCopyWith<$Res> {
  factory _$$MiraiNetworkRequestImplCopyWith(_$MiraiNetworkRequestImpl value,
          $Res Function(_$MiraiNetworkRequestImpl) then) =
      __$$MiraiNetworkRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      Method method,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      String? contentType,
      dynamic body,
      List<MiraiNetworkResult> results});
}

/// @nodoc
class __$$MiraiNetworkRequestImplCopyWithImpl<$Res>
    extends _$MiraiNetworkRequestCopyWithImpl<$Res, _$MiraiNetworkRequestImpl>
    implements _$$MiraiNetworkRequestImplCopyWith<$Res> {
  __$$MiraiNetworkRequestImplCopyWithImpl(_$MiraiNetworkRequestImpl _value,
      $Res Function(_$MiraiNetworkRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiNetworkRequest
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
    return _then(_$MiraiNetworkRequestImpl(
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
              as List<MiraiNetworkResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiNetworkRequestImpl implements _MiraiNetworkRequest {
  const _$MiraiNetworkRequestImpl(
      {required this.url,
      this.method = Method.get,
      final Map<String, dynamic>? queryParameters,
      final Map<String, dynamic>? headers,
      this.contentType,
      this.body,
      final List<MiraiNetworkResult> results = const []})
      : _queryParameters = queryParameters,
        _headers = headers,
        _results = results;

  factory _$MiraiNetworkRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiNetworkRequestImplFromJson(json);

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
  final List<MiraiNetworkResult> _results;
  @override
  @JsonKey()
  List<MiraiNetworkResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MiraiNetworkRequest(url: $url, method: $method, queryParameters: $queryParameters, headers: $headers, contentType: $contentType, body: $body, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiNetworkRequestImpl &&
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

  /// Create a copy of MiraiNetworkRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiNetworkRequestImplCopyWith<_$MiraiNetworkRequestImpl> get copyWith =>
      __$$MiraiNetworkRequestImplCopyWithImpl<_$MiraiNetworkRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiNetworkRequestImplToJson(
      this,
    );
  }
}

abstract class _MiraiNetworkRequest implements MiraiNetworkRequest {
  const factory _MiraiNetworkRequest(
      {required final String url,
      final Method method,
      final Map<String, dynamic>? queryParameters,
      final Map<String, dynamic>? headers,
      final String? contentType,
      final dynamic body,
      final List<MiraiNetworkResult> results}) = _$MiraiNetworkRequestImpl;

  factory _MiraiNetworkRequest.fromJson(Map<String, dynamic> json) =
      _$MiraiNetworkRequestImpl.fromJson;

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
  List<MiraiNetworkResult> get results;

  /// Create a copy of MiraiNetworkRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiNetworkRequestImplCopyWith<_$MiraiNetworkRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MiraiNetworkResult _$MiraiNetworkResultFromJson(Map<String, dynamic> json) {
  return _MiraiNetworkResult.fromJson(json);
}

/// @nodoc
mixin _$MiraiNetworkResult {
  int get statusCode => throw _privateConstructorUsedError;
  Map<String, dynamic> get action => throw _privateConstructorUsedError;

  /// Serializes this MiraiNetworkResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiNetworkResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiNetworkResultCopyWith<MiraiNetworkResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiNetworkResultCopyWith<$Res> {
  factory $MiraiNetworkResultCopyWith(
          MiraiNetworkResult value, $Res Function(MiraiNetworkResult) then) =
      _$MiraiNetworkResultCopyWithImpl<$Res, MiraiNetworkResult>;
  @useResult
  $Res call({int statusCode, Map<String, dynamic> action});
}

/// @nodoc
class _$MiraiNetworkResultCopyWithImpl<$Res, $Val extends MiraiNetworkResult>
    implements $MiraiNetworkResultCopyWith<$Res> {
  _$MiraiNetworkResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiNetworkResult
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
abstract class _$$MiraiNetworkResultImplCopyWith<$Res>
    implements $MiraiNetworkResultCopyWith<$Res> {
  factory _$$MiraiNetworkResultImplCopyWith(_$MiraiNetworkResultImpl value,
          $Res Function(_$MiraiNetworkResultImpl) then) =
      __$$MiraiNetworkResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, Map<String, dynamic> action});
}

/// @nodoc
class __$$MiraiNetworkResultImplCopyWithImpl<$Res>
    extends _$MiraiNetworkResultCopyWithImpl<$Res, _$MiraiNetworkResultImpl>
    implements _$$MiraiNetworkResultImplCopyWith<$Res> {
  __$$MiraiNetworkResultImplCopyWithImpl(_$MiraiNetworkResultImpl _value,
      $Res Function(_$MiraiNetworkResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiNetworkResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? action = null,
  }) {
    return _then(_$MiraiNetworkResultImpl(
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
class _$MiraiNetworkResultImpl implements _MiraiNetworkResult {
  const _$MiraiNetworkResultImpl(
      {required this.statusCode, required final Map<String, dynamic> action})
      : _action = action;

  factory _$MiraiNetworkResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiNetworkResultImplFromJson(json);

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
    return 'MiraiNetworkResult(statusCode: $statusCode, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiNetworkResultImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._action, _action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(_action));

  /// Create a copy of MiraiNetworkResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiNetworkResultImplCopyWith<_$MiraiNetworkResultImpl> get copyWith =>
      __$$MiraiNetworkResultImplCopyWithImpl<_$MiraiNetworkResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiNetworkResultImplToJson(
      this,
    );
  }
}

abstract class _MiraiNetworkResult implements MiraiNetworkResult {
  const factory _MiraiNetworkResult(
      {required final int statusCode,
      required final Map<String, dynamic> action}) = _$MiraiNetworkResultImpl;

  factory _MiraiNetworkResult.fromJson(Map<String, dynamic> json) =
      _$MiraiNetworkResultImpl.fromJson;

  @override
  int get statusCode;
  @override
  Map<String, dynamic> get action;

  /// Create a copy of MiraiNetworkResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiNetworkResultImplCopyWith<_$MiraiNetworkResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
