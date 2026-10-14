import 'package:stac_core/stac_core.dart';
import 'package:test/test.dart';

void main() {
  test('accepts valid placeholders, legacy paths and conditions', () {
    final issues = validateStacExpressions({
      'type': 'column',
      'children': [
        {'type': 'text', 'data': "{{user.name ?? 'guest'}} {{first-name}}"},
        {'type': 'conditional', 'condition': "{{count}} > 2 && mode == 'x'"},
        {'type': 'text', 'data': 'plain text'},
      ],
    });
    expect(issues, isEmpty);
  });

  test('reports placeholders that do not parse with their path', () {
    final issues = validateStacExpressions({
      'type': 'scaffold',
      'body': {
        'type': 'column',
        'children': [
          {'type': 'text', 'data': 'Total: {{price *}}'},
        ],
      },
    });
    expect(issues, hasLength(1));
    expect(issues.single.path, 'body.children[0].data');
    expect(issues.single.expression, '{{price *}}');
    expect(issues.single.offset, 9);
  });

  test('reports conditions that do not parse', () {
    final issues = validateStacExpressions({
      'type': 'conditional',
      'condition': '{{name}} == John Doe',
    });
    expect(issues, hasLength(1));
    expect(issues.single.path, 'condition');
    expect(issues.single.message, contains("Unexpected 'Doe'"));
  });

  test('checks state paths', () {
    final issues = validateStacExpressions({
      'type': 'column',
      'children': [
        {'type': 'textField', 'bind': 'user name'},
        {'type': 'switch', 'bind': r'$app.settings.dark'},
        {
          'type': 'elevatedButton',
          'onPressed': {
            'actionType': 'networkRequest',
            'url': 'https://example.com',
            'saveTo': r'$args.user',
            'targetPath': 'data.items[0]',
            'onSuccess': {
              'actionType': 'setValue',
              'values': [
                {'path': 'count +', 'value': 1},
                {'path': r'$screen'},
                {'path': 'answers.{{id}}', 'value': 1},
                {'key': 'legacy key', 'value': 1},
              ],
            },
          },
        },
      ],
    });
    expect(issues.map((issue) => issue.path), [
      'children[0].bind',
      'children[2].onPressed.saveTo',
      'children[2].onPressed.onSuccess.values[0].path',
      'children[2].onPressed.onSuccess.values[1].path',
    ]);
    expect(issues[1].message, r'$args is read-only');
    expect(issues[3].message, r'Needs a name after $screen');
  });

  test('checks list key paths and data provider names', () {
    final issues = validateStacExpressions({
      'type': 'dataProvider',
      'id': 'top movies',
      'request': {'url': 'https://example.com'},
      'targetPath': 'results',
      'child': {
        'type': 'column',
        'children': [
          {
            'type': 'listView',
            'items': '{{movies.data}}',
            'keyPath': 'id',
            'itemTemplate': {'type': 'text', 'data': r'{{$item.title}}'},
          },
          {
            'type': 'forEach',
            'items': '{{movies.data}}',
            'keyPath': r'$item.id',
            'itemTemplate': {'type': 'text', 'data': r'{{$item.title}}'},
          },
          {
            'type': 'elevatedButton',
            'onPressed': {'actionType': 'refetch', 'id': 'movies'},
          },
          {
            'type': 'elevatedButton',
            'onPressed': {'actionType': 'refetch', 'id': r'$movies'},
          },
        ],
      },
    });
    expect(issues.map((issue) => issue.path), [
      'id',
      'child.children[1].keyPath',
      'child.children[3].onPressed.id',
    ]);
    expect(issues[1].message, contains('without \$item'));
  });
}
