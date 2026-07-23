import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'aspect_ratio')
StacWidget aspectRatioExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'AspectRatio')),
      body: StacPadding(
          padding: StacEdgeInsets.only(top: 12, left: 12, right: 12),
          child: StacColumn(
              mainAxisAlignment: StacMainAxisAlignment.start,
              crossAxisAlignment: StacCrossAxisAlignment.start,
              children: [
                StacSizedBox(height: 12),
                StacAspectRatio(
                    aspectRatio: 1.33,
                    child: StacContainer(
                        color: '#FF5733', width: 100, height: 100))
              ])));
}
