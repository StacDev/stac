import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'spacer')
StacWidget spacerExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Spacer')),
      body: StacPadding(
          padding:
              StacEdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: StacColumn(children: [
            StacTextField(
                keyboardType: StacTextInputType.text,
                maxLines: 1,
                decoration: StacInputDecoration(hintText: 'Enter your pin')),
            StacSpacer(),
            StacRow(children: [
              StacRow(children: [
                StacText(
                    data: 'Forgot Pin', style: StacTextStyle(fontSize: 17)),
                StacIcon(
                    iconType: StacIconType.material,
                    icon: 'keyboard_arrow_right',
                    size: 24)
              ]),
              StacSpacer(),
              StacText(data: 'Need help?', style: StacTextStyle(fontSize: 17))
            ]),
            StacSpacer(flex: 2),
            StacElevatedButton(
                child: StacText(data: 'Submit'),
                style: StacButtonStyle(
                    backgroundColor: 'primary', foregroundColor: '#ffffff'),
                onPressed: StacAction())
          ])));
}
