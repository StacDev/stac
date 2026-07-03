import 'package:flutter_test/flutter_test.dart';
import 'package:stac/src/models/stac_bundle.dart';

void main() {
  final bundle = StacBundle(
    projectId: 'proj_1',
    version: 3,
    etag: '"3"',
    checksum: 'abc123',
    fetchedAt: DateTime.utc(2026, 7, 3, 12),
    screens: const {
      'home': '{"type":"text","data":"Home"}',
      'profile': '{"type":"text","data":"Profile"}',
    },
    themes: const {'light': '{"brightness":"light"}'},
  );

  group('StacBundle', () {
    test('round-trips through toJson/fromJson', () {
      final restored = StacBundle.fromJson(bundle.toJson());

      expect(restored.projectId, bundle.projectId);
      expect(restored.version, bundle.version);
      expect(restored.etag, bundle.etag);
      expect(restored.checksum, bundle.checksum);
      expect(restored.fetchedAt, bundle.fetchedAt);
      expect(restored.screens, bundle.screens);
      expect(restored.themes, bundle.themes);
    });

    test('round-trips through toJsonString/fromJsonString', () {
      final restored = StacBundle.fromJsonString(bundle.toJsonString());

      expect(restored.projectId, bundle.projectId);
      expect(restored.version, bundle.version);
      expect(restored.etag, bundle.etag);
      expect(restored.checksum, bundle.checksum);
      expect(restored.fetchedAt, bundle.fetchedAt);
      expect(restored.screens, bundle.screens);
      expect(restored.themes, bundle.themes);
    });

    test('round-trips null etag and checksum', () {
      final minimal = StacBundle(
        projectId: 'proj_1',
        version: 1,
        fetchedAt: DateTime.utc(2026),
        screens: const {},
        themes: const {},
      );

      final restored = StacBundle.fromJsonString(minimal.toJsonString());

      expect(restored.etag, isNull);
      expect(restored.checksum, isNull);
      expect(restored.screens, isEmpty);
      expect(restored.themes, isEmpty);
    });

    test('screen and theme lookups return json or null', () {
      expect(bundle.screen('home'), '{"type":"text","data":"Home"}');
      expect(bundle.theme('light'), '{"brightness":"light"}');
      expect(bundle.screen('missing'), isNull);
      expect(bundle.theme('missing'), isNull);
    });

    test('copyWith replaces given fields and keeps the rest', () {
      final copy = bundle.copyWith(version: 4, etag: '"4"');

      expect(copy.version, 4);
      expect(copy.etag, '"4"');
      expect(copy.projectId, bundle.projectId);
      expect(copy.checksum, bundle.checksum);
      expect(copy.fetchedAt, bundle.fetchedAt);
      expect(copy.screens, bundle.screens);
      expect(copy.themes, bundle.themes);
    });
  });
}
