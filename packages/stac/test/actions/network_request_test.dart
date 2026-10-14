import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

Map<String, dynamic> button(Map<String, dynamic> action) => {
  'type': 'elevatedButton',
  'child': {'type': 'text', 'data': 'Go'},
  'onPressed': action,
};

Map<String, dynamic> requestWithResults() => {
  'actionType': 'networkRequest',
  'url': 'https://api.test/save',
  'method': 'get',
  'results': [
    {
      'statusCode': 200,
      'action': {
        'actionType': 'setValue',
        'values': [
          {'key': 'saved', 'value': true},
        ],
      },
    },
  ],
};

void main() {
  setUpAll(initStacForTests);
  setUp(() => fakeHttp.requests.clear());
  tearDown(() => clearVariables(['saved']));

  testWidgets('runs the result action matching the status code', (
    tester,
  ) async {
    fakeHttp.respond = (_) => FakeHttp.json({'ok': true});
    await tester.pumpWidget(stacApp(button(requestWithResults())));
    await tester.tap(find.text('Go'));
    await tester.pumpAndSettle();

    expect(variable('saved'), isTrue);
  });

  testWidgets('a status code without a result does not throw', (tester) async {
    fakeHttp.respond = (_) => FakeHttp.json({'error': 'gone'}, status: 404);
    await tester.pumpWidget(stacApp(button(requestWithResults())));
    await tester.tap(find.text('Go'));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(variable('saved'), isNull);
  });

  testWidgets('refreshIndicator replaces its child with the response', (
    tester,
  ) async {
    fakeHttp.respond = (_) => FakeHttp.json({
      'type': 'listView',
      'children': [
        {'type': 'text', 'data': 'Refreshed'},
      ],
    });
    await tester.pumpWidget(
      stacApp({
        'type': 'refreshIndicator',
        'onRefresh': {
          'actionType': 'networkRequest',
          'url': 'https://api.test/feed',
          'method': 'get',
        },
        'child': {
          'type': 'listView',
          'children': [
            {'type': 'text', 'data': 'Pull to refresh'},
          ],
        },
      }),
    );

    // show() completes only after the refresh animation runs, so awaiting it
    // here would deadlock; pumpAndSettle drives the animation instead.
    tester.state<RefreshIndicatorState>(find.byType(RefreshIndicator)).show();
    await tester.pumpAndSettle();

    expect(find.text('Refreshed'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Stac.fromNetwork does not fetch again on rebuild', (
    tester,
  ) async {
    fakeHttp.respond = (_) => FakeHttp.json({'type': 'text', 'data': 'Remote'});
    await tester.pumpWidget(
      MaterialApp(
        home: StatefulBuilder(
          builder: (context, setState) => Scaffold(
            body: Column(
              children: [
                Stac.fromNetwork(
                  context: context,
                  request: const StacNetworkRequest(
                    url: 'https://api.test/screen',
                  ),
                ),
                TextButton(
                  onPressed: () => setState(() {}),
                  child: const Text('Rebuild'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Rebuild'));
    await tester.pumpAndSettle();

    expect(find.text('Remote'), findsOneWidget);
    expect(fakeHttp.requests, hasLength(1));
  });
}
