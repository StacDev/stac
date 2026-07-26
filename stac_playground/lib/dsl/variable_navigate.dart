import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'variable_navigate')
StacWidget variableNavigateExample() {
  return StacScaffold(
      body: StacCenter(
          child: StacColumn(
              mainAxisAlignment: StacMainAxisAlignment.center,
              children: [
        StacText(data: '{{name}}'),
        StacText(data: '{{age}}'),
        StacText(
            data: '{{city}} ', children: [StacTextSpan(text: '{{country}}')]),
        StacText(data: 'phone: {{phone}}')
      ])));
}
