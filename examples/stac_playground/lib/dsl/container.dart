import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'container')
StacWidget containerExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Container')),
      body: StacListView(shrinkWrap: true, children: [
        StacSizedBox(height: 52),
        StacCenter(
            child: StacContainer(
                color: 'primary@50', height: 250, width: double.maxFinite)),
        StacSizedBox(height: 52),
        StacCenter(
            child: StacContainer(
                color: '#FC5632',
                height: 100,
                width: 200,
                child: StacAlign(
                    alignment: StacAlignmentDirectional.bottomCenter,
                    child: StacText(
                        data: 'Flutter',
                        style: StacTextStyle(
                            fontSize: 23, fontWeight: StacFontWeight.w600))))),
        StacSizedBox(height: 52),
        StacCenter(
            child: StacContainer(
                color: '#FFFF00',
                height: 250,
                width: 250,
                child: StacAlign(
                    alignment: StacAlignmentDirectional.bottomCenter,
                    child: StacText(
                        data: 'Flutter',
                        style: StacTextStyle(
                            fontSize: 23, fontWeight: StacFontWeight.w600)))))
      ]));
}
