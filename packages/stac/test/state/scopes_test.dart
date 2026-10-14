import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

Map<String, dynamic> button(String label, Map<String, dynamic> action) => {
  'type': 'elevatedButton',
  'child': {'type': 'text', 'data': label},
  'onPressed': action,
};

Map<String, dynamic> setValue(List<Map<String, dynamic>> values) => {
  'actionType': 'setValue',
  'values': values,
};

void main() {
  setUpAll(initStacForTests);
  tearDown(Stac.state.clear);

  testWidgets('each screen has its own state and receives arguments', (
    tester,
  ) async {
    final second = {
      'type': 'column',
      'children': [
        {'type': 'text', 'data': 'B n={{n ?? 0}} id={{\$args.id}}'},
        button(
          'Set B',
          setValue([
            {'path': 'n', 'value': 5},
          ]),
        ),
        button('Back', {'actionType': 'navigate', 'navigationStyle': 'pop'}),
      ],
    };
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          {'type': 'text', 'data': 'A n={{n ?? 0}}'},
          button(
            'Set A',
            setValue([
              {'path': 'n', 'value': 1},
            ]),
          ),
          button('Open', {
            'actionType': 'navigate',
            'widgetJson': {'type': 'scaffold', 'body': second},
            'arguments': {'id': 7},
          }),
        ],
      }),
    );

    await tester.tap(find.text('Set A'));
    await tester.pump();
    expect(find.text('A n=1'), findsOneWidget);

    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(find.text('B n=0 id=7'), findsOneWidget);

    await tester.tap(find.text('Set B'));
    await tester.pump();
    expect(find.text('B n=5 id=7'), findsOneWidget);

    await tester.tap(find.text('Back'));
    await tester.pumpAndSettle();
    expect(find.text('A n=1'), findsOneWidget);
  });

  testWidgets('stateScope values shadow outer ones and receive writes', (
    tester,
  ) async {
    Stac.state.set('label', 'app');
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          {'type': 'text', 'data': 'Outer {{label}}'},
          {
            'type': 'stateScope',
            'state': {'label': "{{label + ' copy'}}"},
            'child': {
              'type': 'column',
              'children': [
                {'type': 'text', 'data': 'Inner {{label}}'},
                button(
                  'Rename',
                  setValue([
                    {'path': 'label', 'value': 'renamed'},
                  ]),
                ),
              ],
            },
          },
        ],
      }),
    );
    expect(find.text('Outer app'), findsOneWidget);
    expect(find.text('Inner app copy'), findsOneWidget);

    await tester.tap(find.text('Rename'));
    await tester.pump();

    expect(find.text('Inner renamed'), findsOneWidget);
    expect(find.text('Outer app'), findsOneWidget);
    expect(Stac.state.get('label'), 'app');
  });

  testWidgets('key writes app state, path writes screen state by default', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          {'type': 'text', 'data': 'screen={{\$screen.p ?? 0}}'},
          button(
            'Write',
            setValue([
              {'key': 'k', 'value': 1},
              {'path': 'p', 'value': 2},
              {'path': '\$app.theme', 'value': 'dark'},
            ]),
          ),
        ],
      }),
    );
    await tester.tap(find.text('Write'));
    await tester.pump();

    expect(Stac.state.data, {'k': 1, 'theme': 'dark'});
    expect(find.text('screen=2'), findsOneWidget);
  });

  testWidgets(
    'dialogs read and write the state of the screen that opened them',
    (tester) async {
      await tester.pumpWidget(
        stacApp({
          'type': 'column',
          'children': [
            {'type': 'text', 'data': 'Screen {{count ?? 0}}'},
            button('Open', {
              'actionType': 'showDialog',
              'widget': {
                'type': 'alertDialog',
                'content': {
                  'type': 'column',
                  'mainAxisSize': 'min',
                  'children': [
                    {'type': 'text', 'data': 'Dialog {{count ?? 0}}'},
                    button(
                      'Add',
                      setValue([
                        {'path': 'count', 'op': 'increment'},
                      ]),
                    ),
                  ],
                },
              },
            }),
          ],
        }),
      );
      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
      expect(find.text('Dialog 0'), findsOneWidget);

      await tester.tap(find.text('Add'));
      await tester.pump();

      expect(find.text('Dialog 1'), findsOneWidget);
      expect(find.text('Screen 1'), findsOneWidget);
    },
  );

  testWidgets(r'$device follows the screen size', (tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(400, 800);
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      stacApp({
        'type': 'text',
        'data': r'{{$device.breakpoint}} {{$device.orientation}}',
      }),
    );
    expect(find.text('compact portrait'), findsOneWidget);

    tester.view.physicalSize = const Size(1000, 800);
    await tester.pump();
    expect(find.text('expanded landscape'), findsOneWidget);
  });

  testWidgets('initialState seeds app state', (tester) async {
    await Stac.initialize(initialState: {'seed': 42}, override: true);
    await tester.pumpWidget(stacApp({'type': 'text', 'data': 'Seed {{seed}}'}));
    expect(find.text('Seed 42'), findsOneWidget);
  });
}
