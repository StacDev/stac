import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

Map<String, dynamic> scoped(
  Map<String, dynamic> state,
  List<Map<String, dynamic>> children,
) => {
  'type': 'stateScope',
  'state': state,
  'child': {'type': 'column', 'children': children},
};

Map<String, dynamic> button(String label, List<Map<String, dynamic>> values) =>
    {
      'type': 'elevatedButton',
      'child': {'type': 'text', 'data': label},
      'onPressed': {'actionType': 'setValue', 'values': values},
    };

void main() {
  setUpAll(initStacForTests);
  tearDown(Stac.state.clear);

  testWidgets('a text field shows and updates its bound value', (tester) async {
    await tester.pumpWidget(
      stacApp(
        scoped(
          {'name': 'Ann'},
          [
            {'type': 'textField', 'bind': 'name'},
            {'type': 'text', 'data': 'Hello {{name}}'},
            button('Clear', [
              {'path': 'name', 'value': ''},
            ]),
          ],
        ),
      ),
    );
    TextEditingController controller() =>
        tester.widget<TextField>(find.byType(TextField)).controller!;
    expect(controller().text, 'Ann');

    await tester.enterText(find.byType(TextField), 'Bob');
    await tester.pump();
    expect(find.text('Hello Bob'), findsOneWidget);

    await tester.tap(find.text('Clear'));
    await tester.pump();
    expect(controller().text, '');
    expect(find.text('Hello '), findsOneWidget);
  });

  testWidgets('a bound input writes its initial value when nothing is bound', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          {'type': 'textField', 'bind': r'$app.note', 'initialValue': 'draft'},
          {'type': 'switch', 'bind': r'$app.alerts', 'value': true},
        ],
      }),
    );
    await tester.pump();
    expect(Stac.state.data, {'note': 'draft', 'alerts': true});
  });

  testWidgets('switches and checkboxes follow and write their binding', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp(
        scoped(
          {'dark': false, 'agreed': false},
          [
            {'type': 'switch', 'bind': 'dark'},
            {'type': 'checkBox', 'bind': 'agreed'},
            {'type': 'text', 'data': 'dark={{dark}} agreed={{agreed}}'},
            button('Flip', [
              {'path': 'dark', 'op': 'toggle'},
            ]),
          ],
        ),
      ),
    );
    await tester.tap(find.byType(Checkbox));
    await tester.tap(find.byType(Switch));
    await tester.pump();
    expect(find.text('dark=true agreed=true'), findsOneWidget);

    await tester.tap(find.text('Flip'));
    await tester.pump();
    expect(tester.widget<Switch>(find.byType(Switch)).value, isFalse);
    expect(find.text('dark=false agreed=true'), findsOneWidget);
  });

  testWidgets('sliders and radio groups write their binding', (tester) async {
    await tester.pumpWidget(
      stacApp(
        scoped(
          {'volume': 0.2, 'size': 's'},
          [
            {'type': 'slider', 'bind': 'volume', 'value': 0.0},
            {
              'type': 'radioGroup',
              'bind': 'size',
              'child': {
                'type': 'row',
                'children': [
                  {'type': 'radio', 'value': 's'},
                  {'type': 'radio', 'value': 'm'},
                ],
              },
            },
            {'type': 'text', 'data': 'volume={{volume}} size={{size}}'},
          ],
        ),
      ),
    );
    final slider = tester.widget<Slider>(find.byType(Slider));
    expect(slider.value, 0.2);
    slider.onChanged!(0.75);
    await tester.tap(find.byType(Radio<dynamic>).last);
    await tester.pump();
    expect(find.text('volume=0.75 size=m'), findsOneWidget);
  });

  testWidgets('dropdown menus write their selection and run onSelected', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp(
        scoped(
          {'choice': 'a'},
          [
            {
              'type': 'dropdownMenu',
              'bind': 'choice',
              'dropdownMenuEntries': [
                {'value': 'a', 'label': 'Apple'},
                {'value': 'b', 'label': 'Banana'},
              ],
              'onSelected': {
                'actionType': 'setValue',
                'values': [
                  {'path': r'$app.picked', 'value': r'{{$value}}'},
                ],
              },
            },
            {'type': 'text', 'data': 'choice={{choice}}'},
            button('Reset', [
              {'path': 'choice', 'value': 'a'},
            ]),
          ],
        ),
      ),
    );
    await tester.tap(find.byIcon(Icons.arrow_drop_down).hitTestable());
    await tester.pumpAndSettle();
    await tester.tap(find.text('Banana').last);
    await tester.pumpAndSettle();

    expect(find.text('choice=b'), findsOneWidget);
    expect(Stac.state.get('picked'), 'b');

    // A change from elsewhere moves the selection back.
    await tester.tap(find.text('Reset'));
    await tester.pumpAndSettle();
    final field = tester.widget<TextField>(find.byType(TextField).first);
    expect(field.controller!.text, 'Apple');
  });

  testWidgets('autocomplete writes the selected option', (tester) async {
    await tester.pumpWidget(
      stacApp(
        scoped({}, [
          {
            'type': 'autocomplete',
            'bind': 'fruit',
            'options': ['apple', 'apricot', 'banana'],
          },
          {'type': 'text', 'data': "fruit={{fruit ?? 'none'}}"},
        ]),
      ),
    );
    await tester.enterText(find.byType(TextField), 'ap');
    await tester.pumpAndSettle();
    await tester.tap(find.text('apricot'));
    await tester.pumpAndSettle();

    expect(find.text('fruit=apricot'), findsOneWidget);
  });

  testWidgets('an invalid bind path leaves the input working unbound', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({'type': 'textField', 'bind': 'not a path', 'initialValue': 'x'}),
    );
    await tester.enterText(find.byType(TextField), 'typed');
    await tester.pump();
    expect(tester.takeException(), isNull);
    expect(Stac.state.data, isEmpty);
  });
}
