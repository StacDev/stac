import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'tab_bar')
StacWidget tabBarExample() {
  return StacDefaultTabController(
      length: 3,
      child: StacScaffold(
          appBar: StacAppBar(
              title: StacText(data: 'Tabbar'),
              bottom: StacTabBar(tabs: [
                StacTab(text: 'Red'),
                StacTab(text: 'Red'),
                StacTab(text: 'Red')
              ])),
          body: StacTabBarView(children: [
            StacContainer(color: '#D9D9D9'),
            StacContainer(color: '#FC3F1B'),
            StacContainer(color: '#D9D9D9')
          ])));
}
