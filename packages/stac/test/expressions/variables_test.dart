import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

void main() {
  setUpAll(initStacForTests);

  const keys = [
    'greeting',
    'user.name',
    'profile',
    'count',
    'a',
    'b',
    'query',
    'echo',
    'result',
    'dark',
    'doubled',
  ];
  tearDown(() => clearVariables(keys));

  testWidgets('placeholders read flat keys, nested maps and expressions', (
    tester,
  ) async {
    StacRegistry.instance.setValue('user.name', 'Alice');
    StacRegistry.instance.setValue('profile', {'name': 'Bob', 'age': 30});
    StacRegistry.instance.setValue('count', 4);

    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          {'type': 'text', 'data': 'Hi {{user.name}}'},
          {'type': 'text', 'data': '{{profile.name}} is {{profile.age}}'},
          {'type': 'text', 'data': 'Double: {{count * 2}}'},
          {'type': 'text', 'data': "{{nickname ?? 'no nickname'}}"},
          {'type': 'text', 'data': '{{unknown}}'},
        ],
      }),
    );

    expect(find.text('Hi Alice'), findsOneWidget);
    expect(find.text('Bob is 30'), findsOneWidget);
    expect(find.text('Double: 8'), findsOneWidget);
    expect(find.text('no nickname'), findsOneWidget);
    // Plain paths to unset variables stay as written, as before.
    expect(find.text('{{unknown}}'), findsOneWidget);
  });

  testWidgets('setValue widget values are typed and applied in order', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'setValue',
        'values': [
          {'key': 'a', 'value': 2},
          {'key': 'b', 'value': '{{a * 10}}'},
        ],
        'child': {'type': 'text', 'data': '{{a}} and {{b}}'},
      }),
    );

    expect(find.text('2 and 20'), findsOneWidget);
    expect(variable('b'), 20);
  });

  testWidgets('actions resolve when they run, not when the widget builds', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'elevatedButton',
        'child': {'type': 'text', 'data': 'Add'},
        'onPressed': {
          'actionType': 'setValue',
          'values': [
            {'key': 'count', 'value': '{{(count ?? 0) + 1}}'},
          ],
          'action': {
            'actionType': 'setValue',
            'values': [
              {'key': 'doubled', 'value': '{{count * 2}}'},
            ],
          },
        },
      }),
    );

    await tester.tap(find.text('Add'));
    await tester.pump();
    await tester.tap(find.text('Add'));
    await tester.pump();

    expect(variable('count'), 2);
    expect(variable('doubled'), 4);
  });

  testWidgets(r'text field callbacks expose the new text as $value', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          {
            'type': 'textField',
            'onChanged': {
              'actionType': 'setValue',
              'values': [
                {'key': 'query', 'value': r'{{$value}}'},
              ],
              'action': {
                'actionType': 'setValue',
                'values': [
                  {'key': 'echo', 'value': r'{{$value.upper()}}'},
                ],
              },
            },
          },
          {
            'type': 'elevatedButton',
            'child': {'type': 'text', 'data': 'Search'},
            'onPressed': {
              'actionType': 'setValue',
              'values': [
                {'key': 'result', 'value': "{{'Searching ' + query}}"},
              ],
            },
          },
        ],
      }),
    );

    await tester.enterText(find.byType(TextField), 'stac');
    await tester.pump();
    expect(variable('query'), 'stac');
    expect(variable('echo'), 'STAC');

    await tester.tap(find.text('Search'));
    await tester.pump();
    expect(variable('result'), 'Searching stac');
  });

  testWidgets(r'switch callbacks expose the new value as $value', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'switch',
        'value': false,
        'onChanged': {
          'actionType': 'setValue',
          'values': [
            {'key': 'dark', 'value': r'{{$value}}'},
          ],
        },
      }),
    );

    await tester.tap(find.byType(Switch));
    await tester.pump();
    expect(variable('dark'), isTrue);
  });
}
