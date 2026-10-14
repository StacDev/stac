import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

Map<String, dynamic> conditional(String condition) => {
  'type': 'conditional',
  'condition': condition,
  'ifTrue': {'type': 'text', 'data': 'yes'},
  'ifFalse': {'type': 'text', 'data': 'no'},
};

void main() {
  setUpAll(initStacForTests);
  tearDown(() => clearVariables(['user', 'name', 'count', 'status']));

  // Every condition in stac_playground/assets/json/conditional_example.json.
  for (final condition in [
    '5 > 3',
    'Flutter == Flutter',
    '(10 + 5) * 2 == 30',
    'true && (false || true)',
    '3 < 5',
  ]) {
    testWidgets('playground condition "$condition" holds', (tester) async {
      await tester.pumpWidget(stacApp(conditional(condition)));
      expect(find.text('yes'), findsOneWidget);
    });
  }

  testWidgets('conditions read variables directly', (tester) async {
    StacRegistry.instance.setValue('user', {'isLoggedIn': true});
    await tester.pumpWidget(stacApp(conditional('user.isLoggedIn == true')));
    expect(find.text('yes'), findsOneWidget);
  });

  testWidgets('placeholders in conditions compare as values', (tester) async {
    StacRegistry.instance.setValue('name', 'Ann Lee');
    StacRegistry.instance.setValue('count', '7');
    await tester.pumpWidget(
      stacApp(conditional("{{name}} == 'Ann Lee' && {{count}} > 5")),
    );
    expect(find.text('yes'), findsOneWidget);
  });

  testWidgets('an unset variable equals null', (tester) async {
    await tester.pumpWidget(stacApp(conditional('{{token}} == null')));
    expect(find.text('yes'), findsOneWidget);
  });

  testWidgets('unquoted words still compare as text', (tester) async {
    StacRegistry.instance.setValue('status', 'idle');
    await tester.pumpWidget(stacApp(conditional('{{status}} == active')));
    expect(find.text('no'), findsOneWidget);
  });

  testWidgets('an invalid condition renders ifFalse instead of failing', (
    tester,
  ) async {
    await tester.pumpWidget(stacApp(conditional('count >')));
    expect(find.text('no'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
