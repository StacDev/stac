import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/src/parsers/actions/stac_snack_bar/stac_snack_bar_parser.dart';
import 'package:stac_core/stac_core.dart';

void main() {
  testWidgets('StacSnackBarParser passes persist to SnackBar', (tester) async {
    const model = StacSnackBar(
      content: <String, dynamic>{
        'type': 'text',
        'data': <String, dynamic>{'text': 'Item deleted'},
      },
      persist: false,
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) => TextButton(
              onPressed: () => StacSnackBarParser().onCall(context, model),
              child: const Text('show snack bar'),
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('show snack bar'));
    await tester.pump();

    expect(tester.widget<SnackBar>(find.byType(SnackBar)).persist, isFalse);
  });
}
