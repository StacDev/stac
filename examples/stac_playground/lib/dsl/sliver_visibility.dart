import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'sliver_visibility')
StacWidget sliverVisibilityExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Sliver Visibility')),
      body: StacCustomScrollView(slivers: [
        StacSliverVisibility(
            visible: true,
            sliver: StacSliverToBoxAdapter(
                child: StacContainer(
                    height: 200,
                    color: 'secondary',
                    child: StacCenter(
                        child: StacText(
                            data: 'This sliver is conditionally visible')))))
      ]));
}
