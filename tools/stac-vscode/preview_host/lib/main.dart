import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:web/web.dart' as web;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Stac.initialize();
  runApp(const _PreviewApp());
}

class _PreviewApp extends StatefulWidget {
  const _PreviewApp();

  @override
  State<_PreviewApp> createState() => _PreviewAppState();
}

class _PreviewAppState extends State<_PreviewApp> {
  Map<String, dynamic>? _json;
  Map<String, dynamic>? _themeJson;
  TargetPlatform? _targetPlatform;
  Timer? _readyPingTimer;
  bool _receivedFirstPayload = false;

  @override
  void initState() {
    super.initState();
    web.window.addEventListener('message', _onMessage.toJS);
    _announceReady();
    _readyPingTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_receivedFirstPayload || !mounted || timer.tick >= 10) {
        timer.cancel();
        return;
      }
      _announceReady();
    });
  }

  @override
  void dispose() {
    web.window.removeEventListener('message', _onMessage.toJS);
    _readyPingTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          _buildThemeData(context) ??
          (_targetPlatform != null
              ? ThemeData(platform: _targetPlatform)
              : null),
      home: Scaffold(
        body: _json == null
            ? const Center(child: CircularProgressIndicator())
            : Builder(
                builder: (context) {
                  final widget = Stac.fromJson(_json, context);
                  if (widget == null) {
                    return const Center(
                      child: Text(
                        'Unable to render preview.',
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  }
                  return widget;
                },
              ),
      ),
    );
  }

  ThemeData? _buildThemeData(BuildContext context) {
    if (_themeJson == null) return null;
    try {
      final stacTheme = StacTheme.fromJson(_themeJson!);
      final themeData = stacTheme.parse(context);
      if (_targetPlatform != null && themeData != null) {
        return themeData.copyWith(platform: _targetPlatform);
      }
      return themeData;
    } catch (_) {
      return null;
    }
  }

  void _onMessage(web.MessageEvent event) {
    final message = _normalize(event.data.dartify());
    if (message == null) return;

    final type = message['type'];

    // Handle platform change
    if (type == 'stac.preview.setPlatform') {
      final platform = message['platform'] as String?;
      final tp = switch (platform) {
        'android' => TargetPlatform.android,
        'ios' => TargetPlatform.iOS,
        _ => null,
      };
      // Override the global platform so ALL widgets respect it
      debugDefaultTargetPlatformOverride = tp;
      setState(() {
        _targetPlatform = tp;
      });
      return;
    }

    if (type != 'stac.preview.render') return;

    try {
      _receivedFirstPayload = true;
      _readyPingTimer?.cancel();

      final payload = message['json'];
      if (payload is! Map) {
        throw const FormatException('Payload json must be an object.');
      }

      final json = _deepCast(payload);
      final screenName = (message['screenName'] as String?) ?? 'screen';
      final requestId = message['requestId']?.toString();

      // Parse optional theme
      Map<String, dynamic>? themeJson;
      final themePayload = message['theme'];
      if (themePayload is Map) {
        themeJson = _deepCast(themePayload);
      }

      setState(() {
        _json = json;
        _themeJson = themeJson;
      });

      _post({
        'type': 'stac.preview.rendered',
        'message': 'Rendered $screenName.',
        'screenName': screenName,
        'requestId': requestId,
      });
    } catch (error) {
      _post({
        'type': 'stac.preview.error',
        'message': 'Preview host failed: $error',
        'requestId': message['requestId']?.toString(),
      });
    }
  }

  void _announceReady() {
    _post({
      'type': 'stac.preview.ready',
      'message': 'Flutter preview host ready.',
    });
  }

  void _post(Map<String, dynamic> payload) {
    final parent = web.window.parent;
    if (parent != null) {
      parent.postMessage(jsonEncode(payload).toJS, '*'.toJS);
    }
  }

  Map<String, dynamic>? _normalize(dynamic raw) {
    dynamic decoded = raw;
    if (raw is String) {
      try {
        decoded = jsonDecode(raw);
      } catch (_) {
        return null;
      }
    }
    if (decoded is Map) {
      return _deepCast(decoded);
    }
    return null;
  }

  Map<String, dynamic> _deepCast(Map input) {
    return input.map((key, value) {
      final k = key.toString();
      if (value is Map) return MapEntry(k, _deepCast(value));
      if (value is List) return MapEntry(k, _deepCastList(value));
      return MapEntry(k, value);
    });
  }

  List _deepCastList(List input) {
    return input
        .map((item) {
          if (item is Map) return _deepCast(item);
          if (item is List) return _deepCastList(item);
          return item;
        })
        .toList(growable: false);
  }
}
