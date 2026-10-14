import 'package:stac_core/stac_core.dart';
import 'package:test/test.dart';

bool holds(String condition, [Map<String, Object?> values = const {}]) {
  return evaluateStacCondition(condition, StacMapScopeReader(values)).value;
}

void main() {
  test('conditions from the playground hold', () {
    for (final condition in [
      '5 > 3',
      'Flutter == Flutter',
      "'Flutter' == 'Flutter'",
      '(10 + 5) * 2 == 30',
      'true && (false || true)',
      '3 < 5',
      '10 > 8',
    ]) {
      expect(holds(condition), isTrue, reason: condition);
    }
  });

  test('variables are read directly', () {
    expect(
      holds('user.isLoggedIn == true', {
        'user': {'isLoggedIn': true},
      }),
      isTrue,
    );
    expect(
      holds('cart.total > 100', {
        'cart': {'total': 120},
      }),
      isTrue,
    );
    expect(holds('items.length > 0', {'items': []}), isFalse);
    expect(holds('user.name != null', {'user': {}}), isFalse);
  });

  test('placeholders are substituted as literals', () {
    expect(holds("{{name}} == 'Ann Lee'", {'name': 'Ann Lee'}), isTrue);
    expect(holds('{{count}} > 3', {'count': 5}), isTrue);
    expect(holds('{{id}} > 100', {'id': '123'}), isTrue);
    expect(holds('{{token}} == null'), isTrue);
    expect(holds('{{flag}}', {'flag': 'false'}), isFalse);
  });

  test('unquoted words are text, and reported', () {
    final result = evaluateStacCondition(
      '{{status}} == active',
      StacMapScopeReader({'status': 'active'}),
    );
    expect(result.value, isTrue);
    expect(result.barewords, ['active']);
    expect(holds('{{status}} == active', {'status': 'idle'}), isFalse);
  });

  test('invalid conditions are false and report an error', () {
    final result = evaluateStacCondition('a ==', const StacEmptyScopeReader());
    expect(result.value, isFalse);
    expect(result.error, isNotNull);
    expect(holds(''), isFalse);
  });
}
