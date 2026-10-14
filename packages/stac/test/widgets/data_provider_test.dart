import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

Map<String, dynamic> button(String label, Map<String, dynamic> action) => {
  'type': 'elevatedButton',
  'child': {'type': 'text', 'data': label},
  'onPressed': action,
};

Map<String, dynamic> refetch(String id) => {'actionType': 'refetch', 'id': id};

Map<String, dynamic> provider(
  String id,
  Map<String, dynamic> child, {
  String url = 'https://api.example.com/movies',
  String? targetPath,
  Map<String, dynamic>? loaderWidget,
  Map<String, dynamic>? errorWidget,
}) => {
  'type': 'dataProvider',
  'id': id,
  'request': {'url': url, 'method': 'get'},
  'targetPath': ?targetPath,
  'loaderWidget': ?loaderWidget,
  'errorWidget': ?errorWidget,
  'child': child,
};

void main() {
  setUpAll(initStacForTests);
  setUp(fakeHttp.reset);
  tearDown(Stac.state.clear);

  testWidgets('loads once and gives its child the data', (tester) async {
    fakeHttp.respond = (_) => FakeHttp.json({
      'results': [
        {'id': 1, 'title': 'Dune'},
        {'id': 2, 'title': 'Heat'},
      ],
    });
    await tester.pumpWidget(
      stacApp(
        provider(
          'movies',
          targetPath: 'results',
          loaderWidget: {'type': 'text', 'data': 'Loading'},
          {
            'type': 'column',
            'children': [
              {
                'type': 'text',
                'data':
                    '{{movies.data.length}} movies, '
                    'loading {{movies.isLoading}}, status {{movies.status}}',
              },
              {
                'type': 'column',
                'items': '{{movies.data}}',
                'keyPath': 'id',
                'itemTemplate': {'type': 'text', 'data': r'{{$item.title}}'},
              },
            ],
          },
        ),
      ),
    );
    expect(find.text('Loading'), findsOneWidget);

    await tester.pumpAndSettle();
    expect(find.text('2 movies, loading false, status 200'), findsOneWidget);
    expect(find.text('Dune'), findsOneWidget);
    expect(find.text('Heat'), findsOneWidget);

    StacHost.of(tester).rebuild();
    await tester.pumpAndSettle();
    expect(fakeHttp.requests, hasLength(1));
  });

  testWidgets('shows errorWidget, then the child after a refetch', (
    tester,
  ) async {
    var failing = true;
    fakeHttp.respond = (_) => failing
        ? FakeHttp.json({'message': 'down'}, status: 503)
        : FakeHttp.json(['Dune']);
    await tester.pumpWidget(
      stacApp(
        provider(
          'movies',
          errorWidget: {
            'type': 'column',
            'children': [
              {
                'type': 'text',
                'data': 'Failed {{movies.status}}: {{movies.error}}',
              },
              button('Retry', refetch('movies')),
            ],
          },
          {'type': 'text', 'data': 'First {{movies.data[0]}}'},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('Failed 503: '), findsOneWidget);

    failing = false;
    await tester.tap(find.text('Retry'));
    await tester.pumpAndSettle();
    expect(find.text('First Dune'), findsOneWidget);
    expect(fakeHttp.requests, hasLength(2));
  });

  testWidgets('keeps the data while a refetch loads, then replaces it', (
    tester,
  ) async {
    var round = 1;
    fakeHttp.respond = (_) => FakeHttp.json({'value': 'v$round'});
    await tester.pumpWidget(
      stacApp(
        provider('feed', {
          'type': 'column',
          'children': [
            {'type': 'text', 'data': '{{feed.data.value}} {{feed.isLoading}}'},
            button('Reload', refetch('feed')),
          ],
        }),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('v1 false'), findsOneWidget);

    round = 2;
    fakeHttp.delay = const Duration(milliseconds: 100);
    await tester.tap(find.text('Reload'));
    await tester.pump();
    expect(find.text('v1 true'), findsOneWidget);

    await tester.pump(const Duration(milliseconds: 150));
    await tester.pumpAndSettle();
    expect(find.text('v2 false'), findsOneWidget);
  });

  for (final asAction in [true, false]) {
    testWidgets('sends the request again when a value it reads changes'
        '${asAction ? ' (request with actionType)' : ''}', (tester) async {
      fakeHttp.respond = (options) =>
          FakeHttp.json({'q': options.uri.queryParameters['q']});
      await tester.pumpWidget(
        stacApp({
          'type': 'stateScope',
          'state': {'query': 'dune'},
          'child': {
            'type': 'column',
            'children': [
              {
                'type': 'dataProvider',
                'id': 'search',
                'request': {
                  'url': 'https://api.example.com/search?q={{query}}',
                  'method': 'get',
                  if (asAction) 'actionType': 'networkRequest',
                },
                'child': {'type': 'text', 'data': 'Result {{search.data.q}}'},
              },
              button('Change', {
                'actionType': 'setValue',
                'values': [
                  {'path': 'query', 'value': 'heat'},
                ],
              }),
            ],
          },
        }),
      );
      await tester.pumpAndSettle();
      expect(find.text('Result dune'), findsOneWidget);

      await tester.tap(find.text('Change'));
      await tester.pumpAndSettle();
      expect(find.text('Result heat'), findsOneWidget);
      expect(fakeHttp.requests.map((r) => r.uri.queryParameters['q']), [
        'dune',
        'heat',
      ]);
    });
  }

  testWidgets('refetch finds a provider elsewhere on the screen', (
    tester,
  ) async {
    var n = 1;
    fakeHttp.respond = (_) => FakeHttp.json({'n': n});
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          provider('news', {'type': 'text', 'data': 'News {{news.data.n}}'}),
          button('Refresh', refetch('news')),
          button('Unknown', refetch('nothing')),
        ],
      }),
    );
    await tester.pumpAndSettle();
    expect(find.text('News 1'), findsOneWidget);

    n = 2;
    await tester.tap(find.text('Refresh'));
    await tester.pumpAndSettle();
    expect(find.text('News 2'), findsOneWidget);

    await tester.tap(find.text('Unknown'));
    await tester.pumpAndSettle();
    expect(fakeHttp.requests, hasLength(2));
  });

  testWidgets('writes inside the provider update its data', (tester) async {
    fakeHttp.respond = (_) => FakeHttp.json([
      {'title': 'Milk', 'done': false},
    ]);
    await tester.pumpWidget(
      stacApp(
        provider('todos', {
          'type': 'column',
          'children': [
            {
              'type': 'column',
              'items': '{{todos.data}}',
              'itemTemplate': {
                'type': 'text',
                'data': r'{{$item.title}} {{$item.done}}',
              },
            },
            button('Done', {
              'actionType': 'setValue',
              'values': [
                {'path': 'todos.data[0].done', 'value': true},
              ],
            }),
          ],
        }),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Milk false'), findsOneWidget);

    await tester.tap(find.text('Done'));
    await tester.pump();
    expect(find.text('Milk true'), findsOneWidget);
  });

  testWidgets('a refresh indicator waits for the refetch', (tester) async {
    var items = ['a'];
    fakeHttp.respond = (_) => FakeHttp.json(items);
    await tester.pumpWidget(
      stacApp(
        provider('feed', {
          'type': 'refreshIndicator',
          'onRefresh': refetch('feed'),
          'child': {
            'type': 'listView',
            'items': '{{feed.data}}',
            'itemTemplate': {'type': 'text', 'data': r'Entry {{$item}}'},
          },
        }),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Entry a'), findsOneWidget);

    items = ['a', 'b'];
    tester.state<RefreshIndicatorState>(find.byType(RefreshIndicator)).show();
    await tester.pumpAndSettle();
    expect(find.text('Entry b'), findsOneWidget);
    expect(fakeHttp.requests, hasLength(2));
  });
}
