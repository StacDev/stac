import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'elevated_button')
StacWidget elevatedButtonExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Elevated Button')),
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
                        StacElevatedButton(
                            child: StacText(data: 'BUTTON'),
                            style: StacButtonStyle(
                                padding: StacEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)),
                            onPressed: StacAction()),
                        StacSizedBox(width: 20),
                        StacElevatedButton(
                            child: StacRow(children: [
                              StacIcon(
                                  iconType: StacIconType.material,
                                  icon: 'add',
                                  size: 18),
                              StacSizedBox(width: 4),
                              StacText(data: 'BUTTON')
                            ]),
                            style: StacButtonStyle(
                                padding: StacEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)),
                            onPressed: StacAction())
                      ]),
                  StacSizedBox(height: 12),
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
                        StacElevatedButton(
                            child: StacText(data: 'BUTTON'),
                            style: StacButtonStyle(
                                padding: StacEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8))),
                        StacSizedBox(width: 20),
                        StacElevatedButton(
                            child: StacRow(children: [
                              StacIcon(
                                  iconType: StacIconType.material,
                                  icon: 'add',
                                  size: 18),
                              StacSizedBox(width: 4),
                              StacText(data: 'BUTTON')
                            ]),
                            style: StacButtonStyle(
                                padding: StacEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)))
                      ]),
                  StacSizedBox(height: 12),
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
                        StacElevatedButton(
                            child: StacText(data: 'BUTTON'),
                            style: StacButtonStyle(
                                padding: StacEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8),
                                shape: StacRoundedRectangleBorder(
                                    borderRadius: StacBorderRadius.only(
                                        topLeft: 8,
                                        topRight: 8,
                                        bottomLeft: 8,
                                        bottomRight: 8))),
                            onPressed: StacAction()),
                        StacSizedBox(width: 20),
                        StacElevatedButton(
                            child: StacRow(children: [
                              StacIcon(
                                  iconType: StacIconType.material,
                                  icon: 'add',
                                  size: 18),
                              StacSizedBox(width: 4),
                              StacText(data: 'BUTTON')
                            ]),
                            style: StacButtonStyle(
                                padding: StacEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8),
                                shape: StacRoundedRectangleBorder(
                                    borderRadius: StacBorderRadius.only(
                                        topLeft: 8,
                                        topRight: 8,
                                        bottomLeft: 8,
                                        bottomRight: 8))),
                            onPressed: StacAction())
                      ])
                ])
          ]));
}
