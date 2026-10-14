import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/stac_test_harness.dart';

void main() {
  setUpAll(initStacForTests);

  testWidgets('typed text survives a rebuild', (tester) async {
    await tester.pumpWidget(
      stacApp({'type': 'textField', 'initialValue': 'start'}),
    );
    await tester.enterText(find.byType(TextField), 'typed by the user');
    await tester.pump();

    StacHost.of(tester).rebuild();
    await tester.pump();

    final field = tester.widget<TextField>(find.byType(TextField));
    expect(field.controller!.text, 'typed by the user');
  });

  testWidgets('initialValue fills the field', (tester) async {
    await tester.pumpWidget(
      stacApp({'type': 'textField', 'initialValue': 'hello'}),
    );
    expect(find.text('hello'), findsOneWidget);
  });
}
