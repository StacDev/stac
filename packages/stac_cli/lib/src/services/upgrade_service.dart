import 'dart:convert';
import 'dart:io';

import 'package:cryptography/cryptography.dart';
import 'package:path/path.dart' as path;

import '../exceptions/stac_exception.dart';
import '../utils/console_logger.dart';

/// Result of checking for updates
class UpgradeCheckResult {
  final String currentVersion;
  final String latestVersion;
  final String downloadUrl;
  final bool updateAvailable;

  UpgradeCheckResult({
    required this.currentVersion,
    required this.latestVersion,
    required this.downloadUrl,
    required this.updateAvailable,
  });
}

/// Service for upgrading the Stac CLI
class UpgradeService {
  static const String _repo = 'StacDev/cli-installer';
  static const Set<String> _allowedDownloadHosts = {
    'github.com',
    'objects.githubusercontent.com',
    'github-releases.githubusercontent.com',
    'release-assets.githubusercontent.com',
  };
  static const String _publicKeyEnv = 'STAC_UPGRADE_PUBLIC_KEY_B64';

  /// Check for available updates
  Future<UpgradeCheckResult> checkForUpdates() async {
    final currentVersion = await getCurrentVersion();
    final latestInfo = await _getLatestRelease();
    final latestVersion = latestInfo['version'] as String;
    final downloadUrl = latestInfo['downloadUrl'] as String;

    final updateAvailable = _isNewerVersion(currentVersion, latestVersion);

    return UpgradeCheckResult(
      currentVersion: currentVersion,
      latestVersion: latestVersion,
      downloadUrl: downloadUrl,
      updateAvailable: updateAvailable,
    );
  }

  /// Get the current installed version
  Future<String> getCurrentVersion() async {
    try {
      final result = await Process.run(
        Platform.isWindows ? 'stac.exe' : 'stac',
        ['--version'],
        runInShell: false,
      );
      if (result.exitCode == 0) {
        final output = result.stdout.toString().trim();
        // Parse "stac_cli version: X.Y.Z" or "stac_cli version: X.Y.Z-dev"
        final match = RegExp(r'version:\s*(\S+)').firstMatch(output);
        if (match != null) {
          return match.group(1)!.replaceAll('-dev', '');
        }
      }
    } catch (_) {}
    return 'unknown';
  }

  /// Get the download URL for a specific version
  Future<String> getDownloadUrlForVersion(String version) async {
    final osArch = detectOsArch();
    if (osArch == null) {
      throw StacException('Unsupported platform');
    }

    final tag = 'stac-cli-v$version';
    final os = osArch['os']!;
    final arch = osArch['arch']!;

    String extension;
    if (os == 'windows') {
      extension = 'zip';
    } else {
      extension = 'tar.gz';
    }

    final assetName = 'stac_cli_${version}_${os}_$arch.$extension';
    return 'https://github.com/$_repo/releases/download/$tag/$assetName';
  }

  /// Upgrade to a specific version
  Future<void> upgradeTo({
    required String version,
    required String downloadUrl,
  }) async {
    final osArch = detectOsArch();
    if (osArch == null) {
      throw StacException('Unsupported platform');
    }

    _validateDownloadUri(Uri.parse(downloadUrl));
    await _downloadAndInstall(downloadUrl, osArch);
  }

  /// Detect OS and architecture
  Map<String, String>? detectOsArch() {
    String os;
    String arch;

    if (Platform.isMacOS) {
      os = 'darwin';
    } else if (Platform.isLinux) {
      os = 'linux';
    } else if (Platform.isWindows) {
      os = 'windows';
    } else {
      return null;
    }

    // Detect architecture
    final envArch = Platform.environment['PROCESSOR_ARCHITECTURE'] ?? '';
    if (Platform.isMacOS || Platform.isLinux) {
      // Use uname to detect arch on Unix systems
      try {
        final result = Process.runSync('uname', ['-m']);
        final machineArch = result.stdout.toString().trim().toLowerCase();
        if (machineArch.contains('arm64') || machineArch.contains('aarch64')) {
          arch = 'arm64';
        } else {
          arch = 'x64';
        }
      } catch (_) {
        arch = 'x64';
      }
    } else {
      // Windows
      if (envArch == 'ARM64') {
        arch = 'arm64';
      } else {
        arch = 'x64';
      }
    }

    return {'os': os, 'arch': arch};
  }

