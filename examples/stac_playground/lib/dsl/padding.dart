import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'padding')
StacWidget paddingExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Padding')),
      body: StacSingleChildScrollView(
          child: StacContainer(
              padding:
                  StacEdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
              child: StacColumn(
                  mainAxisAlignment: StacMainAxisAlignment.center,
                  crossAxisAlignment: StacCrossAxisAlignment.center,
                  children: [
                    StacSizedBox(height: 24),
                    StacPadding(
                        padding: StacEdgeInsets.only(left: 0, right: 0),
                        child: StacContainer(
                            color: '#672BFF', height: 75, width: 700)),
                    StacSizedBox(height: 24),
                    StacPadding(
                        padding: StacEdgeInsets.only(left: 24, right: 24),
                        child: StacContainer(
                            color: '#FC5632', height: 75, width: 700)),
                    StacSizedBox(height: 24),
                    StacPadding(
                        padding: StacEdgeInsets.only(left: 48, right: 48),
                        child: StacContainer(
                            color: '#D9D9D9', height: 75, width: 700)),
                    StacSizedBox(height: 24),
                    StacPadding(
                        padding: StacEdgeInsets.only(left: 96, right: 96),
                        child: StacContainer(
                            color: '#672BFF', height: 75, width: 700)),
                    StacSizedBox(height: 24),
                    StacPadding(
                        padding: StacEdgeInsets.only(left: 120, right: 120),
                        child: StacContainer(
                            color: '#FC5632', height: 75, width: 700)),
                    StacSizedBox(height: 24),
                    StacPadding(
                        padding: StacEdgeInsets.only(left: 144, right: 144),
                        child: StacContainer(
                            color: '#D9D9D9', height: 75, width: 700))
                  ]))));
}
