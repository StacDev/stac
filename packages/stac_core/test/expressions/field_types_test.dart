import 'dart:io';

import 'package:stac_core/stac_core.dart';
import 'package:test/test.dart';

import '../../tool/generate_field_types.dart';

void main() {
  test('the field type table matches the models', () {
    final expected = generateFieldTypeTable(Directory.current.path);
    final actual = File(
      '${Directory.current.path}/$outputPath',
    ).readAsStringSync();
    expect(
      actual,
      expected,
      reason:
          'Run `dart run tool/generate_field_types.dart` in packages/stac_core.',
    );
  });

  test('widget and action types map to their models', () {
    expect(StacFieldType.widgetModel('text'), 'StacText');
    expect(StacFieldType.widgetModel('switch'), 'StacSwitch');
    expect(StacFieldType.actionModel('navigate'), 'StacNavigateAction');
    expect(StacFieldType.widgetModel('unknown'), isNull);
  });

  test('fields have the types of their models', () {
    expect(
      StacFieldType.field('StacSwitch', 'value')!.kind,
      StacFieldKind.boolean,
    );
    expect(StacFieldType.field('StacText', 'data')!.kind, StacFieldKind.text);
    expect(
      StacFieldType.field('StacText', 'maxLines')!.kind,
      StacFieldKind.integer,
    );
    expect(
      StacFieldType.field('StacSizedBox', 'width')!.kind,
      StacFieldKind.decimal,
    );
    expect(StacFieldType.field('StacText', 'style')!.model, 'StacTextStyle');
    expect(StacFieldType.field('NotAModel', 'x'), isNull);
  });

  test('text styles read the fields of their variant', () {
    final style = StacFieldType.field('StacText', 'style')!;
    expect(style.keyType('fontSize', {}).kind, StacFieldKind.decimal);
    expect(
      style.keyType('textTheme', {'type': 'theme'}).kind,
      StacFieldKind.text,
    );
  });

  test('coerce converts values to what the field accepts', () {
    final boolean = StacFieldType.field('StacSwitch', 'value')!;
    expect(boolean.coerce('true'), true);
    expect(boolean.coerce('false'), false);
    expect(boolean.coerce(1), true);
    expect(boolean.coerce(null), isNull);

    final integer = StacFieldType.field('StacText', 'maxLines')!;
    expect(integer.coerce('3'), 3);
    expect(integer.coerce(2.9), 2);
    expect(integer.coerce('x'), isNull);

    final decimal = StacFieldType.field('StacSizedBox', 'width')!;
    expect(decimal.coerce(10), 10.0);
    expect(decimal.coerce('infinity'), 'infinity');

    expect(StacFieldType.text.coerce(5), '5');
    expect(StacFieldType.text.coerce(null), '');
    expect(StacFieldType.any.coerce([1]), [1]);
  });

  test('custom widgets can register field types', () {
    StacFieldType.registerWidget(
      'ratingBar',
      model: 'RatingBar',
      fields: {'rating': 'double', 'readOnly': 'bool'},
    );
    expect(StacFieldType.widgetModel('ratingBar'), 'RatingBar');
    expect(
      StacFieldType.field('RatingBar', 'rating')!.kind,
      StacFieldKind.decimal,
    );
    expect(StacFieldType.field('RatingBar', 'label')!.kind, StacFieldKind.text);
  });
}
