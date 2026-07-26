import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'sliver_opacity')
StacWidget sliverOpacityExample() {
  return StacScaffold(
      body: StacCustomScrollView(slivers: [
    StacSliverOpacity(
        opacity: 0.4,
        sliver: StacSliverToBoxAdapter(
            child: StacContainer(
                height: 200,
                color: 'secondary',
                child: StacCenter(
                    child: StacText(
                        data: 'This sliver is faded using SliverOpacity')))))
  ]));
}
