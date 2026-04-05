import 'dart:io';
import 'package:test/test.dart';
import 'package:stac_cli/src/utils/file_utils.dart';
import 'package:path/path.dart' as path;

/// Test suite for Stac CLI file utility operations.
void main() {
  group('FileUtils', () {
    // Basic verification of environment-dependent directory getters.
    test('homeDirectory returns a non-empty string on this OS', () {
      final home = FileUtils.homeDirectory;
      expect(home, isNotEmpty);
    });

    test('configDirectory path is generated', () {
      final config = FileUtils.configDirectory;
      expect(config, isNotEmpty);
    });

    // Integrated test for file system operations using a temporary directory.
    test('integrated file operations: create, read, and delete', () async {
      // Setup a clean temporary sandbox for this test.
      final tempDir = Directory.systemTemp.createTempSync('stac_cli_test');
      final filePath = path.join(tempDir.path, 'test_file.txt');

      try {
        // 1. Initial State: file should not exist.
        expect(await FileUtils.fileExists(filePath), isFalse);

        // 2. Write Operation: create file with content.
        await FileUtils.writeFile(filePath, 'hello world');
        expect(await FileUtils.fileExists(filePath), isTrue);

        // 3. Read Operation: verify content matches.
        final content = await FileUtils.readFile(filePath);
        expect(content, equals('hello world'));

        // 4. Delete Operation: cleanup file.
        await FileUtils.deleteFile(filePath);
        expect(await FileUtils.fileExists(filePath), isFalse);
      } finally {
        // Always cleanup the temporary directory logic even if tests fail.
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      }
    });
  });
}
