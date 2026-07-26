import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'limited_box')
StacWidget limitedBoxExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'LimitedBox')),
      body: StacListView(shrinkWrap: true, children: [
        StacSizedBox(height: 25),
        StacLimitedBox(
            child: StacContainer(
                height: 100,
                color: '#FF0000',
                child: StacText(
                    data: 'Hello, World! from Limited Box',
                    style: StacTextStyle(fontSize: 16, color: '#000000'))))
      ]));
}
