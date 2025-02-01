# CarouselView

The Stac CarouselView allows you to build a Flutter CarouselView widget using JSON.
To know more about the CarouselView widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Carousel-class.html).

## Properties

| Property         | Type                          | Description                                                                 |
|------------------|-------------------------------|-----------------------------------------------------------------------------|
| carouselType     | `StacCarouselViewType`       | The type of the carousel. Defaults to `StacCarouselViewType.regular`.      |
| padding          | `StacEdgeInsets?`            | The amount of space by which to inset the carousel.                         |
| backgroundColor  | `String?`                     | The background color of the carousel.                                       |
| elevation        | `double?`                     | The z-coordinate at which to place this carousel.                           |
| overlayColor     | `String?`                     | The color of the carousel's overlay.                                        |
| itemSnapping     | `bool`                        | Whether the items should snap into place. Defaults to `false`.              |
| shrinkExtent     | `double`                      | The amount by which to shrink the carousel. Defaults to `0.0`.              |
| scrollDirection  | `Axis`                        | The axis along which the carousel scrolls. Defaults to `Axis.horizontal`.   |
| reverse          | `bool`                        | Whether the carousel scrolls in the reverse direction. Defaults to `false`. |
| onTap            | `Map<String, dynamic>?`       | The callback that is called when an item is tapped.                         |
| enableSplash     | `bool`                        | Whether to enable splash effect on tap. Defaults to `true`.                 |
| itemExtent       | `double?`                     | The extent of each item in the carousel.                                    |
| flexWeights      | `List<int>?`                  | The flex weights for the items in the carousel.                             |
| children         | `List<Map<String, dynamic>>`  | The widgets below this widget in the tree.                                  |

## Example JSON

```json
{
  "type": "carouselView",
  "carouselType": "weighted",
  "padding": 12,
  "backgroundColor": "#FFFFFF",
  "elevation": 5.0,
  "overlayColor": "#FF0000",
  "itemSnapping": true,
  "shrinkExtent": 0.0,
  "scrollDirection": "horizontal",
  "reverse": false,
  "onTap": {
    "type": "callback",
    "name": "onItemTap"
  },
  "enableSplash": true,
  "itemExtent": 300,
  "flexWeights": [1, 7, 1],
  "children": [
    {
      "type": "image",
      "height": 400,
      "fit": "cover",
      "src": "https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_1.png"
    },
    {
      "type": "image",
      "height": 400,
      "fit": "cover",
      "src": "https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_2.png"
    },
    {
      "type": "image",
      "height": 400,
      "fit": "cover",
      "src": "https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_3.png"
    }
  ]
}
```