import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

Map<String, dynamic> form(List<Map<String, dynamic>> children) => {
  'type': 'form',
  'child': {'type': 'column', 'children': children},
};

void main() {
  setUpAll(initStacForTests);
  tearDown(Stac.state.clear);

  testWidgets(r'form fields are readable as $form inside the form', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp(
        form([
          {'type': 'textFormField', 'id': 'email', 'initialValue': 'a@b.c'},
          {'type': 'checkBox', 'id': 'agree', 'value': false},
          {'type': 'text', 'data': r'{{$form.email}} {{$form.agree}}'},
        ]),
      ),
    );
    await tester.pump();
    expect(find.text('a@b.c false'), findsOneWidget);

    await tester.enterText(find.byType(TextFormField), 'ann@stac.dev');
    await tester.tap(find.byType(Checkbox));
    await tester.pump();
    expect(find.text('ann@stac.dev true'), findsOneWidget);
  });

  testWidgets(r'writing $form updates the field', (tester) async {
    await tester.pumpWidget(
      stacApp(
        form([
          {'type': 'textFormField', 'id': 'email'},
          {
            'type': 'elevatedButton',
            'child': {'type': 'text', 'data': 'Fill'},
            'onPressed': {
              'actionType': 'setValue',
              'values': [
                {'path': r'$form.email', 'value': 'filled@stac.dev'},
              ],
            },
          },
        ]),
      ),
    );
    await tester.tap(find.text('Fill'));
    await tester.pump();

    final field = tester.widget<TextField>(find.byType(TextField));
    expect(field.controller!.text, 'filled@stac.dev');
  });

  testWidgets('field ids do not hide variables with the same name', (
    tester,
  ) async {
    Stac.state.set('email', 'app@stac.dev');
    await tester.pumpWidget(
      stacApp(
        form([
          {'type': 'textFormField', 'id': 'email', 'initialValue': 'field'},
          {'type': 'text', 'data': 'Account {{email}}'},
        ]),
      ),
    );
    await tester.pump();
    expect(find.text('Account app@stac.dev'), findsOneWidget);
  });

  testWidgets(r'$form outside a form reads nothing and cannot be written', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          {'type': 'text', 'data': r"{{$form.email ?? 'none'}}"},
          {
            'type': 'elevatedButton',
            'child': {'type': 'text', 'data': 'Write'},
            'onPressed': {
              'actionType': 'setValue',
              'values': [
                {'path': r'$form.email', 'value': 'x'},
              ],
            },
          },
        ],
      }),
    );
    expect(find.text('none'), findsOneWidget);
    await tester.tap(find.text('Write'));
    await tester.pump();
    expect(find.text('none'), findsOneWidget);
    expect(Stac.state.data, isEmpty);
  });
}
