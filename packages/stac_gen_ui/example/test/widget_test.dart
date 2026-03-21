import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';

void main() {
  testWidgets('App shows API key required when key is missing', (WidgetTester tester) async {
    await tester.pumpWidget(const StacGenUiExampleApp());
    await tester.pumpAndSettle();

    expect(find.text('Claude API key required'), findsOneWidget);
    expect(find.textContaining('Provide your Anthropic API key'), findsOneWidget);
  });
}
