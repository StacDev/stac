import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'variable')
StacWidget variableExample() {
  return StacSetValue(
    values: <Map<String, dynamic>>[
      {'key': 'name', 'value': 'John Doe'},
      {'key': 'age', 'value': 30},
      {'key': 'city', 'value': 'New York'},
      {'key': 'country', 'value': 'USA'},
    ],
    child: StacScaffold(
      body: StacCenter(
        child: StacColumn(
          mainAxisAlignment: StacMainAxisAlignment.center,
          children: [
            StacText(data: '{{name}}'),
            StacText(data: '{{age}}'),
            StacText(
              data: '{{city}}',
              children: [StacTextSpan(text: '{{country}}')],
            ),
          ],
        ),
      ),
      floatingActionButton: StacFloatingActionButton(
        child: StacIcon(icon: 'add'),
        onPressed: StacSetValueAction(
          values: <Map<String, dynamic>>[
            {'key': 'phone', 'value': '1234567890'},
          ],
          action: StacNavigateAction(
            assetPath: 'assets/json/variable_navigate_example.json',
          ),
        ),
      ),
    ),
  );
}
