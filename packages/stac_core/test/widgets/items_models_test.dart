import 'package:stac_core/stac_core.dart';
import 'package:test/test.dart';

void main() {
  test('layout widgets read items, itemTemplate, emptyWidget and keyPath', () {
    final template = {'type': 'text', 'data': r'{{$item.name}}'};
    final empty = {'type': 'text', 'data': 'Nothing yet'};
    final json = {
      'items': '{{todos}}',
      'itemTemplate': template,
      'emptyWidget': empty,
      'keyPath': 'id',
    };
    final models = <StacWidget>[
      StacColumn.fromJson(json),
      StacRow.fromJson(json),
      StacWrap.fromJson(json),
      StacListView.fromJson(json),
      StacGridView.fromJson(json),
      StacSliverList.fromJson(json),
      StacSliverGrid.fromJson(json),
      StacPageView.fromJson(json),
      StacCarouselView.fromJson(json),
      StacTabBarView.fromJson(json),
    ];
    for (final model in models) {
      final out = model.toJson();
      expect(out['items'], '{{todos}}', reason: model.type);
      expect(identical(out['itemTemplate'], template), isTrue);
      expect(identical(out['emptyWidget'], empty), isTrue);
      expect(out['keyPath'], 'id');
    }
  });

  test('a tab bar view no longer needs children', () {
    final model = StacTabBarView.fromJson({
      'items': [1, 2],
      'itemTemplate': {'type': 'text', 'data': r'{{$item}}'},
    });
    expect(model.children, isEmpty);
    expect(model.items, [1, 2]);
  });

  test('forEach, dataProvider and refetch round-trip', () {
    final forEach = StacForEach.fromJson({
      'items': const ['a', 'b'],
      'itemTemplate': {'type': 'text', 'data': r'{{$item}}'},
    });
    expect(forEach.type, 'forEach');
    expect(forEach.toJson()['items'], ['a', 'b']);

    final provider = StacDataProvider.fromJson({
      'id': 'movies',
      'request': {'url': 'https://example.com/movies', 'method': 'get'},
      'targetPath': 'results',
      'child': {'type': 'text', 'data': '{{movies.data.length}}'},
    });
    expect(provider.type, 'dataProvider');
    expect(provider.request.url, 'https://example.com/movies');
    expect(provider.toJson()['targetPath'], 'results');

    const refetch = StacRefetchAction(id: 'movies');
    expect(refetch.toJson(), {'id': 'movies', 'actionType': 'refetch'});
    expect(StacRefetchAction.fromJson(refetch.toJson()).id, 'movies');
  });

  test('the DSL writes items like JSON does', () {
    final list = StacListView(
      items: '{{movies.data}}',
      keyPath: 'id',
      itemTemplate: StacText(data: r'{{$item.title}}'),
      emptyWidget: StacText(data: 'No movies'),
    );
    final json = list.toJson();
    expect(json['type'], 'listView');
    expect(json['items'], '{{movies.data}}');
    expect(json['itemTemplate']['type'], 'text');
    expect(json['itemTemplate']['data'], r'{{$item.title}}');
    expect(json['emptyWidget']['data'], 'No movies');
  });
}