  /// Check if latest version is newer than current
  bool _isNewerVersion(String current, String latest) {
    if (current == 'unknown') return true;

    try {
      final currentParts = current.split('.').map(int.parse).toList();
      final latestParts = latest.split('.').map(int.parse).toList();

      for (var i = 0; i < 3; i++) {
        final c = i < currentParts.length ? currentParts[i] : 0;
        final l = i < latestParts.length ? latestParts[i] : 0;
        if (l > c) return true;
        if (l < c) return false;
      }
      return false;
    } catch (_) {
      return true;
    }
  }

  /// Get latest release info from GitHub
  Future<Map<String, dynamic>> _getLatestRelease() async {
    final client = HttpClient();
    try {
      final request = await client.getUrl(
        Uri.parse('https://api.github.com/repos/$_repo/releases/latest'),
      );
      request.headers.set('Accept', 'application/vnd.github.v3+json');
      request.headers.set('User-Agent', 'stac-cli');

      final response = await request.close();
      if (response.statusCode != 200) {
        throw StacException(
          'Failed to fetch latest release: HTTP ${response.statusCode}',
        );
      }

      final body = await response.transform(utf8.decoder).join();
      final json = jsonDecode(body) as Map<String, dynamic>;

      final tagName = json['tag_name'] as String;
      final version = tagName.replaceFirst('stac-cli-v', '');

      // Find the appropriate asset for this platform
      final osArch = detectOsArch();
      final assets = json['assets'] as List<dynamic>;
      String? downloadUrl;
      String? binaryAssetName;

      for (final asset in assets) {
        final name = asset['name'] as String;
        if (_isMatchingAsset(name, osArch!)) {
          downloadUrl = asset['browser_download_url'] as String;
          binaryAssetName = name;
          break;
        }
      }

      if (downloadUrl == null || binaryAssetName == null) {
        throw StacException('No compatible binary found for your platform');
      }

      final checksumUrl = _findChecksumAssetUrl(
        assets: assets,
        binaryAssetName: binaryAssetName,
      );

      return {
        'version': version,
        'downloadUrl': downloadUrl,
        'checksumUrl': checksumUrl,
      };
    } finally {
      client.close();
    }
  }

  String? _findChecksumAssetUrl({
    required List<dynamic> assets,
    required String binaryAssetName,
  }) {
    final checksumCandidates = <String>{
      '$binaryAssetName.sha256',
      '$binaryAssetName.sha256sum',
      '$binaryAssetName.sha256.txt',
    };

    for (final asset in assets) {
      final name = asset['name'] as String;
      if (checksumCandidates.contains(name)) {
        return asset['browser_download_url'] as String;
      }
    }

    return null;
  }

  bool _isMatchingAsset(String assetName, Map<String, String> osArch) {
    final os = osArch['os']!;
    final arch = osArch['arch']!;
    return assetName.contains(os) && assetName.contains(arch);
  }

