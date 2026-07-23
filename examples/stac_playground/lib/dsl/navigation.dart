import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'navigation')
StacWidget navigationExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Navigation')),
    body: StacRow(
      mainAxisAlignment: StacMainAxisAlignment.center,
      crossAxisAlignment: StacCrossAxisAlignment.center,
      children: [
        StacColumn(
          mainAxisAlignment: StacMainAxisAlignment.center,
          crossAxisAlignment: StacCrossAxisAlignment.center,
          children: [
            StacElevatedButton(
              style: _buttonStyle(),
              onPressed: StacNavigateAction(
                navigationStyle: NavigationStyle.push,
                widgetJson: {
                  'type': 'exampleScreen',
                  'assetPath': 'assets/json/navigation_example.json',
                },
              ),
              child: StacText(data: 'Push'),
            ),
            StacSizedBox(height: 8),
            StacElevatedButton(
              style: _buttonStyle(),
              onPressed: StacNavigateAction(
                navigationStyle: NavigationStyle.pop,
              ),
              child: StacText(data: 'Pop'),
            ),
            StacSizedBox(height: 8),
            StacElevatedButton(
              style: _buttonStyle(),
              onPressed: StacNavigateAction(
                navigationStyle: NavigationStyle.pushReplacement,
                widgetJson: {
                  'type': 'exampleScreen',
                  'assetPath': 'assets/json/navigation_example.json',
                },
              ),
              child: StacText(data: 'Push and Replace'),
            ),
            StacSizedBox(height: 8),
            StacElevatedButton(
              style: _buttonStyle(),
              onPressed: StacNavigateAction(
                navigationStyle: NavigationStyle.pushAndRemoveAll,
                widgetJson: {
                  'type': 'exampleScreen',
                  'assetPath': 'assets/json/navigation_example.json',
                },
              ),
              child: StacText(data: 'Push and Remove All'),
            ),
            StacSizedBox(height: 8),
            StacElevatedButton(
              style: _buttonStyle(),
              onPressed: StacNavigateAction(
                navigationStyle: NavigationStyle.popAll,
              ),
              child: StacText(data: 'Pop All'),
            ),
            StacSizedBox(height: 8),
            StacElevatedButton(
              style: _buttonStyle(),
              onPressed: StacNavigateAction(
                navigationStyle: NavigationStyle.pushReplacementNamed,
                routeName: '/detailsScreen',
              ),
              child: StacText(data: 'Push Named and Replace'),
            ),
            StacSizedBox(height: 8),
            StacElevatedButton(
              style: _buttonStyle(),
              onPressed: StacNavigateAction(
                navigationStyle: NavigationStyle.pushNamed,
                routeName: '/detailsScreen',
              ),
              child: StacText(data: 'Push Named'),
            ),
            StacSizedBox(height: 8),
            StacElevatedButton(
              style: _buttonStyle(),
              onPressed: StacNavigateAction(
                navigationStyle: NavigationStyle.pushNamedAndRemoveAll,
                routeName: '/homeScreen',
              ),
              child: StacText(data: 'Push Named and Remove Until'),
            ),
          ],
        ),
      ],
    ),
  );
}

StacButtonStyle _buttonStyle() {
  return StacButtonStyle(
    padding: StacEdgeInsets.only(top: 8, left: 12, right: 12, bottom: 8),
  );
}
