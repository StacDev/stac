import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'navigation_bar')
StacWidget navigationBarExample() {
  return StacDefaultNavigationController(
    length: 3,
    child: StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Navigation Bar Screen')),
      body: StacNavigationView(
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
      bottomNavigationBar: StacNavigationBar(
        labelBehavior: StacNavigationDestinationLabelBehavior.alwaysShow,
        destinations: [
          StacNavigationDestination(
            label: 'Home',
            icon: StacIcon(
              iconType: StacIconType.material,
              icon: 'home_outlined',
            ),
            selectedIcon: StacIcon(
              iconType: StacIconType.material,
              icon: 'home',
            ),
          ),
          StacNavigationDestination(
            label: 'Search',
            icon: StacIcon(iconType: StacIconType.material, icon: 'search'),
          ),
          StacNavigationDestination(
            label: 'Profile',
            icon: StacIcon(
              iconType: StacIconType.material,
              icon: 'account_circle_outlined',
            ),
            selectedIcon: StacIcon(
              iconType: StacIconType.material,
              icon: 'account_circle',
            ),
          ),
        ],
      ),
    ),
  );
}
