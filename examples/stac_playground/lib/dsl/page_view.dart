import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'page_view')
StacWidget pageViewExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'PageView')),
      body: StacPageView(children: [
        StacContainer(
            color: '#D9D9D9',
            child: StacCenter(
                child: StacText(
                    data: 'Page 1',
                    style: StacTextStyle(
                        fontSize: 23, fontWeight: StacFontWeight.w400)))),
        StacContainer(
            color: '#FC3F1B',
            child: StacCenter(
                child: StacText(
                    data: 'Page 2',
                    style: StacTextStyle(
                        fontSize: 23, fontWeight: StacFontWeight.w400)))),
        StacContainer(
            color: '#D9D9D9',
            child: StacCenter(
                child: StacText(
                    data: 'Page 3',
                    style: StacTextStyle(
                        fontSize: 23, fontWeight: StacFontWeight.w400))))
      ]));
}
