import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'sliver_safe_area')
StacWidget sliverSafeAreaExample() {
  return StacScaffold(
      body: StacCustomScrollView(slivers: [
    StacSliverSafeArea(
        top: true,
        bottom: true,
        sliver: StacSliverToBoxAdapter(
            child: StacContainer(
                padding: StacEdgeInsets.all(16),
                child: StacText(data: 'Content inside SliverSafeArea'))))
  ]));
}
