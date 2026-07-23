import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'sized_box')
StacWidget sizedBoxExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Sizedbox')),
      body: StacListView(shrinkWrap: true, children: [
        StacSizedBox(height: 25),
        StacContainer(color: '#672BFF', height: 75),
        StacSizedBox(height: 50),
        StacContainer(color: '#FC5632', height: 75),
        StacSizedBox(height: 75),
        StacContainer(color: '#D9D9D9', height: 75),
        StacSizedBox(height: 100),
        StacContainer(color: '#672BFF', height: 75),
        StacSizedBox(height: 125),
        StacContainer(color: '#FC5632', height: 75),
        StacSizedBox(height: 150),
        StacContainer(color: '#D9D9D9', height: 75)
      ]));
}
