// The JSON for this example uses the deprecated `defaultBottomNavigationController`
// and `bottomNavigationView` types, so the DSL mirrors them to stay faithful.
// The navigation_bar example demonstrates the replacements.
// ignore_for_file: deprecated_member_use

import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'bottom_nav_bar')
StacWidget bottomNavBarExample() {
  return StacDefaultBottomNavigationController(
    length: 3,
    child: StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Bottom Navigation Screen')),
      body: StacBottomNavigationView(
        children: [
          StacCenter(
            child: StacText(data: 'Home', style: StacTextStyle(fontSize: 24)),
          ),
          StacCenter(
            child: StacText(data: 'Search', style: StacTextStyle(fontSize: 24)),
          ),
          StacCenter(
            child:
                StacText(data: 'Profile', style: StacTextStyle(fontSize: 24)),
          ),
        ],
      ),
      bottomNavigationBar: StacBottomNavigationBar(
        items: [
          StacBottomNavigationBarItem(
            label: 'Home',
            icon: StacIcon(iconType: StacIconType.material, icon: 'home'),
          ),
          StacBottomNavigationBarItem(
            label: 'Search',
            icon: StacIcon(iconType: StacIconType.material, icon: 'search'),
          ),
          StacBottomNavigationBarItem(
            label: 'Profile',
            icon: StacIcon(
              iconType: StacIconType.material,
              icon: 'account_circle',
            ),
          ),
        ],
      ),
    ),
  );
}
