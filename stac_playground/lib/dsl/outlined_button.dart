import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'outlined_button')
StacWidget outlinedButtonExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Outlined Button')),
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
                        StacOutlinedButton(
                            child: StacText(data: 'BUTTON'),
                            style: StacButtonStyle(
                                padding: StacEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)),
                            onPressed: StacAction()),
                        StacSizedBox(width: 20),
                        StacOutlinedButton(
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
                        StacOutlinedButton(
                            child: StacText(data: 'BUTTON'),
                            style: StacButtonStyle(
                                padding: StacEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8))),
                        StacSizedBox(width: 20),
                        StacOutlinedButton(
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
                      ])
                ])
          ]));
}
