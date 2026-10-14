import 'package:stac_core/stac_core.dart';
import 'package:test/test.dart';

Object? eval(String source, [Map<String, Object?> values = const {}]) {
  return StacExpression.parse(source).evaluate(StacMapScopeReader(values));
}

void main() {
  group('cases the previous resolver evaluated wrongly', () {
    // These come from stac_playground/assets/json/conditional_example.json
    // and docs/widgets/conditional.mdx.
    test('parentheses and precedence', () {
      expect(eval('(10 + 5) * 2 == 30'), isTrue);
    });

    test('grouped logical operators', () {
      expect(eval('true && (false || true)'), isTrue);
    });

    test('string literals containing operators', () {
      expect(eval("'a-b' == 'a-b'"), isTrue);
    });

    test('length of a variable', () {
      expect(
        eval('items.length > 0', {
          'items': [1, 2],
        }),
        isTrue,
      );
      expect(eval('items.length > 0', {'items': []}), isFalse);
      expect(eval('items.length > 0'), isFalse);
    });
  });

  group('golden table', () {
    final cases = <String, Object?>{
      '1 + 2 * 3': 7,
      '(1 + 2) * 3': 9,
      '10 - 2 - 3': 5,
      '-5 + 10': 5,
      '2 * -3': -6,
      '7 / 2': 3.5,
      '6 / 3': 2,
      '7 % 3': 1,
      '1.5e2': 150.0,
      '.5 + .5': 1.0,
      '5 > 3': true,
      '3 >= 3': true,
      '2 < 1': false,
      '1 != 2': true,
      '!true': false,
      '!!1': true,
      'true || false && false': true,
      '(true || false) && false': false,
      'null ?? 3': 3,
      '1 ?? 3': 1,
      'null ?? null ?? 4': 4,
      "true ? 'yes' : 'no'": 'yes',
      "false ? 'a' : true ? 'b' : 'c'": 'b',
      "1 > 2 == false": true,
      "'a' + 'b'": 'ab',
      "'n=' + 4": 'n=4',
      "'x' + null": 'x',
      '[1, 2] + [3]': [1, 2, 3],
      '[1, 2][1]': 2,
      '[1, 2][-1]': 2,
      "'abc'[0]": 'a',
      "'abc'.length": 3,
      '"double \\"quoted\\""': 'double "quoted"',
      "'it\\'s'": "it's",
      '5 == "5"': true,
      'true == "true"': true,
      '"10" > 9': true,
      '"10" > "9"': true,
      '"b" > "a"': true,
      'null > 1': false,
      '[1, [2]] == [1, [2]]': true,
    };
    cases.forEach((source, expected) {
      test(source, () => expect(eval(source), equals(expected)));
    });
  });

  group('variables', () {
    final scope = {
      'user': {
        'name': 'Ann',
        'tags': ['a', 'b'],
        'address': {'city': 'Pune'},
      },
      'count': 3,
      'items': [
        {'title': 'First'},
        {'title': 'Second'},
      ],
      r'$value': 'typed',
    };

    test('paths, indexes and computed members', () {
      expect(eval('user.name', scope), 'Ann');
      expect(eval('user.address.city', scope), 'Pune');
      expect(eval('user.tags[1]', scope), 'b');
      expect(eval('items[0].title', scope), 'First');
      expect(eval('items.1.title', scope), 'Second');
      expect(eval('items[count - 2].title', scope), 'Second');
      expect(eval("user['name']", scope), 'Ann');
      expect(eval('user.tags.last', scope), 'b');
      expect(eval(r'$value', scope), 'typed');
    });

    test('missing values are null and count as misses', () {
      final evaluation = const StacExpressionEvaluator().evaluateDetailed(
        StacExpression.parse('user.email ?? missing ?? "none"').node,
        StacMapScopeReader(scope),
      );
      expect(evaluation.value, 'none');
      expect(evaluation.misses, 2);
    });

    test('member access on null is null', () {
      expect(eval('nothing.deep.path'), isNull);
      expect(eval('nothing?.deep'), isNull);
    });

    test('numeric strings take part in arithmetic and comparison', () {
      expect(eval('price * qty', {'price': '2.5', 'qty': 4}), 10.0);
      expect(eval('id > 100', {'id': '123'}), isTrue);
    });

    test('a scope chain reads the inner scope first', () {
      final outer = StacMapScopeReader({'a': 1, 'b': 2});
      final inner = StacMapScopeReader({'a': 10}, parent: outer);
      expect(StacExpression.parse('a + b').evaluate(inner), 12);
    });
  });

  group('bareword strings', () {
    const evaluator = StacExpressionEvaluator(barewordStrings: true);

    test('an unbound bare identifier reads as its own name', () {
      final evaluation = evaluator.evaluateDetailed(
        StacExpression.parse('Flutter == Flutter').node,
        const StacEmptyScopeReader(),
      );
      expect(evaluation.value, isTrue);
      expect(evaluation.barewords, ['Flutter', 'Flutter']);
      expect(
        evaluator.evaluate(StacExpression.parse('Flutter == Dart').node),
        isFalse,
      );
    });

    test('paths are never barewords', () {
      expect(
        evaluator.evaluate(StacExpression.parse('items.length > 0').node),
        isFalse,
      );
    });

    test('bound identifiers keep their value', () {
      expect(
        evaluator.evaluate(
          StacExpression.parse('status == active').node,
          StacMapScopeReader({'status': 'active'}),
        ),
        isTrue,
      );
    });
  });

  group('errors', () {
    void expectError(String source, String message) {
      expect(
        () => eval(source),
        throwsA(
          isA<StacExpressionException>().having(
            (e) => e.message,
            'message',
            contains(message),
          ),
        ),
      );
    }

    test('type errors', () {
      expectError("'a' - 1", "Operator '-' needs numbers");
      expectError('-"x"', 'Cannot negate a string');
      expectError('null + 1', 'Cannot add null and a number');
    });

    test('division by zero', () {
      expectError('1 / 0', 'Division by zero');
      expectError('1 % 0', 'Division by zero');
    });

    test('unknown functions', () {
      expectError('launch()', "Unknown function 'launch'");
    });

    test('errors carry the offset of the failing node', () {
      try {
        eval('1 + (2 - "x")');
        fail('expected an exception');
      } on StacExpressionException catch (e) {
        expect(e.offset, 5);
        expect(e.source, '1 + (2 - "x")');
      }
    });
  });
}
