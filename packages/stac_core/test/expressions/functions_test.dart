import 'package:stac_core/stac_core.dart';
import 'package:test/test.dart';

Object? eval(String source, [Map<String, Object?> values = const {}]) {
  return StacExpression.parse(source).evaluate(StacMapScopeReader(values));
}

void main() {
  final cases = <String, Object?>{
    "length('abc')": 3,
    'length([1, 2])': 2,
    'length(missing)': 0,
    'isEmpty([])': true,
    "isNotEmpty('a')": true,
    "contains('hello', 'ell')": true,
    'contains([1, 2], 2)': true,
    "contains([1, 2], '2')": true,
    "startsWith('stac', 'st')": true,
    "endsWith('stac', 'ac')": true,
    "upper('ab')": 'AB',
    "'Ab'.lower()": 'ab',
    "trim('  x ')": 'x',
    "replace('a-b-c', '-', '+')": 'a+b+c',
    "substring('hello', 1, 3)": 'el',
    "substring('hello', 3)": 'lo',
    "split('a,b', ',')": ['a', 'b'],
    "join(['a', 'b'], ', ')": 'a, b',
    "concat('a', 1, null, true)": 'a1true',
    'first([3, 4])': 3,
    'last([3, 4])': 4,
    'first([])': null,
    'abs(-2)': 2,
    'floor(2.7)': 2,
    'ceil(2.1)': 3,
    'round(2.5)': 3,
    'min(3, 1, 2)': 1,
    'max([3, 1, 2])': 3,
    'clamp(15, 0, 10)': 10,
    "toInt('42')": 42,
    'toInt(3.9)': 3,
    "toInt('abc')": null,
    "toDouble('2')": 2.0,
    'toString(12)': '12',
    'toFixed(3.14159, 2)': '3.14',
    '(19.5).toFixed(0)': '20',
    'coalesce(null, null, 3)': 3,
    'typeOf([])': 'list',
    'typeOf(null)': 'null',
  };
  cases.forEach((source, expected) {
    test(source, () => expect(eval(source), equals(expected)));
  });

  test('map functions', () {
    final scope = {
      'user': {'a': 1, 'b': 2},
    };
    expect(eval('keys(user)', scope), ['a', 'b']);
    expect(eval('user.values()', scope), [1, 2]);
    expect(eval("contains(user, 'a')", scope), isTrue);
  });

  test('arity and type errors', () {
    expect(() => eval('upper()'), throwsA(isA<StacExpressionException>()));
    expect(
      () => eval("abs('x')"),
      throwsA(
        isA<StacExpressionException>().having(
          (e) => e.message,
          'message',
          "'abs' expects a number but got a string",
        ),
      ),
    );
    expect(() => eval('min([])'), throwsA(isA<StacExpressionException>()));
  });
}
