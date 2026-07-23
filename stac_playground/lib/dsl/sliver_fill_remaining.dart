import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'sliver_fill_remaining')
StacWidget sliverFillRemainingExample() {
  return StacScaffold(
      body: StacCustomScrollView(slivers: [
    StacSliverFillRemaining(
        hasScrollBody: false,
        child:
            StacCenter(child: StacText(data: 'This fills the remaining space')))
  ]));
}
