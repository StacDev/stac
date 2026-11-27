import 'package:stac_core/stac_core.dart';
import 'package:test/test.dart';

void main() {
  group('StacSnackBar persist', () {
    const content = <String, dynamic>{
      'type': 'text',
      'data': <String, dynamic>{'text': 'Item deleted'},
    };

    test('serializes and deserializes persist', () {
      const snackBar = StacSnackBar(content: content, persist: true);

      final json = snackBar.toJson();
      expect(json['persist'], isTrue);
      expect(StacSnackBar.fromJson(json).persist, isTrue);
    });

    test('serializes and deserializes persist false', () {
      const snackBar = StacSnackBar(content: content, persist: false);

      final json = snackBar.toJson();
      expect(json['persist'], isFalse);
      expect(StacSnackBar.fromJson(json).persist, isFalse);
    });

    test('omits persist when it is not set', () {
      const snackBar = StacSnackBar(content: content);

      expect(snackBar.toJson()['persist'], isNull);
      expect(StacSnackBar.fromJson(snackBar.toJson()).persist, isNull);
    });
  });
}
