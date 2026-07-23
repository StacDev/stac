import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'sliver_app_bar')
StacWidget sliverAppBarExample() {
  return StacScaffold(
      body: StacCustomScrollView(slivers: [
    StacSliverAppBar(
        title: StacText(data: 'SliverAppBar'),
        leading: StacIconButton(
            icon: StacIcon(iconType: StacIconType.material, icon: 'menu'),
            onPressed: null /* TODO: {} */),
        backgroundColor: 'primary',
        actions: [
          StacIconButton(
              icon: StacIcon(
                  iconType: StacIconType.cupertino, icon: 'heart_solid'),
              onPressed: null /* TODO: {} */),
          StacIconButton(
              icon: StacIcon(iconType: StacIconType.material, icon: 'search'),
              onPressed: null /* TODO: {} */),
          StacIconButton(
              icon:
                  StacIcon(iconType: StacIconType.material, icon: 'more_horiz'),
              onPressed: null /* TODO: {} */)
        ])
  ]));
}
