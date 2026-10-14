import 'package:stac_core/stac_core.dart';
import 'package:test/test.dart';

StacExpressionNode parse(String source) => StacExpressionParser(source).parse();

void main() {
  group('lexer', () {
    test('tokenizes operators, literals and identifiers', () {
      final types = StacExpressionLexer(
        r"a.b?.c[0] >= 1.5 && $value != 'x' ?? -2",
      ).tokenize().map((t) => t.type).toList();
      expect(types, [
        StacTokenType.identifier,
        StacTokenType.dot,
        StacTokenType.identifier,
        StacTokenType.questionDot,
        StacTokenType.identifier,
        StacTokenType.leftBracket,
        StacTokenType.number,
        StacTokenType.rightBracket,
        StacTokenType.greaterEqual,
        StacTokenType.number,
        StacTokenType.ampersandAmpersand,
        StacTokenType.identifier,
        StacTokenType.bangEqual,
        StacTokenType.string,
        StacTokenType.questionQuestion,
        StacTokenType.minus,
        StacTokenType.number,
        StacTokenType.eof,
      ]);
    });

    test('numeric members after a dot are integer indexes', () {
      final tokens = StacExpressionLexer('matrix.0.1').tokenize();
      expect(tokens.map((t) => t.lexeme), ['matrix', '.', '0', '.', '1', '']);
    });

    test('rejects a single equals sign with a helpful message', () {
      expect(
        () => StacExpressionLexer('a = 1').tokenize(),
        throwsA(
          isA<StacExpressionException>()
              .having((e) => e.message, 'message', contains("'=='"))
              .having((e) => e.offset, 'offset', 2),
        ),
      );
    });

    test('rejects unterminated strings', () {
      expect(
        () => StacExpressionLexer("'open").tokenize(),
        throwsA(isA<StacExpressionException>()),
      );
    });
  });

  group('parser', () {
    test('binds * tighter than + and + tighter than ==', () {
      final node = parse('1 + 2 * 3 == 7') as StacBinaryNode;
      expect(node.operator, StacBinaryOperator.equal);
      final left = node.left as StacBinaryNode;
      expect(left.operator, StacBinaryOperator.add);
      expect(
        (left.right as StacBinaryNode).operator,
        StacBinaryOperator.multiply,
      );
    });

    test('?? is right associative and binds tighter than ?:', () {
      final node = parse('a ?? b ?? c ? 1 : 2') as StacConditionalNode;
      final coalesce = node.condition as StacBinaryNode;
      expect(coalesce.operator, StacBinaryOperator.nullCoalesce);
      expect(coalesce.right, isA<StacBinaryNode>());
    });

    test('method syntax calls a function with the receiver first', () {
      final node = parse('user.name.upper()') as StacCallNode;
      expect(node.name, 'upper');
      expect(stacStaticPath(node.arguments.single), ['user', 'name']);
    });

    test('static paths', () {
      expect(stacStaticPath(parse('a.b[0].c')), ['a', 'b', '0', 'c']);
      expect(stacStaticPath(parse("a['key']")), ['a', 'key']);
      expect(stacStaticPath(parse('a[i]')), isNull);
      expect(stacStaticPath(parse('a + b')), isNull);
    });

    test('reports syntax errors with offsets', () {
      final cases = <String, int>{
        '': 0,
        '1 +': 3,
        '(1 + 2': 6,
        'a b': 2,
        'f(1,': 4,
        'a ? b': 5,
        'a.': 2,
      };
      cases.forEach((source, offset) {
        expect(
          () => parse(source),
          throwsA(
            isA<StacExpressionException>().having(
              (e) => e.offset,
              'offset of "$source"',
              offset,
            ),
          ),
        );
      });
    });

    test('caches parsed expressions', () {
      expect(
        identical(StacExpression.parse('x + 1'), StacExpression.parse('x + 1')),
        isTrue,
      );
      expect(StacExpression.tryParse('x +'), isNull);
    });
  });
}
