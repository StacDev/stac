import 'dart:async';
import 'dart:convert';
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

enum PreviewDevice { mobile, tablet, desktop }

class PreviewDeviceConfig {
  const PreviewDeviceConfig({
    required this.label,
    required this.width,
    required this.height,
    required this.radius,
  });

  final String label;
  final double width;
  final double height;
  final double radius;
}

const _mobileConfig = PreviewDeviceConfig(
  label: 'Mobile',
  width: 430,
  height: 860,
  radius: 28,
);
const _tabletConfig = PreviewDeviceConfig(
  label: 'Tablet',
  width: 820,
  height: 1180,
  radius: 24,
);
const _desktopConfig = PreviewDeviceConfig(
  label: 'Desktop',
  width: 1200,
  height: 760,
  radius: 14,
);

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
  static const double _minZoom = 0.5;
  static const double _maxZoom = 3.0;

  PreviewDevice _selectedDevice = PreviewDevice.mobile;
  double _zoomScale = 1.0;
  String _status = 'Waiting for preview payload...';

  String _displayJsonString = '';
  Map<String, dynamic>? _displayJson;
  String? _displayScreenName;

  String? _pendingJsonString;
  Map<String, dynamic>? _pendingJson;
  String? _pendingScreenName;
  Timer? _debounceTimer;
  Timer? _readyPingTimer;
  bool _receivedFirstPayload = false;

  @override
  void initState() {
    super.initState();
    html.window.onMessage.listen(_handleWindowMessage);
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
    _debounceTimer?.cancel();
    _readyPingTimer?.cancel();
    super.dispose();
  }

  PreviewDeviceConfig get _deviceConfig {
    switch (_selectedDevice) {
      case PreviewDevice.mobile:
        return _mobileConfig;
      case PreviewDevice.tablet:
        return _tabletConfig;
      case PreviewDevice.desktop:
        return _desktopConfig;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Stac Preview Host',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0F766E)),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFE5E7EB),
        body: Column(
          children: [
            _buildToolbar(context),
            Expanded(
              child: _displayJson == null
                  ? Center(
                      child: Text(
                        _status,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 14),
                      ),
                    )
                  : _buildPreviewBody(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToolbar(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: Color(0xFFF8FAFC),
        border: Border(bottom: BorderSide(color: Color(0xFFD1D5DB), width: 1)),
      ),
      child: Row(
        children: [
          Text(
            _displayScreenName ?? 'No screen selected',
            style: textTheme.bodySmall?.copyWith(
              color: const Color(0xFF475569),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 12),
          _buildDeviceButton(
            icon: Icons.phone_iphone_rounded,
            label: 'Mobile',
            selected: _selectedDevice == PreviewDevice.mobile,
            onPressed: () =>
                setState(() => _selectedDevice = PreviewDevice.mobile),
          ),
          _buildDeviceButton(
            icon: Icons.tablet_mac_rounded,
            label: 'Tablet',
            selected: _selectedDevice == PreviewDevice.tablet,
            onPressed: () =>
                setState(() => _selectedDevice = PreviewDevice.tablet),
          ),
          _buildDeviceButton(
            icon: Icons.desktop_windows_rounded,
            label: 'Desktop',
            selected: _selectedDevice == PreviewDevice.desktop,
            onPressed: () =>
                setState(() => _selectedDevice = PreviewDevice.desktop),
          ),
          const Spacer(),
          IconButton(
            onPressed: _increaseZoom,
            tooltip: 'Zoom in',
            icon: const Icon(Icons.zoom_in_rounded, size: 18),
          ),
          Text(
            '${(_zoomScale * 100).round()}%',
            style: textTheme.bodySmall?.copyWith(
              color: const Color(0xFF334155),
            ),
          ),
          IconButton(
            onPressed: _decreaseZoom,
            tooltip: 'Zoom out',
            icon: const Icon(Icons.zoom_out_rounded, size: 18),
          ),
        ],
      ),
    );
  }

  Widget _buildDeviceButton({
    required IconData icon,
    required String label,
    required bool selected,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Tooltip(
        message: label,
        child: IconButton(
          onPressed: onPressed,
          iconSize: 18,
          color: selected ? const Color(0xFF0F766E) : const Color(0xFF64748B),
          icon: Icon(icon),
        ),
      ),
    );
  }

  Widget _buildPreviewBody(BuildContext context) {
    final config = _deviceConfig;

    return Stack(
      children: [
        Positioned.fill(child: CustomPaint(painter: _GridPainter())),
        Positioned.fill(
          child: Center(
            child: Transform.scale(
              scale: _zoomScale,
              child: Container(
                width: config.width,
                height: config.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(config.radius),
                  border: Border.all(
                    color: const Color(0xFF94A3B8),
                    width: 1.5,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x33000000),
                      blurRadius: 20,
                      spreadRadius: 2,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                child: Builder(
                  builder: (innerContext) {
                    final rendered = Stac.fromJson(_displayJson, innerContext);
                    if (rendered == null) {
                      return const Center(
                        child: Text(
                          'Unable to render preview payload.',
                          style: TextStyle(color: Color(0xFFDC2626)),
                        ),
                      );
                    }

                    return rendered;
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _increaseZoom() {
    setState(() {
      _zoomScale = (_zoomScale + 0.1).clamp(_minZoom, _maxZoom);
    });
  }

  void _decreaseZoom() {
    setState(() {
      _zoomScale = (_zoomScale - 0.1).clamp(_minZoom, _maxZoom);
    });
  }

  void _handleWindowMessage(html.MessageEvent event) {
    final message = _normalizeMessage(event.data);
    if (message == null || message['type'] != 'stac.preview.render') {
      return;
    }

    try {
      _receivedFirstPayload = true;
      _readyPingTimer?.cancel();
      final payload = message['json'];
      if (payload is! Map) {
        throw const FormatException('Payload json must be an object.');
      }

      final normalizedPayload = _deepNormalizeJson(payload);
      if (normalizedPayload is! Map<String, dynamic>) {
        throw const FormatException(
          'Payload json must be a string-keyed object.',
        );
      }

      final normalized = normalizedPayload;
      final jsonString = const JsonEncoder.withIndent('  ').convert(normalized);
      final screenName = (message['screenName'] as String?) ?? 'screen';
      final requestId = message['requestId']?.toString();

      if (_displayJsonString.isEmpty) {
        _setDisplayedPayload(
          jsonString: jsonString,
          json: normalized,
          screenName: screenName,
        );
        _postMessage(<String, dynamic>{
          'type': 'stac.preview.rendered',
          'message': 'Rendered $screenName.',
          'screenName': screenName,
          'requestId': requestId,
        });
        return;
      }

      _pendingJsonString = jsonString;
      _pendingJson = normalized;
      _pendingScreenName = screenName;

      _debounceTimer?.cancel();
      _debounceTimer = Timer(const Duration(seconds: 2), () {
        if (!mounted) return;
        if (_pendingJsonString == null || _pendingJson == null) return;

        _setDisplayedPayload(
          jsonString: _pendingJsonString!,
          json: _pendingJson!,
          screenName: _pendingScreenName ?? screenName,
        );
        _postMessage(<String, dynamic>{
          'type': 'stac.preview.rendered',
          'message': 'Rendered ${_pendingScreenName ?? screenName}.',
          'screenName': _pendingScreenName ?? screenName,
          'requestId': requestId,
        });
      });
    } catch (error) {
      setState(() {
        _status = 'Preview error: $error';
      });
      _postMessage(<String, dynamic>{
        'type': 'stac.preview.error',
        'message': 'Preview host failed: $error',
        'requestId': message['requestId']?.toString(),
      });
    }
  }

  void _announceReady() {
    _postMessage(<String, dynamic>{
      'type': 'stac.preview.ready',
      'message': 'Flutter preview host ready.',
    });
  }

  void _setDisplayedPayload({
    required String jsonString,
    required Map<String, dynamic> json,
    required String screenName,
  }) {
    setState(() {
      _displayJsonString = jsonString;
      _displayJson = json;
      _displayScreenName = screenName;
      _status = 'Rendering $screenName';
    });
  }

  Map<String, dynamic>? _normalizeMessage(dynamic raw) {
    if (raw is Map) {
      final normalized = _deepNormalizeJson(raw);
      if (normalized is Map<String, dynamic>) {
        return normalized;
      }
      return null;
    }

    if (raw is String) {
      try {
        final decoded = jsonDecode(raw);
        if (decoded is Map || decoded is List) {
          final normalized = _deepNormalizeJson(decoded);
          if (normalized is Map<String, dynamic>) {
            return normalized;
          }
        }
      } catch (_) {
        return null;
      }
    }

    return null;
  }

  void _postMessage(Map<String, dynamic> payload) {
    html.window.parent?.postMessage(jsonEncode(payload), '*');
  }

  dynamic _deepNormalizeJson(dynamic input) {
    if (input is Map) {
      final output = <String, dynamic>{};
      input.forEach((key, value) {
        output[key.toString()] = _deepNormalizeJson(value);
      });
      return output;
    }

    if (input is List) {
      return input.map(_deepNormalizeJson).toList(growable: false);
    }

    return input;
  }
}

class _GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = const Color(0x2294A3B8);

    const step = 24.0;
    for (double x = 0; x <= size.width; x += step) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }

    for (double y = 0; y <= size.height; y += step) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
