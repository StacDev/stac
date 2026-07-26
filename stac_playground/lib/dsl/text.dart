import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'text')
StacWidget textExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Text')),
      body: StacPadding(
          padding: StacEdgeInsets.only(top: 12, left: 12, right: 12),
          child: StacColumn(
              mainAxisAlignment: StacMainAxisAlignment.start,
              crossAxisAlignment: StacCrossAxisAlignment.start,
              children: [
                StacSizedBox(height: 12),
                StacText(
                    data: 'Flutter',
                    style: StacTextStyle(
                        fontSize: 23, fontWeight: StacFontWeight.w600)),
                StacSizedBox(height: 32),
                StacText(data: 'This is a normal Text.'),
                StacSizedBox(height: 16),
                StacText(data: 'This is a ', children: [
                  StacTextSpan(
                      text: 'Rich Text.',
                      style: StacTextStyle(
                          fontWeight: StacFontWeight.w800, color: '#6750A4'),
                      onTap: {
                        'actionType': 'navigate',
                        'navigationStyle': 'push',
                        'widgetJson': {
                          'type': 'exampleScreen',
                          'assetPath': 'assets/json/web_view_example.json',
                        },
                      })
                ])
              ])));
}
