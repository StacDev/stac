import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

import '../helpers/stac_test_harness.dart';

/// Renders `label` and counts how often each resolved `id` is built.
class ItemProbeParser extends StacParser<Map<String, dynamic>> {
  const ItemProbeParser();

  static final Map<String, int> builds = {};

  @override
  String get type => 'itemProbe';

  @override
  Map<String, dynamic> getModel(Map<String, dynamic> json) => json;

  @override
  Widget parse(BuildContext context, Map<String, dynamic> model) {
    final id = '${model['id']}';
    builds[id] = (builds[id] ?? 0) + 1;
    return Text('${model['label']}');
  }
}

Map<String, dynamic> button(String label, Map<String, dynamic> action) => {
  'type': 'elevatedButton',
  'child': {'type': 'text', 'data': label},
  'onPressed': action,
};

Map<String, dynamic> setValue(List<Map<String, dynamic>> values) => {
  'actionType': 'setValue',
  'values': values,
};

Map<String, dynamic> scope(
  Map<String, dynamic> state,
  Map<String, dynamic> child,
) => {'type': 'stateScope', 'state': state, 'child': child};

/// The text of every [Text] in tree order.
List<String> texts(WidgetTester tester) {
  return tester
      .widgetList<Text>(find.byType(Text))
      .map((text) => text.data ?? text.textSpan?.toPlainText() ?? '')
      .toList();
}

