import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'sliver_grid')
StacWidget sliverGridExample() {
  return StacScaffold(
      body: StacCustomScrollView(slivers: [
    StacSliverGrid(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1,
        children: [
          StacContainer(
              color: '#4CAF50',
              child: StacCenter(
                  child: StacText(
                      data: 'Grid Item 1',
                      style: StacTextStyle(
                          color: '#FFFFFF', fontWeight: StacFontWeight.bold)))),
          StacContainer(
              color: '#4CAF50',
              child: StacCenter(
                  child: StacText(
                      data: 'Grid Item 2',
                      style: StacTextStyle(
                          color: '#FFFFFF', fontWeight: StacFontWeight.bold)))),
          StacContainer(
              color: '#4CAF50',
              child: StacCenter(
                  child: StacText(
                      data: 'Grid Item 3',
                      style: StacTextStyle(
                          color: '#FFFFFF', fontWeight: StacFontWeight.bold)))),
          StacContainer(
              color: '#4CAF50',
              child: StacCenter(
                  child: StacText(
                      data: 'Grid Item 4',
                      style: StacTextStyle(
                          color: '#FFFFFF', fontWeight: StacFontWeight.bold))))
        ])
  ]));
}
