import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'hero')
StacWidget heroExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Hero Example')),
    body: StacCenter(
      child: StacColumn(
        mainAxisAlignment: StacMainAxisAlignment.center,
        children: [
          StacHero(
            tag: 'hero-icon',
            createRectTween: StacRectTween(
              type: 'materialRectArcTween',
              begin: StacRect(
                rectType: StacRectType.fromCenter,
                center: StacOffset(dx: 120.0, dy: 140.0),
                width: 100.0,
                height: 100.0,
              ),
              end: StacRect(
                rectType: StacRectType.fromCenter,
                center: StacOffset(dx: 200.0, dy: 200.0),
                width: 50.0,
                height: 50.0,
              ),
            ),
            child: StacIcon(
              iconType: StacIconType.material,
              icon: 'flight_takeoff',
              size: 150.0,
            ),
          ),
          StacSizedBox(height: 24.0),
          StacTextButton(
            child: StacText(data: 'Tap to see Hero Animation'),
            onPressed: StacNavigateAction(
              navigationStyle: NavigationStyle.push,
              widgetJson: {
                'type': 'scaffold',
                'appBar': {
                  'type': 'appBar',
                  'title': {'type': 'text', 'data': 'Flight Details'},
                },
                'body': {
                  'type': 'center',
                  'child': {
                    'type': 'column',
                    'mainAxisAlignment': 'center',
                    'children': [
                      {
                        'type': 'hero',
                        'tag': 'hero-icon',
                        'createRectTween': {
                          'type': 'materialRectArcTween',
                          'begin': {
                            'rectType': 'fromCenter',
                            'center': {'dx': 120.0, 'dy': 140.0},
                            'width': 100.0,
                            'height': 100.0,
                          },
                          'end': {
                            'rectType': 'fromCenter',
                            'center': {'dx': 200.0, 'dy': 200.0},
                            'width': 50.0,
                            'height': 50.0,
                          },
                        },
                        'child': {
                          'type': 'icon',
                          'iconType': 'material',
                          'icon': 'flight_takeoff',
                          'size': 50.0,
                        },
                      },
                      {'type': 'sizedBox', 'height': 16.0},
                      {
                        'type': 'text',
                        'data': 'Flight AB123',
                        'style': {'fontSize': 24.0, 'fontWeight': 'w500'},
                      },
                    ],
                  },
                },
              },
            ),
          ),
        ],
      ),
    ),
  );
}
