import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

Map<String, dynamic> moviesView({String url = 'https://api.test/movies'}) => {
  'type': 'dynamicView',
  // Requests built with the Dart DSL carry an actionType.
  'request': {'actionType': 'networkRequest', 'url': url, 'method': 'get'},
  'targetPath': 'results',
  'template': {
    'type': 'column',
    'itemTemplate': {
      'type': 'column',
      'children': [
        {'type': 'text', 'data': '{{title}} by {{studio}}'},
        {'type': 'text', 'data': "Price: {{price ?? 'free'}}"},
        {
          'type': 'conditional',
          'condition': '{{price}} == null',
          'ifTrue': {'type': 'text', 'data': '{{title}} has no price'},
          'ifFalse': {'type': 'text', 'data': '{{title}} costs {{price * 2}}'},
        },
      ],
    },
  },
};

void main() {
  setUpAll(initStacForTests);

  setUp(() {
    fakeHttp.requests.clear();
    fakeHttp.respond = (_) => FakeHttp.json({
      'results': [
        {'title': 'Dune', 'price': null},
        {'title': 'Heat', 'price': 4},
      ],
    });
    StacRegistry.instance.setValue('studio', 'Stac');
  });
  tearDown(() => clearVariables(['studio', 'movie_id']));

  testWidgets('renders item templates with expressions and conditions', (
    tester,
  ) async {
    await tester.pumpWidget(stacApp(moviesView()));
    await tester.pumpAndSettle();

    expect(find.text('Dune by Stac'), findsOneWidget);
    expect(find.text('Price: free'), findsOneWidget);
    expect(find.text('Dune has no price'), findsOneWidget);
    expect(find.text('Heat by Stac'), findsOneWidget);
    expect(find.text('Price: 4'), findsOneWidget);
    expect(find.text('Heat costs 8'), findsOneWidget);
  });

  testWidgets('resolves variables in the request URL when it is sent', (
    tester,
  ) async {
    StacRegistry.instance.setValue('movie_id', 42);
    await tester.pumpWidget(
      stacApp(moviesView(url: 'https://api.test/movie/{{movie_id}}')),
    );
    await tester.pumpAndSettle();

    expect(fakeHttp.requests.single.uri.path, '/movie/42');
  });

  testWidgets('does not fetch again when an ancestor rebuilds', (tester) async {
    await tester.pumpWidget(stacApp(moviesView()));
    await tester.pumpAndSettle();
    StacHost.of(tester).rebuild();
    await tester.pumpAndSettle();
    StacHost.of(tester).rebuild();
    await tester.pumpAndSettle();

    expect(StacHost.of(tester).builds, 3);
    expect(fakeHttp.requests, hasLength(1));
    expect(find.text('Dune by Stac'), findsOneWidget);
  });

  testWidgets('fetches again when the request changes', (tester) async {
    await tester.pumpWidget(stacApp(moviesView()));
    await tester.pumpAndSettle();
    StacHost.of(tester).rebuild(moviesView(url: 'https://api.test/top'));
    await tester.pumpAndSettle();

    expect(fakeHttp.requests.map((r) => r.uri.path), ['/movies', '/top']);
  });

  testWidgets('renders again when state its template reads changes', (
    tester,
  ) async {
    await tester.pumpWidget(stacApp(moviesView()));
    await tester.pumpAndSettle();
    expect(find.text('Dune by Stac'), findsOneWidget);

    Stac.state.set('studio', 'Other');
    await tester.pumpAndSettle();

    expect(find.text('Dune by Other'), findsOneWidget);
    expect(fakeHttp.requests, hasLength(1));
  });

  testWidgets(r'item templates can read $item and $index, and plain values', (
    tester,
  ) async {
    fakeHttp.respond = (_) => FakeHttp.json({
      'results': [
        {'title': 'Dune'},
        {'title': 'Heat'},
      ],
      'tags': ['new', 'old'],
    });
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          {
            'type': 'dynamicView',
            'request': {'url': 'https://api.test/movies', 'method': 'get'},
            'targetPath': 'results',
            'template': {
              'type': 'column',
              'itemTemplate': {
                'type': 'text',
                'data': r'{{$index}}: {{$item.title}}',
              },
            },
          },
          {
            'type': 'dynamicView',
            'request': {'url': 'https://api.test/movies', 'method': 'get'},
            'targetPath': 'tags',
            'template': {
              'type': 'column',
              'itemTemplate': {'type': 'text', 'data': r'tag {{$item}}'},
            },
          },
        ],
      }),
    );
    await tester.pumpAndSettle();

    expect(find.text('0: Dune'), findsOneWidget);
    expect(find.text('1: Heat'), findsOneWidget);
    expect(find.text('tag new'), findsOneWidget);
    expect(find.text('tag old'), findsOneWidget);
  });

  testWidgets('a template with items renders them with item scopes', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'dynamicView',
        'request': {'url': 'https://api.test/movies', 'method': 'get'},
        'template': {
          'type': 'column',
          'items': '{{results}}',
          'itemTemplate': {
            'type': 'text',
            'data': r"{{$item.title}} {{$item.price ?? 'free'}}",
          },
        },
      }),
    );
    await tester.pumpAndSettle();

    expect(find.text('Dune free'), findsOneWidget);
    expect(find.text('Heat 4'), findsOneWidget);
  });
}
