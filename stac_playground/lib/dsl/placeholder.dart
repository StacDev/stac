import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'placeholder')
StacWidget placeholderExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Placeholder')),
      body: StacListView(shrinkWrap: true, children: [
        StacSizedBox(height: 25),
        StacPlaceholder(
            color: '#455A64',
            strokeWidth: 2,
            fallbackHeight: 400,
            fallbackWidth: 400),
        StacSizedBox(height: 25),
        StacPlaceholder(color: '#672BFF', strokeWidth: 5, fallbackHeight: 100)
      ]));
}
