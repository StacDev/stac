import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'scroll_view')
StacWidget scrollViewExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Scrollview')),
      body: StacListView(shrinkWrap: true, children: [
        StacSizedBox(height: 52),
        StacContainer(color: '#672BFF', height: 400, width: 200),
        StacSizedBox(height: 52),
        StacContainer(color: '#FC5632', height: 400, width: 200),
        StacSizedBox(height: 52),
        StacContainer(color: '#D9D9D9', height: 400, width: 200)
      ]));
}
