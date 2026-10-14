import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

void main() {
  test('reads and writes nested paths', () {
    final store = StacStore({'count': 1});
    store.set('user.name', 'Ann');
    store.set('user.tags', ['a']);
    store.set('user.tags[1]', 'b');
    expect(store.get('user.name'), 'Ann');
    expect(store.get('user.tags'), ['a', 'b']);
    expect(store.get("user['name']"), 'Ann');
    expect(store.contains('user.email'), isFalse);
    expect(store.get('count'), 1);
  });

  test('writing null removes the value', () {
    final store = StacStore({
      'a': 1,
      'b': {'c': 2, 'd': 3},
    });
    store.set('a', null);
    store.remove('b.c');
    expect(store.data, {
      'b': {'d': 3},
    });
  });

  test('changes copy only the containers along the path', () {
    final store = StacStore({
      'left': {'x': 1},
      'right': {'y': 2},
    });
    final left = store.data['left'];
    final right = store.data['right'];
    store.set('left.x', 5);
    expect(identical(store.data['right'], right), isTrue);
    expect(identical(store.data['left'], left), isFalse);
    expect(left, {'x': 1});
  });

  test('stored values cannot be modified', () {
    final source = {
      'items': [1, 2],
    };
    final store = StacStore(source);
    source['items']!.add(3);
    expect(store.get('items'), [1, 2]);
    expect(() => (store.get('items') as List).add(4), throwsUnsupportedError);
  });

  test('notifies only when something changed', () {
    final store = StacStore({'a': 1});
    var notifications = 0;
    store.addListener(() => notifications++);
    store.set('a', 1);
    store.set('b', [1, 2]);
    store.set('b', [1, 2]);
    store.set('a', 2);
    expect(notifications, 2);
  });

  test('a path listenable notifies only for its path', () {
    final store = StacStore();
    final count = store.listenable('count');
    var notifications = 0;
    count.addListener(() => notifications++);
    store.set('other', 1);
    store.set('count', 1);
    store.set('count', 1);
    store.update('count', (value) => (value as int) + 1);
    expect(notifications, 2);
    expect(count.value, 2);
  });

  test('setKey keeps dots in the name', () {
    final store = StacStore();
    store.setKey('user.name', 'Flat');
    expect(store.data, {'user.name': 'Flat'});
    expect(store.removeKey('user.name'), 'Flat');
    expect(store.data, isEmpty);
  });

  test('rejects paths that are not plain paths', () {
    final store = StacStore();
    expect(() => store.set('a + b', 1), throwsArgumentError);
    expect(() => store.set('items[5]', 1), returnsNormally);
    expect(() => store.set('items[5]', 1), returnsNormally);
    store.set('list', [1]);
    expect(() => store.set('list[3]', 1), throwsRangeError);
  });
}