void main() {
  setUpAll(() async {
    await initStacForTests();
    StacRegistry.instance.register(const ItemProbeParser(), true);
  });
  setUp(ItemProbeParser.builds.clear);
  tearDown(Stac.state.clear);

  testWidgets('a column builds its template for each item after children', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp(
        scope(
          {
            'todos': [
              {'name': 'Milk'},
              {'name': 'Eggs'},
            ],
          },
          {
            'type': 'column',
            'children': [
              {'type': 'text', 'data': 'Todos'},
            ],
            'items': '{{todos}}',
            'itemTemplate': {
              'type': 'text',
              'data': r'{{$index + 1}}. {{$item.name}}',
            },
          },
        ),
      ),
    );

    expect(texts(tester), ['Todos', '1. Milk', '2. Eggs']);
  });

  testWidgets('items follow state, and only changed items rebuild', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp(
        scope(
          {
            'todos': [
              {'id': 'a', 'name': 'Milk'},
              {'id': 'b', 'name': 'Eggs'},
              {'id': 'c', 'name': 'Tea'},
            ],
          },
          {
            'type': 'column',
            'children': [
              {
                'type': 'column',
                'items': '{{todos}}',
                'itemTemplate': {
                  'type': 'itemProbe',
                  'id': r'{{$item.id}}',
                  'label': r'{{$item.name}}',
                },
              },
              button(
                'Rename',
                setValue([
                  {'path': 'todos[1].name', 'value': 'Bread'},
                ]),
              ),
              button(
                'Add',
                setValue([
                  {
                    'path': 'todos',
                    'op': 'append',
                    'value': {'id': 'd', 'name': 'Jam'},
                  },
                ]),
              ),
            ],
          },
        ),
      ),
    );
    expect(ItemProbeParser.builds, {'a': 1, 'b': 1, 'c': 1});

    await tester.tap(find.text('Rename'));
    await tester.pump();
    expect(find.text('Bread'), findsOneWidget);
    expect(ItemProbeParser.builds, {'a': 1, 'b': 2, 'c': 1});

    await tester.tap(find.text('Add'));
    await tester.pump();
    expect(find.text('Jam'), findsOneWidget);
    expect(ItemProbeParser.builds, {'a': 1, 'b': 2, 'c': 1, 'd': 1});
  });

  testWidgets('emptyWidget replaces the widget while items is empty', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp(
        scope(
          {'todos': <Object?>[]},
          {
            'type': 'column',
            'children': [
              {
                'type': 'listView',
                'shrinkWrap': true,
                'items': '{{todos}}',
                'itemTemplate': {'type': 'text', 'data': r'{{$item}}'},
                'emptyWidget': {'type': 'text', 'data': 'Nothing to do'},
              },
              {
                'type': 'column',
                'children': [
                  {'type': 'text', 'data': 'Static'},
                ],
                'items': '{{notLoaded}}',
                'itemTemplate': {'type': 'text', 'data': r'{{$item}}'},
                'emptyWidget': {'type': 'text', 'data': 'Never shown'},
              },
              button(
                'Add',
                setValue([
                  {'path': 'todos', 'op': 'append', 'value': 'Milk'},
                ]),
              ),
            ],
          },
        ),
      ),
    );
    expect(find.text('Nothing to do'), findsOneWidget);
    expect(find.text('Static'), findsOneWidget);
    expect(find.text('Never shown'), findsNothing);

    await tester.tap(find.text('Add'));
    await tester.pump();
    expect(find.text('Milk'), findsOneWidget);
    expect(find.text('Nothing to do'), findsNothing);
  });

  for (final (layout, keyPath) in [
    ('column', 'id'),
    ('listView', 'id'),
    ('column', null),
  ]) {
    final name = keyPath == null
        ? 'without a keyPath, $layout item state stays in place'
        : '$layout items with a keyPath keep their state when moved';
    testWidgets(name, (tester) async {
      await tester.pumpWidget(
        stacApp(
          scope(
            {
              'people': [
                {'id': 1, 'name': 'Ann'},
                {'id': 2, 'name': 'Bob'},
              ],
            },
            {
              'type': 'column',
              'children': [
                {
                  'type': 'sizedBox',
                  'height': 300,
                  'child': {
                    'type': layout,
                    'items': '{{people}}',
                    'keyPath': ?keyPath,
                    'itemTemplate': {
                      'type': 'row',
                      'children': [
                        {'type': 'text', 'data': r'{{$item.name}}'},
                        {
                          'type': 'expanded',
                          'child': {'type': 'textField'},
                        },
                      ],
                    },
                  },
                },
                button(
                  'Swap',
                  setValue([
                    {
                      'path': 'people',
                      'value': [
                        {'id': 2, 'name': 'Bob'},
                        {'id': 1, 'name': 'Ann'},
                      ],
                    },
                  ]),
                ),
              ],
            },
          ),
        ),
      );
      await tester.enterText(find.byType(TextField).first, 'note for Ann');
      await tester.tap(find.text('Swap'));
      await tester.pump();

      final names = texts(tester).where((t) => t == 'Ann' || t == 'Bob');
      expect(names, ['Bob', 'Ann']);
      final fields = tester.widgetList<TextField>(find.byType(TextField));
      expect(
        fields.map((field) => field.controller!.text),
        keyPath == null ? ['note for Ann', ''] : ['', 'note for Ann'],
      );
    });
  }

  testWidgets('a forEach puts its items between the widgets around it', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp(
        scope(
          {
            'tags': ['red', 'green'],
          },
          {
            'type': 'column',
            'children': [
              {'type': 'text', 'data': 'Start'},
              {
                'type': 'forEach',
                'items': '{{tags}}',
                'itemTemplate': {'type': 'text', 'data': r'#{{$item}}'},
              },
              {'type': 'text', 'data': 'End'},
              button(
                'More',
                setValue([
                  {'path': 'tags', 'op': 'append', 'value': 'blue'},
                ]),
              ),
            ],
          },
        ),
      ),
    );
    expect(texts(tester), ['Start', '#red', '#green', 'End', 'More']);

    await tester.tap(find.text('More'));
    await tester.pump();
    expect(texts(tester), ['Start', '#red', '#green', '#blue', 'End', 'More']);
  });

  testWidgets('a forEach fills slivers, and stands alone as a column', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'customScrollView',
        'slivers': [
          {
            'type': 'forEach',
            'items': ['A', 'B'],
            'itemTemplate': {
              'type': 'sliverToBoxAdapter',
              'child': {'type': 'text', 'data': r'Section {{$item}}'},
            },
          },
          {
            'type': 'sliverToBoxAdapter',
            'child': {
              'type': 'forEach',
              'items': [1, 2],
              'itemTemplate': {'type': 'text', 'data': r'Row {{$item}}'},
            },
          },
        ],
      }),
    );
    expect(texts(tester), ['Section A', 'Section B', 'Row 1', 'Row 2']);
  });

  testWidgets('lists inside items read their own items', (tester) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'items': [
          {
            'name': 'Ann',
            'tags': ['x', 'y'],
          },
          {'name': 'Bob', 'tags': <Object?>[]},
        ],
        'itemTemplate': {
          'type': 'column',
          'children': [
            {'type': 'text', 'data': r'{{$item.name}}'},
          ],
          'items': r'{{$item.tags}}',
          'itemTemplate': {
            'type': 'text',
            'data': r'tag {{$item}} #{{$index}}',
          },
          'emptyWidget': {'type': 'text', 'data': 'no tags'},
        },
      }),
    );
    expect(texts(tester), ['Ann', 'tag x #0', 'tag y #1', 'no tags']);
  });

  testWidgets('actions in an item read that item', (tester) async {
    await tester.pumpWidget(
      stacApp(
        scope(
          {
            'selected': 'none',
            'fruits': [
              {'name': 'Apple'},
              {'name': 'Pear'},
            ],
          },
          {
            'type': 'column',
            'children': [
              {'type': 'text', 'data': 'Selected {{selected}}'},
              {
                'type': 'column',
                'items': '{{fruits}}',
                'itemTemplate': button(
                  r'Pick {{$item.name}}',
                  setValue([
                    {
                      'path': 'selected',
                      'value': r'{{$item.name}} at {{$index}}',
                    },
                  ]),
                ),
              },
            ],
          },
        ),
      ),
    );
    await tester.tap(find.text('Pick Pear'));
    await tester.pump();
    expect(find.text('Selected Pear at 1'), findsOneWidget);
  });

  testWidgets('follow-up actions read the item after it is removed', (
    tester,
  ) async {
    await tester.pumpWidget(
      stacApp(
        scope(
          {
            'fruits': [
              {'name': 'Apple'},
              {'name': 'Pear'},
            ],
          },
          {
            'type': 'column',
            'items': '{{fruits}}',
            'itemTemplate': button(r'Remove {{$item.name}}', {
              'actionType': 'multiAction',
              'sync': true,
              'actions': [
                setValue([
                  {'path': 'fruits', 'op': 'remove', 'value': r'{{$item}}'},
                ]),
                {'actionType': 'delay', 'milliseconds': 100},
                setValue([
                  {'path': r'$app.removed', 'value': r'{{$item.name}}'},
                ]),
              ],
            }),
          },
        ),
      ),
    );
    await tester.tap(find.text('Remove Pear'));
    await tester.pump();
    expect(find.text('Remove Pear'), findsNothing);
    await tester.pump(const Duration(milliseconds: 200));
    expect(Stac.state.get('removed'), 'Pear');
  });

  testWidgets('a dialog opened from an item reads that item', (tester) async {
    await tester.pumpWidget(
      stacApp({
        'type': 'column',
        'items': [
          {'name': 'Apple'},
        ],
        'itemTemplate': button(r'Open {{$item.name}}', {
          'actionType': 'showDialog',
          'widget': {
            'type': 'alertDialog',
            'content': {'type': 'text', 'data': r'Details of {{$item.name}}'},
          },
        }),
      }),
    );
    await tester.tap(find.text('Open Apple'));
    await tester.pumpAndSettle();
    expect(find.text('Details of Apple'), findsOneWidget);
  });

  testWidgets('every layout with children accepts items', (tester) async {
    const template = {'type': 'text', 'data': r'Item {{$item}}'};
    Map<String, dynamic> withItems(Map<String, dynamic> json) => {
      ...json,
      'items': ['a', 'b'],
      'itemTemplate': template,
    };
    Map<String, dynamic> sized(Map<String, dynamic> child) => {
      'type': 'sizedBox',
      'height': 200,
      'width': 400,
      'child': child,
    };
    final layouts = <String, (Map<String, dynamic>, List<String>)>{
      'row': (withItems({'type': 'row'}), ['Item a', 'Item b']),
      'wrap': (withItems({'type': 'wrap'}), ['Item a', 'Item b']),
      'gridView': (
        withItems({'type': 'gridView', 'crossAxisCount': 2}),
        ['Item a', 'Item b'],
      ),
      'sliverList and sliverGrid': (
        {
          'type': 'customScrollView',
          'slivers': [
            withItems({'type': 'sliverList'}),
            withItems({'type': 'sliverGrid', 'crossAxisCount': 2}),
          ],
        },
        ['Item a', 'Item b', 'Item a', 'Item b'],
      ),
      'pageView': (sized(withItems({'type': 'pageView'})), ['Item a']),
      'carouselView': (
        sized(withItems({'type': 'carouselView', 'itemExtent': 300})),
        ['Item a', 'Item b'],
      ),
      'tabBarView': (
        {
          'type': 'defaultTabController',
          'length': 2,
          'child': sized(withItems({'type': 'tabBarView'})),
        },
        ['Item a'],
      ),
    };
    for (final MapEntry(key: name, value: (json, expected))
        in layouts.entries) {
      await tester.pumpWidget(const SizedBox());
      await tester.pumpWidget(stacApp(json));
      await tester.pumpAndSettle();
      expect(texts(tester), expected, reason: name);
    }
  });

  testWidgets('a page change reports the page item', (tester) async {
    await tester.pumpWidget(
      stacApp(
        scope(
          {'current': 'a'},
          {
            'type': 'column',
            'children': [
              {'type': 'text', 'data': 'Current {{current}}'},
              {
                'type': 'sizedBox',
                'height': 200,
                'child': {
                  'type': 'pageView',
                  'items': ['a', 'b'],
                  'itemTemplate': {'type': 'text', 'data': r'Page {{$item}}'},
                  'onPageChanged': setValue([
                    {'path': 'current', 'value': r'{{$item}} ({{$value}})'},
                  ]),
                },
              },
            ],
          },
        ),
      ),
    );
    await tester.drag(find.byType(PageView), const Offset(-600, 0));
    await tester.pumpAndSettle();
    expect(find.text('Current b (1)'), findsOneWidget);
  });
}
