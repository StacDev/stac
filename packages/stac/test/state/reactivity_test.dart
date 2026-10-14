import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

/// Renders `label` and counts how often each `id` is built.
class ProbeParser extends StacParser<Map<String, dynamic>> {
  const ProbeParser();

  static final Map<String, int> builds = {};

  @override
  String get type => 'probe';

  @override
  Map<String, dynamic> getModel(Map<String, dynamic> json) => json;

  @override
  Widget parse(BuildContext context, Map<String, dynamic> model) {
    final id = model['id'] as String;
    builds[id] = (builds[id] ?? 0) + 1;
    return Text('${model['label']}');
  }
}

/// Reads state from Dart with StacScope.watch.
class WatcherParser extends StacParser<Map<String, dynamic>> {
  const WatcherParser();

  @override
  String get type => 'watcher';

  @override
  Map<String, dynamic> getModel(Map<String, dynamic> json) => json;

  @override
  Widget parse(BuildContext context, Map<String, dynamic> model) {
    return Text('Watched ${StacScope.of(context).watch('count ?? 0')}');
  }
}

Map<String, dynamic> button(String label, List<Map<String, dynamic>> values) {
  return {
    'type': 'elevatedButton',
    'child': {'type': 'text', 'data': label},
    'onPressed': {'actionType': 'setValue', 'values': values},
  };
}

Map<String, dynamic> scoped(
  Map<String, dynamic> state,
  List<Map<String, dynamic>> children,
) {
  return {
    'type': 'stateScope',
    'state': state,
    'child': {'type': 'column', 'children': children},
  };
}

