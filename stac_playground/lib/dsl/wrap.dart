import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'wrap')
StacWidget wrapExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Wrap Demo')),
      body: StacCenter(
          child: StacWrap(spacing: 8, runSpacing: 4, children: [
        StacContainer(
            color: '#FFCDD2',
            width: 100,
            height: 100,
            child: StacCenter(
                child: StacText(
                    data: '1', style: StacTextStyle(color: '#FFFFFF')))),
        StacContainer(
            color: '#F8BBD0',
            width: 100,
            height: 100,
            child: StacCenter(
                child: StacText(
                    data: '2', style: StacTextStyle(color: '#FFFFFF')))),
        StacContainer(
            color: '#E1BEE7',
            width: 100,
            height: 100,
            child: StacCenter(
                child: StacText(
                    data: '3', style: StacTextStyle(color: '#FFFFFF')))),
        StacContainer(
            color: '#D1C4E9',
            width: 100,
            height: 100,
            child: StacCenter(
                child: StacText(
                    data: '4', style: StacTextStyle(color: '#FFFFFF')))),
        StacContainer(
            color: '#C5CAE9',
            width: 100,
            height: 100,
            child: StacCenter(
                child: StacText(
                    data: '5', style: StacTextStyle(color: '#FFFFFF')))),
        StacContainer(
            color: '#BBDEFB',
            width: 100,
            height: 100,
            child: StacCenter(
                child: StacText(
                    data: '6', style: StacTextStyle(color: '#FFFFFF')))),
        StacContainer(
            color: '#B3E5FC',
            width: 100,
            height: 100,
            child: StacCenter(
                child: StacText(
                    data: '7', style: StacTextStyle(color: '#FFFFFF')))),
        StacContainer(
            color: '#B2EBF2',
            width: 100,
            height: 100,
            child: StacCenter(
                child: StacText(
                    data: '8', style: StacTextStyle(color: '#FFFFFF')))),
        StacContainer(
            color: '#B2DFDB',
            width: 100,
            height: 100,
            child: StacCenter(
                child: StacText(
                    data: '9', style: StacTextStyle(color: '#FFFFFF')))),
        StacContainer(
            color: '#C8E6C9',
            width: 100,
            height: 100,
            child: StacCenter(
                child: StacText(
                    data: '10', style: StacTextStyle(color: '#FFFFFF'))))
      ])));
}