  /// Download and install the CLI binary
  Future<void> _downloadAndInstall(
    String url,
    Map<String, String> osArch,
  ) async {
    final os = osArch['os']!;
    final isWindows = os == 'windows';

    // Create temp directory
    final tempDir = await Directory.systemTemp.createTemp('stac_upgrade_');
    final archivePath = path.join(
      tempDir.path,
      isWindows ? 'stac.zip' : 'stac.tar.gz',
    );

    try {
      // Download the archive
      ConsoleLogger.info('Downloading...');
      await _downloadFile(url, archivePath);

      final checksumPath = path.join(tempDir.path, 'stac.sha256');
      final checksumFound = await _downloadChecksumFile(
        binaryUrl: url,
        checksumDestinationPath: checksumPath,
      );
      if (!checksumFound) {
        throw StacException(
          'Release checksum file is missing. Refusing to install unverified binary.',
        );
      }

      final checksumSigPath = path.join(tempDir.path, 'stac.sha256.sig');
      final signatureFound = await _downloadChecksumSignatureFile(
        binaryUrl: url,
        signatureDestinationPath: checksumSigPath,
      );
      if (!signatureFound) {
        throw StacException(
          'Release checksum signature file is missing. Refusing to install unverified binary.',
        );
      }

      final publicKeyB64 = Platform.environment[_publicKeyEnv];
      if (publicKeyB64 == null || publicKeyB64.trim().isEmpty) {
        throw StacException(
          'Missing $_publicKeyEnv. Refusing to install without signature verification key.',
        );
      }
      await _verifyChecksumSignature(
        checksumFilePath: checksumPath,
        signatureFilePath: checksumSigPath,
        publicKeyBase64: publicKeyB64,
      );
      await _verifySha256(archivePath, checksumPath);

      // Extract the archive
      ConsoleLogger.info('Extracting...');
      if (isWindows) {
        await _extractZip(archivePath, tempDir.path);
      } else {
        await _extractTarGz(archivePath, tempDir.path);
      }

      // Determine install directory
      final installDir = _getInstallDir();
      await Directory(installDir).create(recursive: true);

      // Copy the binary
      final binaryName = isWindows ? 'stac.exe' : 'stac';
      final sourcePath = path.join(tempDir.path, binaryName);
      final destPath = path.join(installDir, binaryName);

      ConsoleLogger.info('Installing to $destPath...');

      // On Unix, we might need to handle the case where the binary is in use
      if (!isWindows) {
        // Try to remove old binary first
        try {
          final oldFile = File(destPath);
          if (await oldFile.exists()) {
            await oldFile.delete();
          }
        } catch (_) {}
      }

      await File(sourcePath).copy(destPath);

      // Make executable on Unix
      if (!isWindows) {
        await Process.run('chmod', ['+x', destPath]);
      }
    } finally {
      // Cleanup
      try {
        await tempDir.delete(recursive: true);
      } catch (_) {}
    }
  }

  Future<void> _downloadFile(String url, String destPath) async {
    final uri = Uri.parse(url);
    _validateDownloadUri(uri);

    final client = HttpClient();
    try {
      final request = await client.getUrl(uri);
      request.followRedirects = false;
      request.headers.set('User-Agent', 'stac-cli');

      final response = await request.close();

      // Handle redirects manually to enforce host allowlist.
      if (response.statusCode == 302 ||
          response.statusCode == 301 ||
          response.statusCode == 307 ||
          response.statusCode == 308) {
        final redirectUrl = response.headers.value('location');
        if (redirectUrl != null) {
          await response.drain<void>();
          final nextUri = uri.resolve(redirectUrl);
          _validateDownloadUri(nextUri);
          return _downloadFile(nextUri.toString(), destPath);
        }
      }

      if (response.statusCode != 200) {
        throw StacException('Failed to download: HTTP ${response.statusCode}');
      }

      final file = File(destPath);
      final sink = file.openWrite();
      await response.pipe(sink);
      await sink.close();
    } finally {
      client.close();
    }
  }

  Future<bool> _downloadChecksumFile({
    required String binaryUrl,
    required String checksumDestinationPath,
  }) async {
    final candidates = <String>[
      '$binaryUrl.sha256',
      '$binaryUrl.sha256sum',
      '$binaryUrl.sha256.txt',
    ];

    for (final candidate in candidates) {
      try {
        await _downloadFile(candidate, checksumDestinationPath);
        return true;
      } catch (_) {
        // Try next naming convention.
      }
    }
    return false;
  }

  Future<bool> _downloadChecksumSignatureFile({
    required String binaryUrl,
    required String signatureDestinationPath,
  }) async {
    final candidates = <String>[
      '$binaryUrl.sha256.sig',
      '$binaryUrl.sha256sum.sig',
      '$binaryUrl.sha256.txt.sig',
    ];

    for (final candidate in candidates) {
      try {
        await _downloadFile(candidate, signatureDestinationPath);
        return true;
      } catch (_) {
        // Try next naming convention.
      }
    }
    return false;
  }

  Future<void> _extractTarGz(String archivePath, String destDir) async {
    final result = await Process.run('tar', [
      '-xzf',
      archivePath,
      '-C',
      destDir,
    ], runInShell: false);
    if (result.exitCode != 0) {
      throw StacException('Failed to extract archive: ${result.stderr}');
    }
  }

