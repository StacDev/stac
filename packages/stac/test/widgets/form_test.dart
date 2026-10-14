import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/stac_test_harness.dart';

Map<String, dynamic> signUpForm() => {
  'type': 'form',
  'child': {
    'type': 'column',
    'children': [
      {
        'type': 'textFormField',
        'id': 'email',
        'validatorRules': [
          {'rule': 'isEmail', 'message': 'Enter a valid email'},
        ],
      },
      {
        'type': 'elevatedButton',
        'child': {'type': 'text', 'data': 'Submit'},
        'onPressed': {
          'actionType': 'validateForm',
          'isValid': {
            'actionType': 'networkRequest',
            'url': 'https://api.test/signup',
            'method': 'post',
            'body': {
              'email': {'actionType': 'getFormValue', 'id': 'email'},
            },
          },
        },
      },
    ],
  },
};

void main() {
  setUpAll(initStacForTests);
  setUp(() {
    fakeHttp.requests.clear();
    fakeHttp.respond = (_) => FakeHttp.json({'ok': true});
  });

  testWidgets('a valid form posts the field value', (tester) async {
    await tester.pumpWidget(stacApp(signUpForm()));
    await tester.enterText(find.byType(TextFormField), 'ann@stac.dev');
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();

    expect(fakeHttp.requests, hasLength(1));
    expect(fakeHttp.requests.single.data, {'email': 'ann@stac.dev'});
  });

  testWidgets('an invalid form shows the message and does not post', (
    tester,
  ) async {
    await tester.pumpWidget(stacApp(signUpForm()));
    await tester.enterText(find.byType(TextFormField), 'not an email');
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();

    expect(find.text('Enter a valid email'), findsOneWidget);
    expect(fakeHttp.requests, isEmpty);
  });
}
