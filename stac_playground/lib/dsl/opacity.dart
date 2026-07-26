import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'opacity')
StacWidget opacityExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Opacity')),
      body: StacCenter(
          child: StacOpacity(
              opacity: 0.5,
              child: StacText(
                  data: 'Opacity Widget',
                  style: StacTextStyle(
                      fontSize: 23, fontWeight: StacFontWeight.w600)))));
}
