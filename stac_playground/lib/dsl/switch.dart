import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'switch')
StacWidget switchExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Stac Switch')),
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
                StacSwitch(switchType: StacSwitchType.cupertino, value: true),
                StacSizedBox(width: 20),
                StacSwitch(switchType: StacSwitchType.adaptive, value: true),
                StacSizedBox(width: 20),
                StacSwitch(switchType: StacSwitchType.material, value: false),
              ],
            ),
            StacSizedBox(height: 12),
          ],
        ),
      ],
    ),
  );
}
