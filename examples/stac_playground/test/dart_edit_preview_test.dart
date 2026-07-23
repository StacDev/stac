import 'package:flutter_test/flutter_test.dart';
import 'package:stac_playground/data/dsl_to_json.dart';

/// `parseEditorSource` is what the editor calls on every keystroke, so it
/// decides whether the live preview follows the Dart pane and what the user is
/// told when it can't.
void main() {
  const dartScreen = '''
import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'demo')
StacWidget demo() {
  return StacScaffold(
    body: StacCenter(child: StacText(data: 'edited from Dart')),
  );
}
''';

  test('editing Dart yields a widget tree for the preview', () {
    final result = parseEditorSource(dartScreen, isDart: true);

    expect(result.message, isNull);
    final json = result.json!;
    expect(json['type'], 'scaffold');
    expect((json['body'] as Map)['type'], 'center');
    final text = (json['body'] as Map)['child'] as Map;
    expect(text['type'], 'text');
    expect(text['data'], 'edited from Dart');
  });

  test('Dart needing evaluation reports why the preview stopped', () {
    const withHelper = '''
import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'demo')
StacWidget demo() {
  return StacScaffold(body: _helper());
}

StacWidget _helper() => StacText(data: 'nope');
''';

    final result = parseEditorSource(withHelper, isDart: true);

    expect(result.json, isNull, reason: 'preview must keep the last good tree');
    expect(result.message, contains('_helper'));
    expect(result.message, contains('cannot be previewed'));
  });

  test('half-typed Dart holds the preview without nagging', () {
    final result = parseEditorSource(
      'import 1;\n@StacScreen(screenName: 1)\nStacWidget d() { return Stac',
      isDart: true,
    );
    expect(result.json, isNull);
  });

  test('JSON still drives the preview, and bad JSON is silent', () {
    final ok =
        parseEditorSource('{"type": "text", "data": "hi"}', isDart: false);
    expect(ok.json, {'type': 'text', 'data': 'hi'});
    expect(ok.message, isNull);

    final broken = parseEditorSource('{"type": "text",', isDart: false);
    expect(broken.json, isNull);
    expect(broken.message, isNull, reason: 'no banner for a mid-edit typo');
  });
}
