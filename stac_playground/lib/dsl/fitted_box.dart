import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'fitted_box')
StacWidget fittedBoxExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'FittedBox')),
    body: StacPadding(
      padding: StacEdgeInsets.only(top: 12, left: 12, right: 12),
      child: StacColumn(
        mainAxisAlignment: StacMainAxisAlignment.start,
        crossAxisAlignment: StacCrossAxisAlignment.start,
        children: [
          StacSizedBox(height: 12),
          StacFittedBox(
            fit: StacBoxFit.contain,
            alignment: StacAlignment.center,
            child: StacText(
              data: 'Hello, World!',
              style: StacTextStyle(fontSize: 20, color: '#000000'),
            ),
          ),
        ],
      ),
    ),
  );
}
