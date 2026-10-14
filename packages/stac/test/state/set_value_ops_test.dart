import 'package:flutter_test/flutter_test.dart';
import 'package:stac/src/state/stac_state_writer.dart';
import 'package:stac/stac.dart';

void apply(List<Map<String, dynamic>> entries) {
  StacStateWriter.apply(null, entries);
}

void main() {
  tearDown(Stac.state.clear);

  test('set, and set null removes', () {
    apply([
      {'path': 'a', 'value': 1},
      {'path': 'b', 'value': '{{a + 1}}'},
    ]);
    expect(Stac.state.data, {'a': 1, 'b': 2});
    apply([
      {'path': 'a', 'value': null},
    ]);
    expect(Stac.state.data, {'b': 2});
  });

  test('toggle, increment and decrement', () {
    apply([
      {'path': 'on', 'op': 'toggle'},
      {'path': 'count', 'op': 'increment'},
      {'path': 'count', 'op': 'increment', 'value': 5},
      {'path': 'stock', 'value': '10'},
      {'path': 'stock', 'op': 'decrement', 'value': 3},
    ]);
    expect(Stac.state.data, {'on': true, 'count': 6, 'stock': 7});
  });

  test('append, remove and merge', () {
    apply([
      {'path': 'cart', 'op': 'append', 'value': 'apple'},
      {'path': 'cart', 'op': 'append', 'value': 'pear'},
      {'path': 'cart', 'op': 'append', 'value': 'apple'},
      {'path': 'cart', 'op': 'remove', 'value': 'apple'},
      {
        'path': 'filters',
        'op': 'merge',
        'value': {'sort': 'date'},
      },
      {
        'path': 'filters',
        'op': 'merge',
        'value': {'page': 2},
      },
    ]);
    expect(Stac.state.data, {
      'cart': ['pear'],
      'filters': {'sort': 'date', 'page': 2},
    });
  });

  test('delete removes a nested value', () {
    Stac.state.set('user', {'name': 'Ann', 'email': 'a@b.c'});
    apply([
      {'path': 'user.email', 'op': 'delete'},
    ]);
    expect(Stac.state.data, {
      'user': {'name': 'Ann'},
    });
  });

  test('key keeps the whole string as the name', () {
    apply([
      {'key': 'order.status', 'value': 'paid'},
    ]);
    expect(Stac.state.data, {'order.status': 'paid'});
  });

  test('skips invalid entries', () {
    apply([
      {'path': 'a +', 'value': 1},
      {'path': r'$args.id', 'value': 1},
      {'path': 'x', 'op': 'explode'},
      {'value': 1},
      {'path': 'ok', 'value': true},
    ]);
    expect(Stac.state.data, {'ok': true});
  });
}
