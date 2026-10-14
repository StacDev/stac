import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';
import 'package:stac_playground/app/widgets/state_inspector.dart';
import 'package:stac_playground/theme/app_theme.dart';

void main() {
  setUpAll(() => Stac.initialize(override: true));
  tearDown(Stac.state.clear);

  Widget preview() {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Builder(
                builder: (context) => Stac.fromJson({
                  'type': 'stateScope',
                  'state': {'count': 0},
                  'child': {
                    'type': 'elevatedButton',
                    'child': {'type': 'text', 'data': 'Add'},
                    'onPressed': {
                      'actionType': 'setValue',
                      'values': [
                        {'path': 'count', 'op': 'increment'},
                      ],
                    },
                  },
                }, context)!,
              ),
            ),
            const SizedBox(height: 280, child: StateInspector()),
          ],
        ),
      ),
    );
  }

  testWidgets('shows each level and follows changes', (tester) async {
    await tester.pumpWidget(preview());
    await tester.pump();

    expect(find.text('app'), findsOneWidget);
    expect(find.text('screen'), findsOneWidget);
    expect(find.text('local stateScope'), findsOneWidget);
    expect(find.textContaining('"count": 0'), findsOneWidget);

    await tester.tap(find.text('Add'));
    await tester.pump();
    await tester.pump();
    expect(find.textContaining('"count": 1'), findsOneWidget);

    await tester.tap(find.text('Changes (1)'));
    await tester.pump();
    expect(find.textContaining('count: 0 → 1'), findsOneWidget);
  });

  testWidgets('clears app state', (tester) async {
    Stac.state.set('theme', 'dark');
    await tester.pumpWidget(preview());
    await tester.pump();
    expect(find.textContaining('"theme": "dark"'), findsOneWidget);

    await tester.tap(find.byTooltip('Clear app state'));
    await tester.pump();
    await tester.pump();
    expect(Stac.state.data, isEmpty);
    expect(find.textContaining('"theme": "dark"'), findsNothing);
  });
}
