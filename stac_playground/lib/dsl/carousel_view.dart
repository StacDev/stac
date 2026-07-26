import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'carousel_view')
StacWidget carouselViewExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Carousel View')),
    body: StacListView(
      children: [
        StacContainer(
          height: 400,
          child: StacCarouselView(
            padding: StacEdgeInsets.all(12),
            carouselType: StacCarouselViewType.weighted,
            itemSnapping: true,
            flexWeights: [1, 7, 1],
            children: [
              StacImage(
                height: 400,
                fit: StacBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_1.png',
              ),
              StacImage(
                height: 400,
                fit: StacBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_2.png',
              ),
              StacImage(
                height: 400,
                fit: StacBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_3.png',
              ),
              StacImage(
                height: 400,
                fit: StacBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_4.png',
              ),
              StacImage(
                height: 400,
                fit: StacBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_5.png',
              ),
              StacImage(
                height: 400,
                fit: StacBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_6.png',
              ),
            ],
          ),
        ),
        StacContainer(
          height: 200,
          child: StacCarouselView(
            itemExtent: 300,
            shrinkExtent: 80,
            padding: StacEdgeInsets.all(12),
            children: [
              StacContainer(
                color: '#FFCDD2',
                child: StacCenter(
                  child: StacText(
                    data: 'Show 0',
                    style: StacTextStyle(
                      color: '#FFFFFF',
                      fontSize: 20,
                      fontWeight: StacFontWeight.w400,
                    ),
                  ),
                ),
              ),
              StacContainer(
                color: '#C8E6C9',
                child: StacCenter(
                  child: StacText(
                    data: 'Show 1',
                    style: StacTextStyle(
                      color: '#FFFFFF',
                      fontSize: 20,
                      fontWeight: StacFontWeight.w400,
                    ),
                  ),
                ),
              ),
              StacContainer(
                color: '#BBDEFB',
                child: StacCenter(
                  child: StacText(
                    data: 'Show 2',
                    style: StacTextStyle(
                      color: '#FFFFFF',
                      fontSize: 20,
                      fontWeight: StacFontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
