import 'dart:io';
import 'package:test/test.dart';
import 'package:stac_cli/src/utils/file_utils.dart';
import 'package:path/path.dart' as path;

void main() {
  group('FileUtils', () {
    test('homeDirectory returns a string', () {
      final home = FileUtils.homeDirectory;
      expect(home, isNotEmpty);
    });

    test('configDirectory is a valid path', () {
      final config = FileUtils.configDirectory;
      expect(config, isNotEmpty);
    });

    test('file operations', () async {
      final tempDir = Directory.systemTemp.createTempSync('stac_cli_test');
      final filePath = path.join(tempDir.path, 'test_file.txt');
      
      // Test fileExists
      expect(await FileUtils.fileExists(filePath), isFalse);

      // Test writeFile and fileExists
      await FileUtils.writeFile(filePath, 'hello world');
      expect(await FileUtils.fileExists(filePath), isTrue);

      // Test readFile
      final content = await FileUtils.readFile(filePath);
      expect(content, 'hello world');

      // Test deleteFile
      await FileUtils.deleteFile(filePath);
      expect(await FileUtils.fileExists(filePath), isFalse);

      tempDir.deleteSync(recursive: true);
    });
  });
}
