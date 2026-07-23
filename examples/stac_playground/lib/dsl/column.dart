import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'column')
StacWidget columnExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Column')),
      body: StacSingleChildScrollView(
          child: StacColumn(
              mainAxisAlignment: StacMainAxisAlignment.center,
              crossAxisAlignment: StacCrossAxisAlignment.center,
              spacing: 12,
              children: [
            StacContainer(
                width: 2000,
                height: 200,
                color: '#FFCDD2',
                child: StacCenter(
                    child: StacText(
                        data: 'Red Container',
                        style: StacTextStyle(color: '#B71C1C')))),
            StacContainer(
                width: 2000,
                height: 200,
                color: '#C8E6C9',
                child: StacCenter(
                    child: StacText(
                        data: 'Green Container',
                        style: StacTextStyle(color: '#1B5E20')))),
            StacContainer(
                width: 2000,
                height: 200,
                color: '#BBDEFB',
                child: StacCenter(
                    child: StacText(
                        data: 'Blue Container',
                        style: StacTextStyle(color: '#0D47A1'))))
          ])));
}
