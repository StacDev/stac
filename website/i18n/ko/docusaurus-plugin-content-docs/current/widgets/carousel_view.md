# CarouselView

Stac CarouselView를 사용하면 JSON을 통해 Flutter CarouselView 위젯을 구축할 수 있습니다.
Flutter의 CarouselView 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/Carousel-class.html)를 참조하세요.

## Properties

| Property         | Type                          | Description                                                                 |
|------------------|-------------------------------|-----------------------------------------------------------------------------|
| carouselType     | `StacCarouselViewType`       | 캐러셀의 유형입니다. 기본값은 `StacCarouselViewType.regular`입니다.      |
| padding          | `StacEdgeInsets?`            | 캐러셀을 삽입할 공간의 양입니다.                         |
| backgroundColor  | `String?`                     | 캐러셀의 배경 색상입니다.                                       |
| elevation        | `double?`                     | 이 캐러셀을 배치할 z-좌표입니다.                           |
| overlayColor     | `String?`                     | 캐러셀 오버레이의 색상입니다.                                        |
| itemSnapping     | `bool`                        | 항목이 제자리에 스냅될지 여부입니다. 기본값은 `false`입니다.              |
| shrinkExtent     | `double`                      | 캐러셀을 축소할 양입니다. 기본값은 `0.0`입니다.              |
| scrollDirection  | `Axis`                        | 캐러셀이 스크롤되는 축입니다. 기본값은 `Axis.horizontal`입니다.   |
| reverse          | `bool`                        | 캐러셀이 역방향으로 스크롤되는지 여부입니다. 기본값은 `false`입니다. |
| onTap            | `Map<String, dynamic>?`       | 항목을 탭할 때 호출되는 콜백입니다.                         |
| enableSplash     | `bool`                        | 탭 시 스플래시 효과를 활성화할지 여부입니다. 기본값은 `true`입니다.                 |
| itemExtent       | `double?`                     | 캐러셀의 각 항목의 범위입니다.                                    |
| flexWeights      | `List<int>?`                  | 캐러셀 항목의 플렉스 가중치입니다.                             |
| children         | `List<Map<String, dynamic>>`  | 트리에서 이 위젯 아래에 있는 위젯들입니다.                                  |

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
