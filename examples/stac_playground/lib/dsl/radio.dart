import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'radio')
StacWidget radioExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Stac Radio')),
    body: StacForm(
      child: StacRadioGroup(
        child: StacColumn(
          children: [
            StacListTile(
              leading: StacRadio(
                radioType: StacRadioType.adaptive,
                value: '1',
              ),
              title: StacText(
                data: 'Male',
                style: StacTextStyle(fontSize: 21),
              ),
            ),
            StacListTile(
              leading: StacRadio(
                radioType: StacRadioType.adaptive,
                value: '2',
              ),
              title: StacText(
                data: 'Female',
                style: StacTextStyle(fontSize: 21),
              ),
            ),
            StacListTile(
              leading: StacRadio(
                radioType: StacRadioType.adaptive,
                value: '3',
              ),
              title: StacText(
                data: 'Other',
                style: StacTextStyle(fontSize: 21),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
