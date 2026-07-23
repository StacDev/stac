import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'row')
StacWidget rowExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Row')),
      body: StacSingleChildScrollView(
          child: StacRow(
              mainAxisAlignment: StacMainAxisAlignment.center,
              crossAxisAlignment: StacCrossAxisAlignment.center,
              children: [
            StacColumn(
                mainAxisAlignment: StacMainAxisAlignment.center,
                crossAxisAlignment: StacCrossAxisAlignment.center,
                children: [
                  StacSizedBox(height: 24),
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      spacing: 12,
                      children: [
                        StacImage(
                            src:
                                'https://images.pexels.com/photos/2718416/pexels-photo-2718416.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            width: 100),
                        StacImage(
                            src:
                                'https://images.pexels.com/photos/121629/pexels-photo-121629.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            width: 100),
                        StacImage(
                            src:
                                'https://images.pexels.com/photos/1414642/pexels-photo-1414642.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            width: 100)
                      ]),
                  StacSizedBox(height: 32),
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
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
                            onPressed: StacAction()),
                        StacSizedBox(width: 12),
                        StacElevatedButton(
                            child: StacText(data: 'BUTTON'),
                            style: StacButtonStyle(
                                padding: StacEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)),
                            onPressed: StacAction()),
                        StacSizedBox(width: 12),
                        StacOutlinedButton(
                            child: StacRow(children: [
                              StacText(data: 'BUTTON'),
                              StacSizedBox(width: 4),
                              StacIcon(
                                  iconType: StacIconType.material,
                                  icon: 'remove',
                                  size: 18)
                            ]),
                            style: StacButtonStyle(
                                padding: StacEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)),
                            onPressed: StacAction())
                      ]),
                  StacSizedBox(height: 32),
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
                        StacFloatingActionButton(
                            child: StacIcon(
                                iconType: StacIconType.material,
                                icon: 'add',
                                size: 32),
                            onPressed: StacAction()),
                        StacSizedBox(width: 12),
                        StacFloatingActionButton(
                            buttonType: StacFloatingActionButtonType.large,
                            child: StacIcon(
                                iconType: StacIconType.material,
                                icon: 'add',
                                size: 32),
                            onPressed: StacAction()),
                        StacSizedBox(width: 12),
                        StacFloatingActionButton(
                            buttonType: StacFloatingActionButtonType.extended,
                            icon: StacIcon(
                                iconType: StacIconType.material,
                                icon: 'add',
                                size: 32),
                            child: StacText(data: 'Create'),
                            onPressed: StacAction())
                      ])
                ])
          ])));
}
