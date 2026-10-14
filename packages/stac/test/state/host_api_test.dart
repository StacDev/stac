import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

void main() {
  setUpAll(initStacForTests);
  tearDown(Stac.state.clear);

  test('bind copies stream values into state until cancelled', () async {
    final source = StreamController<Object?>();
    final binding = Stac.state.bind(
      'auth',
      source.stream,
      initial: {'user': 'guest'},
    );
    expect(Stac.state.get('auth.user'), 'guest');

    source.add({'user': 'ann'});
    await pumpEventQueue();
    expect(Stac.state.get('auth.user'), 'ann');

    source.add(null);
    await pumpEventQueue();
    expect(Stac.state.contains('auth'), isFalse);

    binding.cancel();
    source.add({'user': 'bob'});
    await pumpEventQueue();
    expect(Stac.state.contains('auth'), isFalse);
    await source.close();
  });

  test('bindListenable follows a value notifier', () {
    final notifier = ValueNotifier<Object?>({'step': 1});
    final binding = Stac.state.bindListenable('wizard', notifier);
    expect(Stac.state.get('wizard.step'), 1);

    notifier.value = {'step': 2};
    expect(Stac.state.get('wizard.step'), 2);

    binding.cancel();
    notifier.value = {'step': 3};
    expect(Stac.state.get('wizard.step'), 2);
  });

  testWidgets('screens show values from a bound stream', (tester) async {
    final source = StreamController<Object?>();
    final binding = Stac.state.bind('cart', source.stream);
    addTearDown(() {
      binding.cancel();
      source.close();
    });
    await tester.pumpWidget(
      stacApp({'type': 'text', 'data': '{{cart.count ?? 0}} items'}),
    );
    expect(find.text('0 items'), findsOneWidget);

    source.add({'count': 3});
    await tester.pump();
    expect(find.text('3 items'), findsOneWidget);
  });

  testWidgets('debugDumpStacState prints each level inside its parent', (
    tester,
  ) async {
    Stac.state.set('theme', 'dark');
    await tester.pumpWidget(
      MaterialApp(
        home: StacScreenScope(
          arguments: const {'id': 7},
          debugLabel: 'detail',
          child: Builder(
            builder: (context) => Stac.fromJson({
              'type': 'stateScope',
              'state': {'count': 0},
              'child': {'type': 'text', 'data': '{{count}}'},
            }, context)!,
          ),
        ),
      ),
    );

    final dump = debugDumpStacState();
    expect(
      dump,
      contains(
        'app: {"theme":"dark"}\n'
        '  screen detail args {"id":7}: {}\n'
        '    local stateScope: {"count":0}\n',
      ),
    );
    expect(
      Stac.stateLevels.map(describeStacStateLevel),
      containsAllInOrder(['app', 'screen detail', 'local stateScope']),
    );
  });
}
