import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:stac_cli/src/services/build_service.dart';
import 'package:stac_cli/src/utils/console_logger.dart';

class DevService {
  DevService({BuildService? buildService})
    : _buildService = buildService ?? BuildService();

  final BuildService _buildService;

  Future<void> serve({
    String? projectPath,
    String host = '127.0.0.1',
    int port = 45700,
    bool skipBuild = false,
    bool watch = true,
  }) async {
    final projectDir = _buildService.resolveProjectDir(
      projectPath: projectPath,
    );
    final options = await _buildService.loadBuildConfigFromOptions(projectDir);
    final outputDir = path.join(projectDir, options.outputDir);
    final sourceDir = path.join(projectDir, options.sourceDir);

    var buildRunning = false;
    var buildQueued = false;

    Future<void> runBuild(String reason) async {
      if (buildRunning) {
        buildQueued = true;
        return;
      }

      buildRunning = true;
      do {
        buildQueued = false;
        try {
          ConsoleLogger.info('Building Stac project ($reason)...');
          await _buildService.build(projectPath: projectDir);
          ConsoleLogger.success('Local Stac build updated.');
        } catch (e) {
          ConsoleLogger.error('Local Stac build failed: $e');
        }
      } while (buildQueued);
      buildRunning = false;
    }

    if (!skipBuild) {
      await runBuild('initial');
    }

    final server = await HttpServer.bind(host, port);
    final serverUrl = _localBaseUrl(server.address.host, server.port);
    ConsoleLogger.success('Stac local server running at $serverUrl');
    ConsoleLogger.info('Screens: $serverUrl/screens?screenName=<screen_name>');
    ConsoleLogger.info('Themes:  $serverUrl/themes?themeName=<theme_name>');
    await _printDeviceUrls(
      requestedHost: host,
      boundHost: server.address.host,
      port: server.port,
    );

    StreamSubscription<FileSystemEvent>? watcher;
    Timer? rebuildDebounce;

    void scheduleBuild(FileSystemEvent event) {
      if (!event.path.endsWith('.dart')) {
        return;
      }
      rebuildDebounce?.cancel();
      rebuildDebounce = Timer(const Duration(milliseconds: 350), () {
        unawaited(runBuild(path.relative(event.path, from: projectDir)));
      });
    }

    if (watch) {
      final directory = Directory(sourceDir);
      if (directory.existsSync()) {
        try {
          watcher = directory.watch(recursive: true).listen(scheduleBuild);
          ConsoleLogger.info(
            'Watching ${path.relative(sourceDir, from: projectDir)} for changes.',
          );
        } catch (e) {
          ConsoleLogger.warning('File watching is not available: $e');
        }
      } else {
        ConsoleLogger.warning('Source directory not found: $sourceDir');
      }
    }

    final done = Completer<void>();
    final signalSubscriptions = <StreamSubscription<ProcessSignal>>[];

    Future<void> shutdown() async {
      if (done.isCompleted) {
        return;
      }
      rebuildDebounce?.cancel();
      await watcher?.cancel();
      for (final subscription in signalSubscriptions) {
        await subscription.cancel();
      }
      await server.close(force: true);
      ConsoleLogger.info('Stopped Stac local server.');
      done.complete();
    }

    if (!Platform.isWindows) {
      signalSubscriptions.add(
        ProcessSignal.sigint.watch().listen((_) => unawaited(shutdown())),
      );
      signalSubscriptions.add(
        ProcessSignal.sigterm.watch().listen((_) => unawaited(shutdown())),
      );
    }

    server.listen(
      (request) =>
          unawaited(_handleRequest(request: request, outputDir: outputDir)),
      onError: (Object error, StackTrace stackTrace) {
        ConsoleLogger.error('Server error: $error');
      },
    );

    await done.future;
  }

  Future<void> _handleRequest({
    required HttpRequest request,
    required String outputDir,
  }) async {
    final response = request.response;
    _setCorsHeaders(response);

    if (request.method == 'OPTIONS') {
      response.statusCode = HttpStatus.noContent;
      await response.close();
      return;
    }

    if (request.method != 'GET') {
      await _writeJson(response, HttpStatus.methodNotAllowed, {
        'error': 'Only GET is supported by stac dev.',
      });
      return;
    }

    switch (request.uri.path) {
      case '/':
      case '/health':
        await _writeJson(response, HttpStatus.ok, {'status': 'ok'});
        return;
      case '/screens':
        await _serveArtifact(
          response: response,
          outputDir: outputDir,
          artifactDirName: 'screens',
          artifactName: request.uri.queryParameters['screenName'],
          missingNameMessage: 'Missing screenName query parameter.',
        );
        return;
      case '/themes':
        await _serveArtifact(
          response: response,
          outputDir: outputDir,
          artifactDirName: 'themes',
          artifactName: request.uri.queryParameters['themeName'],
          missingNameMessage: 'Missing themeName query parameter.',
        );
        return;
      default:
        await _writeJson(response, HttpStatus.notFound, {
          'error': 'Unknown stac dev endpoint: ${request.uri.path}',
        });
    }
  }

