import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'inkwell')
StacWidget inkwellExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'InkWell')),
    body: StacListView(
      shrinkWrap: true,
      children: [
        StacCenter(
          child: StacInkWell(
            child: StacPadding(
              padding:
                  StacEdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
              child: StacText(
                data: 'Hello, World! from Inkwell',
                textAlign: StacTextAlign.center,
              ),
            ),
            splashColor: '#E1BEE7',
            borderRadius: StacBorderRadius.only(
              topLeft: 20,
              topRight: 20,
              bottomLeft: 20,
              bottomRight: 20,
            ),
            radius: 20,
            hoverDuration: StacDuration(seconds: 10),
            onTap: StacDialogAction(
              widget: {
                'type': 'alertDialog',
                'title': {'type': 'text', 'data': 'On Tap Successful'},
              },
            ),
          ),
        ),
      ],
    ),
  );
}
