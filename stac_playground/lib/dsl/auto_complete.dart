import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'auto_complete')
StacWidget autoCompleteExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Autocomplete Basic')),
      body: StacCenter(
          child: StacColumn(children: [
        StacText(
            data:
                'Type below to autocomplete the following possible results: [aardvark, bobcat, chameleon].'),
        StacAutoComplete(
            options: ['aardvark', 'bobcat', 'chameleon'],
            onSelected: StacAction())
      ])));
}
