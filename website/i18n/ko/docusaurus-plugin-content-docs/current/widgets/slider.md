# Slider

Stac slider를 사용하면 JSON을 사용하여 Flutter Slider 위젯을 빌드할 수 있습니다.
Flutter의 Slider 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/Slider-class.html)를 참조하세요.

## 속성

| Property             | Type                   | Description                                                                                                     |
|----------------------|------------------------|-----------------------------------------------------------------------------------------------------------------|
| id                   | `String`               | 슬라이더의 선택된 값을 저장하는 데 사용될 id입니다.                                                       |
| sliderType           | `StacSliderType`      | 슬라이더의 타입입니다.                                                                                             |
| value                | `StacSliderType`      | 이 슬라이더에 대해 현재 선택된 값입니다.                                                                   |
| secondaryTrackValue  | `double`               | 비활성 트랙 위에서 썸과 이 값 사이의 진행률을 그리는 데 사용되는 보조 트랙입니다.            |
| onChanged            | `Map<String, dynamic>` | 사용자가 슬라이더의 새 값을 선택하는 동안 드래그할 때 호출됩니다.                                     |
| onChangeStart        | `Map<String, dynamic>` | 사용자가 슬라이더의 새 값을 선택하기 시작할 때 호출됩니다.                                               |
| onChangeEnd          | `Map<String, dynamic>` | 사용자가 슬라이더의 새 값 선택을 완료했을 때 호출됩니다.                                              |
| min                  | `double`               | 사용자가 선택할 수 있는 최소값입니다.                                                                          |
| max                  | `double`               | 사용자가 선택할 수 있는 최대값입니다.                                                                          |
| divisions            | `int`                  | 이산 구간의 수입니다.                                                                               |
| label                | `String`               | 슬라이더가 활성화되어 있을 때 슬라이더 위에 표시할 레이블                                                      |
| activeColor          | `String`               | 슬라이더 트랙의 활성 부분에 사용할 색상입니다.                                            |
| inactiveColor        | `String`               | 슬라이더 트랙의 비활성 부분의 색상입니다.                                                         |
| secondaryActiveColor | `String`               | 썸과 secondaryTrackValue 사이의 슬라이더 트랙 부분에 사용할 색상                  |
| thumbColor           | `String`               | 썸의 색상입니다.                                                                                         |
| overlayColor         | `String`               | 슬라이더 썸이 포커스, 호버 또는 드래그될 때를 나타내는 데 일반적으로 사용되는 하이라이트 색상입니다.    |
| mouseCursor          | `StacMouseCursor`     | 마우스 포인터가 위젯에 진입하거나 위에 있을 때의 커서입니다.                                   |
| autofocus            | `bool`                 | 현재 범위에서 다른 노드에 포커스가 없을 때 이 위젯이 초기 포커스로 선택될지 여부입니다. |
| allowedInteraction   | `SliderInteraction`    | 사용자가 슬라이더와 상호작용할 수 있는 허용된 방법입니다.                                                           |

## 예제 JSON

```json
{
    "type": "scaffold",
    "appBar": {
        "type": "appBar",
        "title": {
            "type": "text",
            "data": "Stac Slider"
        }
    },
    "body": {
        "type": "form",
        "child": {
            "type": "center",
            "child": {
                "id": "example_slider",
                "type": "slider",
                "sliderType": "material",
                "value": 20,
                "max": 100,
                "divisions": 5
            }
        }
    }
}
```
