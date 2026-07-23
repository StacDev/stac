import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'align')
StacWidget alignExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Align')),
      body: StacAlign(
          alignment: StacAlignmentDirectional.topEnd,
          child: StacContainer(
              color: '#FC5632',
              height: 250,
              width: 200,
              child: StacAlign(
                  alignment: StacAlignmentDirectional.bottomCenter,
                  child: StacText(
                      data: 'Flutter',
                      style: StacTextStyle(
                          fontSize: 23, fontWeight: StacFontWeight.w600))))));
}
