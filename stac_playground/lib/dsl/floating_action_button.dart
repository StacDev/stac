import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'floating_action_button')
StacWidget floatingActionButtonExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Floating Action Button')),
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
                StacFloatingActionButton(
                  buttonType: StacFloatingActionButtonType.extended,
                  icon: StacIcon(iconType: StacIconType.material, icon: 'add'),
                  child: StacText(data: 'Create'),
                  onPressed: StacAction(),
                ),
                StacSizedBox(width: 20),
                StacFloatingActionButton(
                  buttonType: StacFloatingActionButtonType.large,
                  child: StacIcon(iconType: StacIconType.material, icon: 'add'),
                  onPressed: StacAction(),
                ),
              ],
            ),
            StacSizedBox(height: 52),
            StacRow(
              mainAxisAlignment: StacMainAxisAlignment.center,
              crossAxisAlignment: StacCrossAxisAlignment.center,
              children: [
                StacFloatingActionButton(
                  buttonType: StacFloatingActionButtonType.extended,
                  disabledElevation: 0,
                  icon: StacIcon(iconType: StacIconType.material, icon: 'add'),
                  child: StacText(data: 'Create'),
                ),
                StacSizedBox(width: 20),
                StacFloatingActionButton(
                  buttonType: StacFloatingActionButtonType.large,
                  disabledElevation: 0,
                  child: StacIcon(iconType: StacIconType.material, icon: 'add'),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
