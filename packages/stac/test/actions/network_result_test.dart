import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

Map<String, dynamic> screen(Map<String, dynamic> request) => {
  'type': 'column',
  'children': [
    {'type': 'text', 'data': "user={{user.name ?? 'none'}}"},
    {'type': 'text', 'data': "outcome={{outcome ?? 'none'}}"},
    {
      'type': 'elevatedButton',
      'child': {'type': 'text', 'data': 'Load'},
      'onPressed': {
        'actionType': 'networkRequest',
        'url': 'https://api.test/me',
        'method': 'get',
        ...request,
      },
    },
  ],
};

Map<String, dynamic> outcome(String value) => {
  'actionType': 'setValue',
  'values': [
    {'path': 'outcome', 'value': value},
  ],
};

Future<void> load(WidgetTester tester, Map<String, dynamic> request) async {
  await tester.pumpWidget(stacApp(screen(request)));
  await tester.tap(find.text('Load'));
  await tester.pumpAndSettle();
}

void main() {
  setUpAll(initStacForTests);
  setUp(() {
    fakeHttp.requests.clear();
    fakeHttp.respond = (_) => FakeHttp.json({
      'data': {'name': 'Ann', 'id': 7},
    });
  });
  tearDown(Stac.state.clear);

  testWidgets('saveTo stores the response and onSuccess can read it', (
    tester,
  ) async {
    await load(tester, {
      'saveTo': 'user',
      'targetPath': 'data',
      'onSuccess': outcome(r'{{$result.status}} {{user.id}}'),
    });
    expect(find.text('user=Ann'), findsOneWidget);
    expect(find.text('outcome=200 7'), findsOneWidget);
  });

  testWidgets('onError receives the failed response', (tester) async {
    fakeHttp.respond = (_) =>
        FakeHttp.json({'message': 'Not allowed'}, status: 403);
    await load(tester, {
      'saveTo': 'user',
      'onSuccess': outcome('ok'),
      'onError': outcome(r'{{$result.status}}: {{$result.body.message}}'),
    });
    expect(find.text('outcome=403: Not allowed'), findsOneWidget);
    expect(find.text('user=none'), findsOneWidget);
  });

  testWidgets('onError runs when there is no response', (tester) async {
    fakeHttp.respond = (options) => throw DioException(
      requestOptions: options,
      type: DioExceptionType.connectionError,
      message: 'offline',
    );
    await load(tester, {
      'onError': outcome(r"{{$result.ok}} {{$result.status ?? 'no status'}}"),
    });
    expect(find.text('outcome=false no status'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('a matching results entry wins over onSuccess', (tester) async {
    await load(tester, {
      'results': [
        {'statusCode': 200, 'action': outcome('from results')},
      ],
      'onSuccess': outcome('from onSuccess'),
    });
    expect(find.text('outcome=from results'), findsOneWidget);
  });

  testWidgets('refreshIndicator keeps its child when the body is data', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'refreshIndicator',
        'onRefresh': {
          'actionType': 'networkRequest',
          'url': 'https://api.test/me',
          'method': 'get',
          'saveTo': 'profile',
          'targetPath': 'data',
        },
        'child': {
          'type': 'listView',
          'children': [
            {'type': 'text', 'data': "Hi {{profile.name ?? 'there'}}"},
          ],
        },
      }),
    );
    expect(find.text('Hi there'), findsOneWidget);

    tester.state<RefreshIndicatorState>(find.byType(RefreshIndicator)).show();
    await tester.pumpAndSettle();

    expect(find.text('Hi Ann'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
