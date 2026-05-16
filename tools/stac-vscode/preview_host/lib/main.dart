import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stac/stac.dart';
import 'package:web/web.dart' as web;
import 'package:http/http.dart' as http;

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
  String? _requestId;
  TargetPlatform? _targetPlatform;
  Timer? _readyPingTimer;
  bool _receivedFirstPayload = false;
  JSFunction? _onMessageJs;

  @override
  void initState() {
    super.initState();
    _log('Preview host initState');
    _onMessageJs = _onMessage.toJS;
    web.window.addEventListener('message', _onMessageJs!);
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
    if (_onMessageJs != null) {
      web.window.removeEventListener('message', _onMessageJs!);
      _onMessageJs = null;
    }
    _readyPingTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeAnimationDuration: Duration.zero,
      theme:
          _buildThemeData(context) ??
          (_targetPlatform != null
              ? ThemeData(platform: _targetPlatform)
              : null),
      home: _json == null
          ? const Scaffold(
              body: SizedBox.shrink(),
            ) // Hide loader - webview shows progress bar instead
          : KeyedSubtree(
              key: ValueKey(_requestId),
              child: Scaffold(
                body: Builder(
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
            ),
    );
  }

  ThemeData? _cachedThemeData;
  Map<String, dynamic>? _lastThemeJson;
  TargetPlatform? _lastTargetPlatform;

  ThemeData? _buildThemeData(BuildContext context) {
    if (_themeJson == null && _targetPlatform == null) {
      _cachedThemeData = null;
      _lastThemeJson = null;
      _lastTargetPlatform = null;
      return null;
    }

    if (_themeJson == _lastThemeJson &&
        _targetPlatform == _lastTargetPlatform) {
      return _cachedThemeData;
    }

    try {
      ThemeData? themeData;
      if (_themeJson != null) {
        final stacTheme = StacTheme.fromJson(_themeJson!);
        themeData = stacTheme.parse(context);
      }

      if (_targetPlatform != null) {
        themeData = (themeData ?? ThemeData.light()).copyWith(
          platform: _targetPlatform,
        );
      }

      _lastThemeJson = _themeJson;
      _lastTargetPlatform = _targetPlatform;
      _cachedThemeData = themeData;
      return themeData;
    } catch (_) {
      return null;
    }
  }

  void _onMessage(web.MessageEvent event) {
    _log('Received message event');
    final message = _normalize(event.data.dartify());
    if (message == null) {
      _log('Failed to normalize message');
      return;
    }

    final type = message['type'];
    _log('Message type: $type');

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

    if (type == 'stac.preview.loadFonts') {
      _loadFonts(message['fonts']);
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
      _log('Processing render payload for $screenName, requestId: $requestId');

      // Parse optional theme
      Map<String, dynamic>? themeJson;
      final themePayload = message['theme'];
      if (themePayload is Map) {
        themeJson = _deepCast(themePayload);
      }

      setState(() {
        _json = json;
        _themeJson = themeJson;
        _requestId = requestId;
      });
      _log('State updated with new JSON');

      _post({
        'type': 'stac.preview.rendered',
        'message': 'Rendered $screenName.',
        'screenName': screenName,
        'requestId': requestId,
      });
    } catch (error) {
      _log('Preview host error: $error');
      _post({
        'type': 'stac.preview.error',
        'message': 'Preview host failed: $error',
        'requestId': message['requestId']?.toString(),
      });
    }
  }

  Future<void> _loadFonts(dynamic fontsPayload) async {
    if (fontsPayload is! List) return;

    final futures = <Future<void>>[];

    for (final fontData in fontsPayload) {
      if (fontData is! Map) continue;
      final family = fontData['family'] as String?;
      final urls = fontData['urls'] as List?;

      if (family == null || urls == null) continue;

      futures.add(_loadFontFamily(family, urls));
    }

    await Future.wait(futures);

    // Trigger rebuild to apply new fonts
    if (mounted) setState(() {});
  }

  Future<void> _loadFontFamily(String family, List urls) async {
    final loader = FontLoader(family);
    for (final url in urls) {
      if (url is String) {
        loader.addFont(_fetchFont(url));
      }
    }
    try {
      await loader.load();
      _log('Loaded font family: $family');
    } catch (e) {
      _log('Failed to load font family $family: $e');
    }
  }

  Future<ByteData> _fetchFont(String url) async {
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: 10));
      if (response.statusCode == 200) {
        return ByteData.view(response.bodyBytes.buffer);
      } else {
        throw Exception(
          'Failed to load font from $url: ${response.statusCode}',
        );
      }
    } on TimeoutException {
      throw Exception('Timed out loading font from $url');
    } catch (e) {
      throw Exception('Failed to load font from $url: $e');
    }
  }

  void _announceReady() {
    _post({
      'type': 'stac.preview.ready',
      'message': 'Flutter preview host ready.',
    });
  }

  void _log(String message) {
    _post({'type': 'stac.preview.log', 'message': message});
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
