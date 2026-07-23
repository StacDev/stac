import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:js_interop';

import 'package:web/web.dart' as web;

typedef EmbedJsonPayloadHandler = void Function(
    Map<String, dynamic> jsonPayload);

class EmbedMessageChannel {
  static const _previewMessageType = 'stac-preview-json';
  static const _logName = 'embed-channel';

  JSFunction? _messageListener;

  void start(EmbedJsonPayloadHandler onPayload) {
    dispose();
    _messageListener = ((web.Event event) {
      _debugLog('message event received');

      final payload = _parseMessageEvent(event);
      if (payload == null) {
        _debugLog('payload rejected by parser/validator');
        return;
      }

      _debugLog('payload accepted (type=${payload['type']})');
      onPayload(payload);
    }).toJS;
    web.window.addEventListener('message', _messageListener);
    _debugLog('message listener attached');
  }

  void dispose() {
    if (_messageListener != null) {
      web.window.removeEventListener('message', _messageListener);
      _messageListener = null;
    }
  }

  Map<String, dynamic>? _parseMessageEvent(web.Event event) {
    try {
      final messageEvent = event as web.MessageEvent;
      return _extractPayload(_jsAnyToDart(messageEvent.data));
    } catch (error, stackTrace) {
      _debugLog('event decode failed', error: error, stackTrace: stackTrace);
      return null;
    }
  }

  Map<String, dynamic>? _extractPayload(Object? data) {
    final normalizedData = _normalizeToDart(data);
    if (normalizedData is! Map<String, dynamic>) return null;

    if (normalizedData['type'] == _previewMessageType) {
      final payload = _normalizeToDart(normalizedData['payload']);
      if (payload is! Map<String, dynamic>) return null;
      return _isStacWidgetJson(payload) ? payload : null;
    }

    return _isStacWidgetJson(normalizedData) ? normalizedData : null;
  }

  Object? _normalizeToDart(Object? value) {
    if (value == null) return null;

    if (value is String) {
      try {
        return jsonDecode(value);
      } on FormatException {
        return value;
      }
    }

    if (value is num || value is bool) {
      return value;
    }

    if (value is Map) {
      return _toStringKeyMap(value);
    }

    if (value is List) {
      return value.map(_normalizeToDart).toList();
    }

    return value;
  }

  Map<String, dynamic> _toStringKeyMap(Map source) {
    final result = <String, dynamic>{};
    source.forEach((key, value) {
      result[key.toString()] = _normalizeToDart(value);
    });
    return result;
  }

  Object? _jsAnyToDart(JSAny? value) {
    if (value == null) return null;
    return value.dartify();
  }

  bool _isStacWidgetJson(Map<String, dynamic> json) {
    return json['type'] is String;
  }

  void _debugLog(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    assert(() {
      developer.log(
        message,
        name: _logName,
        error: error,
        stackTrace: stackTrace,
      );
      return true;
    }());
  }
}