  Future<void> _extractZip(String archivePath, String destDir) async {
    // Use PowerShell to extract on Windows
    final result = await Process.run('powershell', [
      '-Command',
      'Expand-Archive',
      '-Path',
      archivePath,
      '-DestinationPath',
      destDir,
      '-Force',
    ], runInShell: false);
    if (result.exitCode != 0) {
      throw StacException('Failed to extract archive: ${result.stderr}');
    }
  }

  void _validateDownloadUri(Uri uri) {
    if (uri.scheme != 'https') {
      throw StacException('Refusing non-HTTPS download URL: $uri');
    }
    if (!_allowedDownloadHosts.contains(uri.host)) {
      throw StacException('Refusing download from untrusted host: ${uri.host}');
    }
  }

  Future<void> _verifySha256(String filePath, String checksumFilePath) async {
    final checksumContents = await File(checksumFilePath).readAsString();
    final expected = _parseSha256(checksumContents);
    final algorithm = Sha256();
    final sink = algorithm.newHashSink();
    await File(filePath).openRead().forEach(sink.add);
    sink.close();
    final hash = await sink.hash();
    final actual = hash.bytes
        .map((b) => b.toRadixString(16).padLeft(2, '0'))
        .join();

    if (expected.toLowerCase() != actual.toLowerCase()) {
      throw StacException(
        'Binary integrity check failed (SHA-256 mismatch). Installation aborted.',
      );
    }
  }

  Future<void> _verifyChecksumSignature({
    required String checksumFilePath,
    required String signatureFilePath,
    required String publicKeyBase64,
  }) async {
    final checksumBytes = await File(checksumFilePath).readAsBytes();
    final signatureContents = await File(signatureFilePath).readAsString();

    final signatureBytes = _parseSignatureBytes(signatureContents);
    final publicKeyBytes = _parseBase64Bytes(
      value: publicKeyBase64,
      context: _publicKeyEnv,
    );

    final algorithm = Ed25519();
    final isValid = await algorithm.verify(
      checksumBytes,
      signature: Signature(
        signatureBytes,
        publicKey: SimplePublicKey(publicKeyBytes, type: KeyPairType.ed25519),
      ),
    );
    if (!isValid) {
      throw StacException(
        'Checksum signature verification failed. Installation aborted.',
      );
    }
  }

  /// Test hook to validate a downloaded bundle end-to-end.
  Future<void> verifyDownloadedBundleForTesting({
    required String archivePath,
    required String checksumPath,
    required String signaturePath,
    required String publicKeyBase64,
  }) async {
    await _verifyChecksumSignature(
      checksumFilePath: checksumPath,
      signatureFilePath: signaturePath,
      publicKeyBase64: publicKeyBase64,
    );
    await _verifySha256(archivePath, checksumPath);
  }

  String _parseSha256(String checksumFileContents) {
    final firstLine = checksumFileContents
        .split('\n')
        .map((line) => line.trim())
        .firstWhere((line) => line.isNotEmpty, orElse: () => '');
    final parts = firstLine.split(RegExp(r'\s+'));
    if (parts.isEmpty || parts.first.isEmpty) {
      throw StacException('Invalid checksum file format');
    }
    return parts.first;
  }

  List<int> _parseSignatureBytes(String signatureFileContents) {
    final firstLine = signatureFileContents
        .split('\n')
        .map((line) => line.trim())
        .firstWhere((line) => line.isNotEmpty, orElse: () => '');
    return _parseBase64Bytes(value: firstLine, context: 'checksum signature');
  }

  List<int> _parseBase64Bytes({
    required String value,
    required String context,
  }) {
    try {
      return base64.decode(value.trim());
    } catch (_) {
      throw StacException('Invalid base64 value for $context');
    }
  }

  String _getInstallDir() {
    // Check if STAC_INSTALL_DIR is set
    final envDir = Platform.environment['STAC_INSTALL_DIR'];
    if (envDir != null && envDir.isNotEmpty) {
      return envDir;
    }

    // Default to ~/.stac/bin
    if (Platform.isWindows) {
      final userProfile = Platform.environment['USERPROFILE'] ?? '';
      return path.join(userProfile, '.stac', 'bin');
    } else {
      final home = Platform.environment['HOME'] ?? '';
      return path.join(home, '.stac', 'bin');
    }
  }
}
