import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'sliver_list')
StacWidget sliverListExample() {
  return StacScaffold(
      body: StacCustomScrollView(slivers: [
    StacSliverList(children: [
      StacContainer(
          height: 80,
          color: 'primary',
          child: StacCenter(child: StacText(data: 'List Item 1'))),
      StacContainer(
          height: 80,
          color: 'secondary',
          child: StacCenter(child: StacText(data: 'List Item 2')))
    ])
  ]));
}
