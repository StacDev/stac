import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'drawer')
StacWidget drawerExample() {
  return StacScaffold(
    appBar: StacAppBar(
      title: StacText(
        data: 'Drawer Example',
        style: StacTextStyle(color: '#ffffff', fontSize: 21),
      ),
      backgroundColor: '#4D00E9',
    ),
    drawerEnableOpenDragGesture: true,
    drawerEdgeDragWidth: 20.0,
    drawer: StacDrawer(
      backgroundColor: '#f5f5f5',
      elevation: 16.0,
      width: 280.0,
      child: StacColumn(
        children: [
          StacContainer(
            height: 120,
            color: '#4D00E9',
            child: StacCenter(
              child: StacText(
                data: 'Drawer Header',
                style: StacTextStyle(
                  color: '#ffffff',
                  fontSize: 20,
                  fontWeight: StacFontWeight.bold,
                ),
              ),
            ),
          ),
          StacExpanded(
            child: StacListView(
              children: [
                StacListTile(
                  leading: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'home',
                    size: 24,
                  ),
                  title: StacText(data: 'Home'),
                  onTap: StacAction(
                    jsonData: {
                      'actionType': 'snackBar',
                      'content': 'Home tapped!'
                    },
                  ),
                ),
                StacListTile(
                  leading: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'settings',
                    size: 24,
                  ),
                  title: StacText(data: 'Settings'),
                  onTap: StacAction(
                    jsonData: {
                      'actionType': 'snackBar',
                      'content': 'Settings tapped!'
                    },
                  ),
                ),
                StacListTile(
                  leading: StacIcon(
                    iconType: StacIconType.material,
                    icon: 'info',
                    size: 24,
                  ),
                  title: StacText(data: 'About'),
                  onTap: StacAction(
                    jsonData: {
                      'actionType': 'snackBar',
                      'content': 'About tapped!'
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    body: StacCenter(
      child: StacColumn(
        mainAxisAlignment: StacMainAxisAlignment.center,
        children: [
          StacText(
            data: 'Welcome to Drawer Example',
            style: StacTextStyle(fontSize: 24, fontWeight: StacFontWeight.bold),
          ),
          StacSizedBox(height: 16),
          StacText(
            data:
                'Swipe from left edge or tap the menu icon to open the drawer',
            style: StacTextStyle(fontSize: 16, color: '#666666'),
          ),
        ],
      ),
    ),
  );
}
