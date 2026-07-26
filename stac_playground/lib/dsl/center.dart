import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'center')
StacWidget centerExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Center')),
      body: StacCenter(
          child: StacContainer(
              alignment: StacAlignment.center,
              height: 200,
              width: 150,
              color: '#FC5632',
              child: StacText(
                  data: 'Flutter', style: StacTextStyle(fontSize: 23)))));
}
