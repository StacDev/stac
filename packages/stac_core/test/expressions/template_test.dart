import 'package:stac_core/stac_core.dart';
import 'package:test/test.dart';

Object? resolve(
  String template,
  Map<String, Object?> values, {
  StacTemplateMode mode = StacTemplateMode.text,
  bool deferMisses = false,
}) {
  return StacTemplate.parse(
    template,
  ).resolve(StacMapScopeReader(values), mode: mode, deferMisses: deferMisses);
}

void main() {
  group('scanning', () {
    test('splits literal text and placeholders', () {
      final template = StacTemplate.parse('Hi {{ name }}, {{n + 1}} new');
      expect(template.parts.length, 5);
      expect(template.placeholders.map((p) => p.source), ['name', 'n + 1']);
      expect(template.placeholders.first.offset, 3);
      expect(template.isSinglePlaceholder, isFalse);
    });

    test('braces inside quoted strings do not close a placeholder', () {
      final template = StacTemplate.parse("{{ 'a}}b' + x }}");
      expect(template.isSinglePlaceholder, isTrue);
      expect(template.placeholders.single.source, "'a}}b' + x");
    });

    test(
      'falls back to the first closing braces when quotes are unbalanced',
      () {
        final template = StacTemplate.parse("{{user's}} name");
        expect(template.placeholders.single.source, "user's");
        expect(template.placeholders.single.expression, isNull);
      },
    );

    test('recognises legacy data paths', () {
      final placeholder = StacTemplate.parse(
        '{{items[0].first-name}}',
      ).placeholders.single;
      expect(placeholder.legacyPath, ['items', '0', 'first-name']);
    });
  });

  group('text mode', () {
    test('interpolates values', () {
      expect(
        resolve('{{greeting}}, {{user.name}}! {{count * 2}}', {
          'greeting': 'Hello',
          'user': {'name': 'Ann'},
          'count': 4,
        }),
        'Hello, Ann! 8',
      );
    });

    test('keeps plain paths to nothing as written', () {
      expect(resolve('{{name}} and {{a.b}}', {}), '{{name}} and {{a.b}}');
    });

    test('evaluates expressions with missing values as null', () {
      expect(resolve("{{name ?? 'guest'}}", {}), 'guest');
      expect(resolve('{{missing}}!', {'missing': null}), '!');
    });

    test('keeps placeholders that fail to evaluate and reports them', () {
      final errors = <String>[];
      final result = StacTemplate.parse("{{'a' - 1}}").resolve(
        const StacEmptyScopeReader(),
        onError: (placeholder, error) => errors.add(placeholder.raw),
      );
      expect(result, "{{'a' - 1}}");
      expect(errors, ["{{'a' - 1}}"]);
    });

    test('keeps placeholders that are not expressions', () {
      expect(resolve('{{ Some Title }}', {}), '{{ Some Title }}');
    });

    test('reads a whole-placeholder key before the expression', () {
      // Legacy flat keys set with setValue.
      expect(resolve('{{user.name}}', {'user.name': 'Flat'}), 'Flat');
      expect(resolve('{{first-name}}', {'first-name': 'Ann'}), 'Ann');
    });

    test('reads legacy data paths with characters expressions reject', () {
      expect(
        resolve('{{user.first-name}}', {
          'user': {'first-name': 'Ann'},
        }),
        'Ann',
      );
    });

    test('evaluates path-shaped text as an expression when no key matches', () {
      expect(resolve('{{count-1}}', {'count': 5}), '4');
    });

    test('deferring keeps placeholders with any miss', () {
      expect(
        resolve("{{flag ? 'on' : 'off'}} {{known}}", {
          'known': 1,
        }, deferMisses: true),
        "{{flag ? 'on' : 'off'}} 1",
      );
    });
  });

  group('typed mode', () {
    test('a single placeholder keeps its type', () {
      expect(
        resolve('{{count + 1}}', {'count': 1}, mode: StacTemplateMode.typed),
        2,
      );
      expect(
        resolve('{{items}}', {
          'items': [1, 2],
        }, mode: StacTemplateMode.typed),
        [1, 2],
      );
      expect(
        resolve('{{!on}}', {'on': true}, mode: StacTemplateMode.typed),
        false,
      );
    });

    test('plain paths to nothing resolve to null', () {
      expect(resolve('{{response}}', {}, mode: StacTemplateMode.typed), isNull);
    });

    test('mixed text interpolates', () {
      expect(
        resolve('n={{count}}', {'count': 1}, mode: StacTemplateMode.typed),
        'n=1',
      );
    });
  });

  group('expression mode', () {
    test('renders values as literals', () {
      expect(
        resolve("{{name}} == 'Ann Lee' && {{n}} > 1 && {{tags}} != null", {
          'name': 'Ann Lee',
          'n': 2,
          'tags': ['a'],
        }, mode: StacTemplateMode.expression),
        "'Ann Lee' == 'Ann Lee' && 2 > 1 && ['a'] != null",
      );
    });

    test('missing values render as null', () {
      expect(
        resolve('{{token}} == null', {}, mode: StacTemplateMode.expression),
        'null == null',
      );
    });

    test('quotes are escaped', () {
      expect(
        resolve('{{s}}', {'s': "it's"}, mode: StacTemplateMode.expression),
        r"'it\'s'",
      );
    });
  });
}
