import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'stack')
StacWidget stackExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Stack')),
      body: StacStack(
          alignment: StacAlignment.center,
          clipBehavior: StacClip.antiAlias,
          children: [
            StacPositioned(
                top: 30,
                left: 30,
                height: 150,
                width: 150,
                child: StacContainer(
                    width: 75,
                    height: 75,
                    color: '#81C784',
                    child: StacText(
                        data: 'Green',
                        style: StacTextStyle(fontSize: 20, color: '#FFFFFF')))),
            StacPositioned(
                top: 70,
                left: 60,
                height: 150,
                width: 150,
                child: StacContainer(
                    width: 75,
                    height: 75,
                    color: '#EF5350',
                    child: StacText(
                        data: 'Red',
                        style: StacTextStyle(fontSize: 20, color: '#FFFFFF')))),
            StacPositioned(
                top: 130,
                left: 90,
                height: 150,
                width: 150,
                child: StacContainer(
                    width: 75,
                    height: 75,
                    color: '#BA68C8',
                    child: StacText(
                        data: 'Purple',
                        style: StacTextStyle(fontSize: 20, color: '#FFFFFF'))))
          ]));
}