void main() {
  setUpAll(() async {
    await initStacForTests();
    StacRegistry.instance.register(const ProbeParser(), true);
    StacRegistry.instance.register(const WatcherParser(), true);
  });
  setUp(ProbeParser.builds.clear);
  tearDown(Stac.state.clear);

  testWidgets('a change rebuilds only the widgets that read it', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp(
        scoped(
          {'count': 0},
          [
            {'type': 'probe', 'id': 'bound', 'label': 'Count {{count}}'},
            {'type': 'probe', 'id': 'static', 'label': 'Static'},
            button('Add', [
              {'path': 'count', 'op': 'increment'},
            ]),
          ],
        ),
      ),
    );
    expect(find.text('Count 0'), findsOneWidget);

    await tester.tap(find.text('Add'));
    await tester.pump();
    await tester.tap(find.text('Add'));
    await tester.pump();

    expect(find.text('Count 2'), findsOneWidget);
    expect(ProbeParser.builds, {'bound': 3, 'static': 1});
  });

  testWidgets('conditions switch branches when their values change', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp(
        scoped(
          {'count': 0},
          [
            {
              'type': 'conditional',
              'condition': 'count >= 2',
              'ifTrue': {'type': 'text', 'data': 'many'},
              'ifFalse': {'type': 'text', 'data': 'few'},
            },
            button('Add', [
              {'path': 'count', 'op': 'increment'},
            ]),
          ],
        ),
      ),
    );
    expect(find.text('few'), findsOneWidget);
    await tester.tap(find.text('Add'));
    await tester.pump();
    expect(find.text('few'), findsOneWidget);
    await tester.tap(find.text('Add'));
    await tester.pump();
    expect(find.text('many'), findsOneWidget);
  });

  testWidgets('a text field keeps its text when other state changes', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp(
        scoped(
          {'count': 0},
          [
            {'type': 'textField'},
            {'type': 'text', 'data': 'Count {{count}}'},
            button('Add', [
              {'path': 'count', 'op': 'increment'},
            ]),
          ],
        ),
      ),
    );
    await tester.enterText(find.byType(TextField), 'draft');
    await tester.tap(find.text('Add'));
    await tester.pump();

    expect(find.text('Count 1'), findsOneWidget);
    final field = tester.widget<TextField>(find.byType(TextField));
    expect(field.controller!.text, 'draft');
  });

  testWidgets('host writes through StacRegistry and Stac.state update', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          {'type': 'text', 'data': '{{greeting}}'},
          {'type': 'text', 'data': "{{user.name ?? 'guest'}}"},
        ],
      }),
    );
    expect(find.text('{{greeting}}'), findsOneWidget);
    expect(find.text('guest'), findsOneWidget);

    StacRegistry.instance.setValue('greeting', 'Hello');
    Stac.state.set('user.name', 'Ann');
    await tester.pump();

    expect(find.text('Hello'), findsOneWidget);
    expect(find.text('Ann'), findsOneWidget);
  });

  testWidgets('bound values get the types their fields expect', (tester) async {
    await tester.pumpWidget(
      stacApp(
        scoped(
          {'dark': false, 'show': true, 'width': 40, 'lines': '2'},
          [
            {'type': 'switch', 'value': '{{dark}}'},
            {
              'type': 'visibility',
              'visible': '{{show}}',
              'child': {'type': 'text', 'data': 'shown'},
            },
            {
              'type': 'sizedBox',
              'width': '{{width * 2}}',
              'height': 10,
              'child': {'type': 'text', 'data': 'box'},
            },
            {'type': 'text', 'data': 'lines', 'maxLines': '{{lines}}'},
            button('Flip', [
              {'path': 'dark', 'op': 'toggle'},
              {'path': 'show', 'op': 'toggle'},
            ]),
          ],
        ),
      ),
    );
    expect(tester.widget<Switch>(find.byType(Switch)).value, isFalse);
    expect(find.text('shown'), findsOneWidget);
    expect(
      find.byWidgetPredicate((w) => w is SizedBox && w.width == 80),
      findsOneWidget,
    );
    expect(tester.widget<Text>(find.text('lines')).maxLines, 2);

    await tester.tap(find.text('Flip'));
    await tester.pump();

    expect(tester.widget<Switch>(find.byType(Switch)).value, isTrue);
    expect(find.text('shown'), findsNothing);
  });

  testWidgets('a setValue widget writing while building updates readers', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'children': [
          {'type': 'text', 'data': "Token: {{token ?? 'none'}}"},
          {
            'type': 'setValue',
            'values': [
              {'key': 'token', 'value': 'abc'},
            ],
            'child': {'type': 'text', 'data': 'Inner: {{token}}'},
          },
        ],
      }),
    );
    await tester.pump();

    expect(tester.takeException(), isNull);
    expect(find.text('Token: abc'), findsOneWidget);
    expect(find.text('Inner: abc'), findsOneWidget);
  });

  testWidgets('custom parsers can watch state with StacScope', (tester) async {
    await tester.pumpWidget(
      stacApp(
        scoped(
          {'count': 0},
          [
            {'type': 'watcher'},
            button('Add', [
              {'path': 'count', 'op': 'increment'},
            ]),
          ],
        ),
      ),
    );
    expect(find.text('Watched 0'), findsOneWidget);
    await tester.tap(find.text('Add'));
    await tester.pump();
    expect(find.text('Watched 1'), findsOneWidget);
  });

  testWidgets('app bars with bound properties update', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: StacHost({
          'type': 'stateScope',
          'state': {'color': '#FF0000', 'title': 'First'},
          'child': {
            'type': 'scaffold',
            'appBar': {
              'type': 'appBar',
              'backgroundColor': '{{color}}',
              'title': {'type': 'text', 'data': '{{title}}'},
            },
            'body': button('Change', [
              {'path': 'color', 'value': '#0000FF'},
              {'path': 'title', 'value': 'Second'},
            ]),
          },
        }),
      ),
    );
    AppBar appBar() => tester.widget<AppBar>(find.byType(AppBar));
    expect(appBar().backgroundColor, const Color(0xFFFF0000));
    expect(find.text('First'), findsOneWidget);

    await tester.tap(find.text('Change'));
    await tester.pump();

    expect(appBar().backgroundColor, const Color(0xFF0000FF));
    expect(find.text('Second'), findsOneWidget);
  });
}
