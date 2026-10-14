import 'package:stac_core/stac_core.dart';
import 'package:test/test.dart';

void main() {
  final resolver = StacJsonResolver();
  final scope = StacMapScopeReader({
    'name': 'Ann',
    'count': 2,
    'show': true,
    'user': {'city': 'Pune'},
  });

  group('resolveNode', () {
    test('resolves own properties with the types the model expects', () {
      final json = {
        'type': 'text',
        'data': '{{count}}',
        'maxLines': '{{count}}',
        'softWrap': '{{show}}',
        'style': {'fontSize': '{{count * 7}}', 'color': '{{user.city}}'},
      };
      expect(resolver.resolveNode(json, scope), {
        'type': 'text',
        'data': '2',
        'maxLines': 2,
        'softWrap': true,
        'style': {'fontSize': 14.0, 'color': 'Pune'},
      });
    });

    test('mixed text stays text', () {
      final json = {'type': 'text', 'data': 'Hi {{name}}, {{count}} new'};
      expect(resolver.resolveNode(json, scope)['data'], 'Hi Ann, 2 new');
    });

    test(
      'keeps nested widgets, actions and templates as the same instances',
      () {
        final child = {'type': 'text', 'data': '{{name}}'};
        final action = {'actionType': 'navigate', 'routeName': '{{name}}'};
        final itemTemplate = {'type': 'text', 'data': '{{title}}'};
        final json = {
          'type': 'elevatedButton',
          'child': child,
          'onPressed': action,
          'itemTemplate': itemTemplate,
        };
        final result = resolver.resolveNode(json, scope);
        expect(identical(result, json), isTrue);
        expect(identical(result['child'], child), isTrue);
      },
    );

    test('leaves conditions, setValue values and stateScope state alone', () {
      for (final json in [
        {'type': 'conditional', 'condition': '{{count}} > 1'},
        {
          'type': 'setValue',
          'values': [
            {'key': 'x', 'value': '{{count}}'},
          ],
        },
        {
          'type': 'stateScope',
          'state': {'x': '{{count}}'},
        },
      ]) {
        expect(identical(resolver.resolveNode(json, scope), json), isTrue);
      }
    });

    test('unknown widget types interpolate text', () {
      final json = {'type': 'myWidget', 'count': '{{count}}'};
      expect(resolver.resolveNode(json, scope)['count'], '2');
    });

    test('keeps plain paths to unset variables as written in text', () {
      final json = {'type': 'text', 'data': '{{nickname}}'};
      expect(resolver.resolveNode(json, scope)['data'], '{{nickname}}');
    });

    test('typed fields read unset variables as null', () {
      final json = {'type': 'visibility', 'visible': '{{hidden}}'};
      expect(resolver.resolveNode(json, scope)['visible'], isNull);
    });
  });

  group('hasBindings', () {
    test('finds placeholders in own properties only', () {
      expect(resolver.hasBindings({'type': 'text', 'data': 'plain'}), isFalse);
      expect(resolver.hasBindings({'type': 'text', 'data': '{{x}}'}), isTrue);
      expect(
        resolver.hasBindings({
          'type': 'center',
          'child': {'type': 'text', 'data': '{{x}}'},
        }),
        isFalse,
      );
      expect(
        resolver.hasBindings({
          'type': 'text',
          'data': 'x',
          'style': {'color': '{{c}}'},
        }),
        isTrue,
      );
    });

    test('conditions always need resolving', () {
      expect(
        resolver.hasBindings({'type': 'conditional', 'condition': 'a > 1'}),
        isTrue,
      );
    });

    test('a forEach in a list of widgets needs its parent to resolve', () {
      expect(
        resolver.hasBindings({
          'type': 'column',
          'children': [
            {'type': 'text', 'data': 'Title'},
            {
              'type': 'forEach',
              'items': '{{todos}}',
              'itemTemplate': {'type': 'text', 'data': r'{{$item}}'},
            },
          ],
        }),
        isTrue,
      );
    });

    test('item templates are not part of the node', () {
      expect(
        resolver.hasBindings({
          'type': 'listView',
          'items': const [1, 2],
          'itemTemplate': {'type': 'text', 'data': r'{{$item}}'},
        }),
        isFalse,
      );
    });
  });

  group('resolveAction', () {
    final widgetResolver = StacJsonResolver(
      isWidgetType: (type) => type == 'text',
    );

    test('resolves the action but not nested actions or widgets', () {
      final json = {
        'actionType': 'networkRequest',
        'url': 'https://example.com/users/{{name}}',
        'headers': {'X-Count': '{{count}}'},
        'results': [
          {
            'statusCode': 200,
            'action': {'actionType': 'showSnackBar', 'message': '{{name}}'},
          },
        ],
        'body': {
          'count': '{{count}}',
          'widget': {'type': 'text', 'data': '{{name}}'},
        },
      };
      final result = widgetResolver.resolveAction(json, scope);
      expect(result['url'], 'https://example.com/users/Ann');
      expect(result['headers'], {'X-Count': 2});
      expect(result['body']['count'], 2);
      expect(
        (result['results'] as List).single['action']['message'],
        '{{name}}',
      );
      expect(result['body']['widget']['data'], '{{name}}');
    });

    test('keeps navigation arguments typed', () {
      final json = {
        'actionType': 'navigate',
        'routeName': 'detail',
        'arguments': {'id': '{{count}}', 'label': 'n={{count}}'},
      };
      expect(resolver.resolveAction(json, scope)['arguments'], {
        'id': 2,
        'label': 'n=2',
      });
    });

    test('leaves setValue values for the setValue parser', () {
      final json = {
        'actionType': 'setValue',
        'values': [
          {'key': 'count', 'value': '{{count + 1}}'},
        ],
      };
      expect(resolver.resolveAction(json, scope), json);
    });
  });

  group('resolveTemplate', () {
    test('fills item data, keeping actions and setValue to item data only', () {
      final item = StacMapScopeReader({
        'id': 7,
        'title': 'Dune',
        'price': null,
        'featured': true,
      });
      final both = StacMapScopeReader(item.values, parent: scope);
      final json = {
        'type': 'listTile',
        'title': {'type': 'text', 'data': '{{title}} ({{name}})'},
        'subtitle': {'type': 'text', 'data': "{{price ?? 'free'}}"},
        'trailing': {'type': 'conditional', 'condition': '{{price}} == null'},
        'leading': {'type': 'visibility', 'visible': '{{featured}}'},
        'onTap': {
          'actionType': 'setValue',
          'values': [
            {'key': 'selected', 'value': '{{id}}'},
            {'key': 'count', 'value': '{{count + 1}}'},
          ],
        },
      };
      final result =
          resolver.resolveTemplate(json, data: item, scope: both) as Map;
      expect(result['title']['data'], 'Dune (Ann)');
      expect(result['subtitle']['data'], 'free');
      expect(result['trailing']['condition'], 'null == null');
      expect(result['leading']['visible'], true);
      expect(result['onTap']['values'], [
        {'key': 'selected', 'value': '7'},
        {'key': 'count', 'value': '{{count + 1}}'},
      ]);
    });

    test('leaves nested item templates for their own items', () {
      final item = StacMapScopeReader({
        r'$item': {
          'name': 'Ann',
          'tags': ['a', 'b'],
        },
      });
      final nested = {'type': 'text', 'data': r'{{$item}}'};
      final json = {
        'type': 'column',
        'children': [
          {'type': 'text', 'data': r'{{$item.name}}'},
          {'type': 'row', 'items': r'{{$item.tags}}', 'itemTemplate': nested},
        ],
      };
      final result =
          resolver.resolveTemplate(json, data: item, scope: item) as Map;
      final children = result['children'] as List;
      expect(children[0]['data'], 'Ann');
      expect(children[1]['items'], ['a', 'b']);
      expect(identical(children[1]['itemTemplate'], nested), isTrue);
    });
  });

  group('resolveValue', () {
    test('preserves types recursively', () {
      expect(
        resolver.resolveValue({
          'n': '{{count + 1}}',
          'list': ['{{name}}', '{{count}}'],
          'label': 'n={{count}}',
        }, scope),
        {
          'n': 3,
          'list': ['Ann', 2],
          'label': 'n=2',
        },
      );
    });
  });
}
