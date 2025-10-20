# Positioned

Stac Positioned를 사용하면 JSON을 사용하여 Flutter positioned 위젯을 빌드할 수 있습니다.
Flutter의 positioned 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/Positioned-class.html)를 참조하세요.

## 속성

| Property       | Type                    | Description                                                                                 |
|----------------|-------------------------|---------------------------------------------------------------------------------------------|
| positionedType | `StacPositionedType?`  | positioned 위젯의 타입입니다. `directional`, `fill` 또는 `fromRect`이 될 수 있습니다.                 |
| left           | `double?`               | 부모의 왼쪽 가장자리로부터의 거리입니다.                                              |
| top            | `double?`               | 부모의 위쪽 가장자리로부터의 거리입니다.                                               |
| right          | `double?`               | 부모의 오른쪽 가장자리로부터의 거리입니다.                                             |
| bottom         | `double?`               | 부모의 아래쪽 가장자리로부터의 거리입니다.                                            |
| width          | `double?`               | 자식의 너비입니다.                                                                     |
| height         | `double?`               | 자식의 높이입니다.                                                                    |
| start          | `double?`               | 부모의 시작 가장자리로부터의 거리입니다 (`directional` 타입용).                    |
| end            | `double?`               | 부모의 끝 가장자리로부터의 거리입니다 (`directional` 타입용).                      |
| textDirection  | `TextDirection`         | `start`와 `end`를 해석하는 데 사용할 텍스트 방향입니다. 기본값은 `TextDirection.ltr`입니다. |
| rect           | `StacRect?`            | 자식을 배치할 사각형입니다 (`fromRect` 타입용).                                  |
| child          | `Map<String, dynamic>?` | positioned 위젯 내부에 표시할 위젯입니다.                                         |

## 예제 JSON

```json
{
  "type": "positioned",
  "left": 10,
  "top": 20,
  "right": 30,
  "bottom": 40,
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```

## Example JSON for \`directional\`

```json
{
  "type": "positioned",
  "positionedType": "directional",
  "start": 10,
  "top": 20,
  "width": 100,
  "height": 50,
  "textDirection": "ltr",
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```

### Example JSON for \`fill\`

```json
{
  "type": "positioned",
  "positionedType": "fill",
  "left": 10,
  "top": 20,
  "right": 30,
  "bottom": 40,
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```

### Example JSON for fromRect

```json
{
  "type": "positioned",
  "positionedType": "fromRect",
  "rect": {
    "left": 10,
    "top": 20,
    "right": 110,
    "bottom": 70
  },
  "child": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```
