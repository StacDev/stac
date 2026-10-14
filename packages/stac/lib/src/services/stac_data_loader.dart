import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:stac/src/services/stac_network_service.dart';
import 'package:stac/src/state/stac_store.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_logger/stac_logger.dart';

/// Decodes a response body that arrived as JSON text. Other values are
/// returned as they are.
Object? decodeStacBody(Object? data) {
  if (data is! String) return data;
  final text = data.trim();
  if (!text.startsWith('{') && !text.startsWith('[')) return data;
  try {
    return jsonDecode(text);
  } on FormatException {
    return data;
  }
}

/// Reads the part of [body] at [targetPath], such as `results` or
/// `data.items[0]`. Returns [body] when [targetPath] is empty, and
/// [stacUnbound] when nothing is there.
///
/// Paths use the expression syntax. The older forms `items.0` and keys
/// containing `-` are also accepted.
Object? readStacTargetPath(Object? body, String? targetPath) {
  if (targetPath == null || targetPath.trim().isEmpty) return body;
  List<String> segments;
  try {
    segments = stacPathSegments(targetPath);
  } on ArgumentError {
    segments = _legacySegments(targetPath.trim());
  }
  return walkStacPath(body, segments, 0);
}

final RegExp _indexSuffix = RegExp(r'^(.*?)((?:\[\d+\])+)$');
final RegExp _index = RegExp(r'\[(\d+)\]');

List<String> _legacySegments(String path) {
  final segments = <String>[];
  for (final part in path.split('.')) {
    final match = _indexSuffix.firstMatch(part);
    if (match == null) {
      segments.add(part);
      continue;
    }
    if (match.group(1)!.isNotEmpty) segments.add(match.group(1)!);
    for (final index in _index.allMatches(match.group(2)!)) {
      segments.add(index.group(1)!);
    }
  }
  return segments;
}

/// What the requests of a [StacDataLoader] have produced so far.
@immutable
class StacDataState {
  /// Creates a state.
  const StacDataState({
    this.data,
    this.hasData = false,
    this.isLoading = false,
    this.status,
    this.error,
  });

  /// The response body, or the part of it at the target path, from the last
  /// successful response.
  final Object? data;

  /// Whether a successful response has arrived.
  final bool hasData;

  /// Whether a request is in flight.
  final bool isLoading;

  /// The status code of the last response.
  final int? status;

  /// A short description of the last failure, or `null` after a success.
  final String? error;

  /// The state as Stac data, with the keys `data`, `isLoading`, `status`
  /// and `error`.
  Map<String, Object?> toJson() {
    return {
      'data': data,
      'isLoading': isLoading,
      'status': status,
      'error': error,
    };
  }
}

/// Sends requests for a widget that shows their data.
///
/// Data from the last successful response is kept while a new request is in
/// flight and after one fails. A response to a request that has since been
/// replaced is ignored.
class StacDataLoader {
  /// Creates a loader that reports each change of [state] to [onChange].
  StacDataLoader({required this.onChange});

  /// Called when [state] changes.
  final ValueChanged<StacDataState> onChange;

  StacDataState _state = const StacDataState();

  /// The current state.
  StacDataState get state => _state;

  int _generation = 0;
  bool _disposed = false;

  /// Sends [request] and keeps the response body at [targetPath] as the
  /// data. Completes when the response has been handled.
  ///
  /// With [resolve] false, placeholders in [request] are expected to be
  /// resolved already.
  Future<void> load(
    BuildContext context,
    StacNetworkRequest request, {
    String? targetPath,
    bool resolve = true,
  }) async {
    final generation = ++_generation;
    _update(
      StacDataState(
        data: _state.data,
        hasData: _state.hasData,
        isLoading: true,
        status: _state.status,
        error: _state.error,
      ),
    );

    Response<dynamic>? response;
    Object? failure;
    try {
      response = await StacNetworkService.request(
        context,
        request,
        resolve: resolve,
      );
    } on DioException catch (e) {
      response = e.response;
      failure = e;
    } catch (e) {
      failure = e;
    }
    if (_disposed || generation != _generation) return;

    final status = response?.statusCode;
    final ok =
        failure == null && status != null && status >= 200 && status < 300;
    if (ok) {
      final data = readStacTargetPath(
        decodeStacBody(response!.data),
        targetPath,
      );
      if (identical(data, stacUnbound)) {
        Log.w('targetPath "$targetPath" was not found in the response');
      }
      _update(
        StacDataState(
          data: identical(data, stacUnbound) ? null : data,
          hasData: true,
          status: status,
        ),
      );
      return;
    }
    final error = _describe(response, failure);
    Log.e('Request to ${request.url} failed: $error');
    _update(
      StacDataState(
        data: _state.data,
        hasData: _state.hasData,
        status: status,
        error: error,
      ),
    );
  }

  /// Stops reporting changes.
  void dispose() {
    _disposed = true;
  }

  void _update(StacDataState next) {
    _state = next;
    if (!_disposed) onChange(next);
  }

  static String _describe(Response<dynamic>? response, Object? failure) {
    if (response != null) {
      final message = response.statusMessage;
      if (message != null && message.isNotEmpty) return message;
      return 'Request failed with status ${response.statusCode}';
    }
    if (failure is DioException) return failure.message ?? failure.type.name;
    return failure?.toString() ?? 'No response';
  }
}