  Future<void> _serveArtifact({
    required HttpResponse response,
    required String outputDir,
    required String artifactDirName,
    required String? artifactName,
    required String missingNameMessage,
  }) async {
    if (artifactName == null || artifactName.trim().isEmpty) {
      await _writeJson(response, HttpStatus.badRequest, {
        'error': missingNameMessage,
      });
      return;
    }

    final artifactFile = _resolveArtifactFile(
      outputDir: outputDir,
      artifactDirName: artifactDirName,
      artifactName: artifactName,
    );

    if (artifactFile == null) {
      await _writeJson(response, HttpStatus.badRequest, {
        'error': 'Artifact names cannot be absolute or contain "..".',
      });
      return;
    }

    if (!await artifactFile.exists()) {
      await _writeJson(response, HttpStatus.notFound, {
        'error': 'Artifact not found: $artifactName',
      });
      return;
    }

    final stacJson = await artifactFile.readAsString();
    final stat = await artifactFile.stat();
    await _writeJson(response, HttpStatus.ok, {
      'name': artifactName,
      'stacJson': stacJson,
      'version': stat.modified.millisecondsSinceEpoch,
    });
  }

  File? _resolveArtifactFile({
    required String outputDir,
    required String artifactDirName,
    required String artifactName,
  }) {
    final fileName = '$artifactName.json';
    if (path.isAbsolute(fileName) || path.split(fileName).contains('..')) {
      return null;
    }
    return File(path.join(outputDir, artifactDirName, fileName));
  }

  Future<void> _writeJson(
    HttpResponse response,
    int statusCode,
    Map<String, Object?> payload,
  ) async {
    response.statusCode = statusCode;
    response.headers.contentType = ContentType.json;
    response.write(jsonEncode(payload));
    await response.close();
  }

  void _setCorsHeaders(HttpResponse response) {
    response.headers
      ..set(HttpHeaders.accessControlAllowOriginHeader, '*')
      ..set(HttpHeaders.accessControlAllowMethodsHeader, 'GET, OPTIONS')
      ..set(HttpHeaders.accessControlAllowHeadersHeader, 'content-type');
  }

  Future<void> _printDeviceUrls({
    required String requestedHost,
    required String boundHost,
    required int port,
  }) async {
    final localUrl = _localBaseUrl(boundHost, port);
    final androidEmulatorUrl = _baseUrl('10.0.2.2', port);
    final lanUrls = await _lanBaseUrls(port);
    final acceptsPhysicalDevices =
        _acceptsRemoteConnections(requestedHost) ||
        _acceptsRemoteConnections(boundHost);

    ConsoleLogger.info('Device URLs:');
    ConsoleLogger.info('  Local / iOS Simulator / Web: $localUrl');
    ConsoleLogger.info('  Android Emulator:          $androidEmulatorUrl');

    if (lanUrls.isEmpty) {
      ConsoleLogger.warning('  Physical device: no LAN IPv4 address found.');
      _printApiBaseUrlHint();
      return;
    }

    if (!acceptsPhysicalDevices) {
      ConsoleLogger.warning(
        '  Physical device: run "stac dev --host 0.0.0.0", then use ${lanUrls.first}',
      );
      _printApiBaseUrlHint();
      return;
    }

    ConsoleLogger.info('  Physical device:           ${lanUrls.first}');
    for (final url in lanUrls.skip(1)) {
      ConsoleLogger.info('                             $url');
    }
    _printApiBaseUrlHint();
  }

  void _printApiBaseUrlHint() {
    ConsoleLogger.info(
      'Use the matching URL as StacOptions.apiBaseUrl in debug builds.',
    );
  }

  Future<List<String>> _lanBaseUrls(int port) async {
    try {
      final interfaces = await NetworkInterface.list(
        type: InternetAddressType.IPv4,
        includeLoopback: false,
        includeLinkLocal: false,
      );
      final urls = <String>{};
      for (final interface in interfaces) {
        for (final address in interface.addresses) {
          if (_isAnyHost(address.address) || _isLoopbackHost(address.address)) {
            continue;
          }
          urls.add(_baseUrl(address.address, port));
        }
      }
      return urls.toList()..sort();
    } catch (e) {
      ConsoleLogger.debug('Could not discover LAN URLs: $e');
      return const [];
    }
  }

  String _localBaseUrl(String host, int port) {
    if (_isAnyHost(host)) {
      return _baseUrl('127.0.0.1', port);
    }
    return _baseUrl(host, port);
  }

  String _baseUrl(String host, int port) {
    final normalizedHost = _normalizeHost(host);
    if (normalizedHost.contains(':')) {
      return 'http://[$normalizedHost]:$port';
    }
    return 'http://$normalizedHost:$port';
  }

  bool _acceptsRemoteConnections(String host) {
    return _isAnyHost(host) || !_isLoopbackHost(host);
  }

  bool _isAnyHost(String host) {
    final normalizedHost = _normalizeHost(host);
    return normalizedHost == '0.0.0.0' || normalizedHost == '::';
  }

  bool _isLoopbackHost(String host) {
    final normalizedHost = _normalizeHost(host);
    return normalizedHost == 'localhost' ||
        normalizedHost == '::1' ||
        normalizedHost.startsWith('127.');
  }

  String _normalizeHost(String host) {
    final trimmedHost = host.trim().toLowerCase();
    if (trimmedHost.startsWith('[') && trimmedHost.endsWith(']')) {
      return trimmedHost.substring(1, trimmedHost.length - 1);
    }
    return trimmedHost;
  }
}
