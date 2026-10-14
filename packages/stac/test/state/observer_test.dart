import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

Map<String, dynamic> button(String label, List<Map<String, dynamic>> values) {
  return {
    'type': 'elevatedButton',
    'child': {'type': 'text', 'data': label},
    'onPressed': {'actionType': 'setValue', 'values': values},
  };
}

String describe(StacStateChange change) {
  final level = change.level;
  final where = level == null ? 'store' : describeStacStateLevel(level);
  return '$where ${change.path}: ${change.previous} -> ${change.value}';
}

/// An observer that always fails.
class FailingObserver extends StacStateObserver {
  @override
  void onChange(StacStateChange change) => throw StateError('broken');
}

void main() {
  late RecordingObserver observer;

  setUpAll(initStacForTests);
  setUp(() {
    observer = RecordingObserver();
    Stac.stateObservers.add(observer);
  });
  tearDown(() {
    Stac.stateObservers.clear();
    Stac.state.clear();
  });

  testWidgets('observers see each change with its level, path and values', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'stateScope',
        'state': {'count': 0},
        'child': button('Add', [
          {'path': 'count', 'op': 'increment'},
          {'path': r'$app.theme', 'value': 'dark'},
          {'path': 'title', 'value': 'Hi'},
        ]),
      }),
    );
    observer.changes.clear();

    await tester.tap(find.text('Add'));
    await tester.pump();

    expect(observer.changes.map(describe), [
      'local stateScope count: 0 -> 1',
      'app theme: null -> dark',
      'screen title: null -> Hi',
    ]);
    expect(observer.changes.first.level!.kind, StacScopeKind.local);
    expect(observer.changes.first.segments, ['count']);
  });

  testWidgets('observers see levels created and discarded', (tester) async {
    fakeHttp.reset();
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          {
            'type': 'stateScope',
            'state': {'open': false},
            'child': {'type': 'text', 'data': '{{open}}'},
          },
          {
            'type': 'form',
            'child': {'type': 'textFormField', 'id': 'email'},
          },
          {
            'type': 'dataProvider',
            'id': 'news',
            'request': {'url': 'https://api.example.com/news'},
            'child': {'type': 'text', 'data': 'News'},
          },
        ],
      }),
    );
    await tester.pumpAndSettle();
    expect(observer.events, [
      'created screen',
      'created local stateScope',
      'created form',
      'created local dataProvider news',
    ]);
    expect(
      Stac.stateLevels.map(describeStacStateLevel),
      containsAll(['app', 'screen', 'local stateScope', 'form']),
    );
    final form = Stac.stateLevels.firstWhere(
      (level) => level.kind == StacScopeKind.form,
    );
    expect(form.parent!.kind, StacScopeKind.screen);

    await tester.pumpWidget(const SizedBox());
    expect(
      observer.events.where((event) => event.startsWith('disposed')),
      unorderedEquals([
        'disposed screen',
        'disposed local stateScope',
        'disposed form',
        'disposed local dataProvider news',
      ]),
    );
    expect(Stac.stateLevels.map(describeStacStateLevel), ['app']);
  });

  test('replacing or clearing a store is a change to all of it', () {
    Stac.state.set('a', 1);
    Stac.state.replace({'b': 2});
    Stac.state.clear();
    Stac.state.clear();

    expect(observer.changes.map(describe), [
      'app a: null -> 1',
      'app : {a: 1} -> {b: 2}',
      'app : {b: 2} -> {}',
    ]);
    expect(observer.changes.last.segments, isEmpty);
  });

  test('a failing observer does not stop the change or other observers', () {
    Stac.stateObservers.insert(0, FailingObserver());
    Stac.state.set('count', 1);

    expect(Stac.state.get('count'), 1);
    expect(observer.changes.map(describe), ['app count: null -> 1']);
  });

  test('stores that are not levels report no level', () {
    final store = StacStore();
    store.set('x', 1);
    expect(observer.changes.single.level, isNull);
    expect(observer.changes.single.store, same(store));
  });

  test('initialize sets the observers', () async {
    final other = RecordingObserver();
    await initStacForTests(stateObservers: [other]);
    expect(Stac.stateObservers, [other]);
  });
}
