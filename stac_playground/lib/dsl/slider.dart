import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'slider')
StacWidget sliderExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Stac Slider')),
    body: StacForm(
      child: StacCenter(
        child: StacSlider(
          id: 'example_slider',
          sliderType: StacSliderType.material,
          value: 20,
          max: 100,
          divisions: 5,
        ),
      ),
    ),
  );
}
