import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'fractionally_sized_box')
StacWidget fractionallySizedBoxExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Fractionally SizedBox')),
    body: StacContainer(
      height: 400,
      width: 350,
      color: '#A9A9D9',
      child: StacFractionallySizedBox(
        heightFactor: 0.3,
        widthFactor: 0.8,
        alignment: StacAlignment.bottomRight,
        child: StacElevatedButton(
          child: StacText(data: 'FLUTTER'),
          onPressed: StacAction(),
        ),
      ),
    ),
  );
}
