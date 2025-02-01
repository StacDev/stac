import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_network_request.freezed.dart';
part 'stac_network_request.g.dart';

enum Method {
  get,
  post,
  put,
  delete,
}

@freezed
class StacNetworkRequest with _$StacNetworkRequest {
  const factory StacNetworkRequest({
    required String url,
    @Default(Method.get) Method method,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? contentType,
    dynamic body,
    @Default([]) List<StacNetworkResult> results,
  }) = _StacNetworkRequest;

  factory StacNetworkRequest.fromJson(Map<String, dynamic> json) =>
      _$StacNetworkRequestFromJson(json);
}

@freezed
class StacNetworkResult with _$StacNetworkResult {
  const factory StacNetworkResult({
    required int statusCode,
    required Map<String, dynamic> action,
  }) = _StacNetworkResult;

  factory StacNetworkResult.fromJson(Map<String, dynamic> json) =>
      _$StacNetworkResultFromJson(json);
}
