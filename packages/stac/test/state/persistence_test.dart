import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac/src/state/stac_state_persistence.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

void main() {
  tearDown(() async {
    // Stops persisting before the state is cleared.
    await initStacForTests();
    Stac.state.clear();
  });

  test('restores persisted paths over the initial state', () async {
    final storage = MemoryStateStorage({
      'stac.state.settings': '{"dark":true}',
    });
    await initStacForTests(
      initialState: {
        'settings': {'dark': false},
        'count': 1,
      },
      persist: ['settings'],
      stateStorage: storage,
    );

    expect(Stac.state.get('settings.dark'), true);
    expect(Stac.state.get('count'), 1);
    expect(storage.log, isEmpty);
  });

  test('saves changes and removals of persisted paths only', () async {
    final storage = MemoryStateStorage();
    await initStacForTests(
      persist: [r'$app.settings', 'cart.items'],
      stateStorage: storage,
    );

    Stac.state.set('settings.dark', true);
    Stac.state.set('settings.fontSize', 14);
    Stac.state.set('cart.items', [1, 2]);
    Stac.state.set('other', 1);
    await StacStatePersistence.flush();

    expect(storage.values, {
      'stac.state.settings': '{"dark":true,"fontSize":14}',
      'stac.state.cart.items': '[1,2]',
    });
    // Changes made together are saved once.
    expect(storage.log, [
      'write stac.state.settings',
      'write stac.state.cart.items',
    ]);

    Stac.state.remove('settings');
    await StacStatePersistence.flush();
    expect(storage.values.keys, ['stac.state.cart.items']);

    Stac.state.clear();
    await StacStatePersistence.flush();
    expect(storage.values, isEmpty);
  });

  test('ignores stored values that are not JSON', () async {
    final storage = MemoryStateStorage({'stac.state.settings': 'not json'});
    await initStacForTests(persist: ['settings'], stateStorage: storage);
    expect(Stac.state.contains('settings'), isFalse);
  });

  test('only app state paths can be persisted', () async {
    await expectLater(
      initStacForTests(
        persist: [r'$screen.draft'],
        stateStorage: MemoryStateStorage(),
      ),
      throwsArgumentError,
    );
    await expectLater(
      initStacForTests(persist: ['a +'], stateStorage: MemoryStateStorage()),
      throwsArgumentError,
    );
  });

  test('uses shared preferences by default', () async {
    SharedPreferences.setMockInitialValues({'stac.state.theme': '"dark"'});
    await initStacForTests(persist: ['theme']);
    expect(Stac.state.get('theme'), 'dark');

    Stac.state.set('theme', 'light');
    await StacStatePersistence.flush();
    final preferences = await SharedPreferences.getInstance();
    expect(preferences.getString('stac.state.theme'), '"light"');
  });

  testWidgets('values written by screens are saved', (tester) async {
    final storage = MemoryStateStorage();
    await tester.runAsync(
      () => initStacForTests(
        persist: ['settings.notifications'],
        stateStorage: storage,
      ),
    );
    await tester.pumpWidget(
      stacApp({
        'type': 'switch',
        'bind': r'$app.settings.notifications',
        'value': true,
      }),
    );
    await tester.pump();
    expect(storage.values, {'stac.state.settings.notifications': 'true'});

    await tester.tap(find.byType(Switch));
    await tester.pump();
    expect(storage.values, {'stac.state.settings.notifications': 'false'});
  });
}
