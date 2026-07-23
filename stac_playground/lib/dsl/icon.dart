import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'icon')
StacWidget iconExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Icon')),
      body: StacRow(
          mainAxisAlignment: StacMainAxisAlignment.center,
          crossAxisAlignment: StacCrossAxisAlignment.center,
          children: [
            StacColumn(
                mainAxisAlignment: StacMainAxisAlignment.center,
                crossAxisAlignment: StacCrossAxisAlignment.center,
                children: [
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
                        StacIcon(
                            iconType: StacIconType.material,
                            icon: 'add',
                            size: 32),
                        StacSizedBox(width: 20),
                        StacIcon(
                            iconType: StacIconType.material,
                            icon: 'remove',
                            size: 32)
                      ]),
                  StacSizedBox(height: 24),
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
                        StacContainer(
                            child: StacIcon(
                                iconType: StacIconType.cupertino,
                                icon: 'add',
                                size: 32)),
                        StacSizedBox(width: 20),
                        StacContainer(
                            child: StacIcon(
                                iconType: StacIconType.cupertino,
                                icon: 'minus',
                                size: 32))
                      ])
                ])
          ]));
}
