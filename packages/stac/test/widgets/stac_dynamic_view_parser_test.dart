import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

Map<String, dynamic> _dynamicView(
  Map<String, dynamic> template, {
  String targetPath = '',
}) => {
  'type': 'dynamicView',
  'request': {'url': 'https://example.com/user', 'method': 'get'},
  'targetPath': targetPath,
  'template': template,
};

Future<void> _pumpTemplate(
  WidgetTester tester,
  Map<String, dynamic> template, {
  Object? data = const {'name': 'Ada', 'nickname': null},
  String targetPath = '',
}) async {
  final dio = Dio();
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) =>
          handler.resolve(Response(requestOptions: options, data: data)),
    ),
  );
  await Stac.initialize(dio: dio, override: true, showErrorWidgets: false);
  await tester.pumpWidget(
    MaterialApp(
      home: Builder(
        builder: (context) => Stac.fromJson(
          _dynamicView(template, targetPath: targetPath),
          context,
        )!,
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('renders a null field as empty text', (tester) async {
    await _pumpTemplate(tester, {
      'type': 'text',
      'data': '{{name}} ({{nickname}})',
    });

    expect(find.text('Ada ()'), findsOneWidget);
    expect(find.text('Ada (null)'), findsNothing);
  });

  testWidgets('a null field still satisfies an == null condition', (
    tester,
  ) async {
    await _pumpTemplate(tester, {
      'type': 'conditional',
      'condition': '{{nickname}} == null',
      'ifTrue': {'type': 'text', 'data': 'no nickname'},
      'ifFalse': {'type': 'text', 'data': 'has nickname'},
    });

    expect(find.text('no nickname'), findsOneWidget);
    expect(find.text('has nickname'), findsNothing);
  });

  testWidgets('resolves nested paths and leaves null nested fields empty', (
    tester,
  ) async {
    await _pumpTemplate(
      tester,
      {'type': 'text', 'data': '{{user.name}} ({{user.nickname}})'},
      data: {
        'user': {'name': 'Ada', 'nickname': null},
      },
    );

    expect(find.text('Ada ()'), findsOneWidget);
    expect(find.text('Ada (null)'), findsNothing);
  });

  testWidgets('selects a list item with targetPath', (tester) async {
    await _pumpTemplate(
      tester,
      {'type': 'text', 'data': '{{name}} ({{nickname}})'},
      data: [
        {'name': 'Ada', 'nickname': null},
      ],
      targetPath: '0',
    );

    expect(find.text('Ada ()'), findsOneWidget);
  });

  testWidgets('keeps a missing field for the state pass', (tester) async {
    StacRegistry.instance.setValue('testCurrency', 'USD');
    addTearDown(() => StacRegistry.instance.removeValue('testCurrency'));

    await _pumpTemplate(
      tester,
      {'type': 'text', 'data': '{{name}} / {{testCurrency}}'},
      data: {'name': 'Ada'},
    );

    expect(find.text('Ada / USD'), findsOneWidget);
  });

  testWidgets('does not resolve placeholders inserted from response text', (
    tester,
  ) async {
    await _pumpTemplate(
      tester,
      {'type': 'text', 'data': '{{message}} / {{other}}'},
      data: {'message': 'Keep {{other}} literal', 'other': 'WRONG'},
    );

    expect(find.text('Keep {{other}} literal / WRONG'), findsOneWidget);
  });
}
