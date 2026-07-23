import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'grid_view')
StacWidget gridViewExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Grid View Example')),
      body: StacPadding(
          padding:
              StacEdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          child: StacGridView(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                StacContainer(
                    decoration: StacBoxDecoration(
                        color: '#FFCDD2',
                        borderRadius: StacBorderRadius.all(8)),
                    child: StacCenter(
                        child: StacText(
                            data: 'Item 1',
                            style: StacTextStyle(color: '#B71C1C')))),
                StacContainer(
                    decoration: StacBoxDecoration(
                        color: '#C8E6C9',
                        borderRadius: StacBorderRadius.all(8)),
                    child: StacCenter(
                        child: StacText(
                            data: 'Item 2',
                            style: StacTextStyle(color: '#1B5E20')))),
                StacContainer(
                    decoration: StacBoxDecoration(
                        color: '#BBDEFB',
                        borderRadius: StacBorderRadius.all(8)),
                    child: StacCenter(
                        child: StacText(
                            data: 'Item 3',
                            style: StacTextStyle(color: '#0D47A1')))),
                StacContainer(
                    decoration: StacBoxDecoration(
                        color: '#FFF9C4',
                        borderRadius: StacBorderRadius.all(8)),
                    child: StacCenter(
                        child: StacText(
                            data: 'Item 4',
                            style: StacTextStyle(color: '#F57F17')))),
                StacContainer(
                    decoration: StacBoxDecoration(
                        color: '#FFCCBC',
                        borderRadius: StacBorderRadius.all(8)),
                    child: StacCenter(
                        child: StacText(
                            data: 'Item 5',
                            style: StacTextStyle(color: '#BF360C')))),
                StacContainer(
                    decoration: StacBoxDecoration(
                        color: '#B2EBF2',
                        borderRadius: StacBorderRadius.all(8)),
                    child: StacCenter(
                        child: StacText(
                            data: 'Item 6',
                            style: StacTextStyle(color: '#006064')))),
                StacContainer(
                    decoration: StacBoxDecoration(
                        color: '#F8BBD0',
                        borderRadius: StacBorderRadius.all(8)),
                    child: StacCenter(
                        child: StacText(
                            data: 'Item 7',
                            style: StacTextStyle(color: '#880E4F')))),
                StacContainer(
                    decoration: StacBoxDecoration(
                        color: '#D1C4E9',
                        borderRadius: StacBorderRadius.all(8)),
                    child: StacCenter(
                        child: StacText(
                            data: 'Item 8',
                            style: StacTextStyle(color: '#311B92')))),
                StacContainer(
                    decoration: StacBoxDecoration(
                        color: '#C5CAE9',
                        borderRadius: StacBorderRadius.all(8)),
                    child: StacCenter(
                        child: StacText(
                            data: 'Item 9',
                            style: StacTextStyle(color: '#1A237E')))),
                StacContainer(
                    decoration: StacBoxDecoration(
                        color: '#FFE0B2',
                        borderRadius: StacBorderRadius.all(8)),
                    child: StacCenter(
                        child: StacText(
                            data: 'Item 10',
                            style: StacTextStyle(color: '#E65100'))))
              ])));
}
