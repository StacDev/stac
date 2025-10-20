# ClipRRect

Stac의 `ClipRRect` widget을 사용하면 둥근 직사각형을 사용하여 자식을 클리핑할 수 있습니다. 이는 둥근 모서리가 있는 UI 요소를 만들고자 할 때 유용합니다.

## 사용법

```json
{
  "type": "clipRRect",
  "borderRadius": 8.0,
  "clipBehavior": "antiAlias",
  "child": {
    "type": "container",
    "color": "#FF0000",
    "height": 100,
    "width": 100
  }
}
```

## 속성

| 속성 | 타입 | 기본값 | 설명 |
|----------|------|---------|-------------|
| `borderRadius` | `StacBorderRadius` | `StacBorderRadius()` (모든 모서리 0) | 둥근 모서리의 border radius입니다. 단일 값, 4개 값의 목록 또는 개별 모서리 값이 있는 객체로 지정할 수 있습니다. |
| `clipBehavior` | `Clip` | `antiAlias` | 콘텐츠가 둥근 직사각형을 벗어날 때의 클리핑 동작입니다. |
| `child` | `Widget` | 필수 | 둥근 모서리로 클리핑할 widget입니다. |

## BorderRadius 형식 옵션

`borderRadius` 속성은 여러 형식으로 지정할 수 있습니다:

### 단일 값 (모든 모서리에 적용)

```json
{
  "type": "clipRRect",
  "borderRadius": 8.0,
  "child": { ... }
}
```

### 목록 형식 (topLeft, topRight, bottomLeft, bottomRight)

```json
{
  "type": "clipRRect",
  "borderRadius": [8.0, 16.0, 8.0, 16.0],
  "child": { ... }
}
```

### 객체 형식 (각 모서리를 개별적으로 지정)

```json
{
  "type": "clipRRect",
  "borderRadius": {
    "topLeft": 8.0,
    "topRight": 16.0,
    "bottomLeft": 8.0,
    "bottomRight": 16.0
  },
  "child": { ... }
}
```

## Clip Behavior 옵션

`clipBehavior` 속성은 다음 값을 허용합니다:

- `"antiAlias"` (기본값): 더 부드러운 가장자리를 위해 안티 앨리어싱을 사용하여 클리핑합니다
- `"hardEdge"`: 더 날카로운 가장자리를 위해 안티 앨리어싱 없이 클리핑합니다
- `"antiAliasWithSaveLayer"`: 오프스크린 버퍼를 사용한 안티 앨리어싱 클리핑입니다 (더 높은 품질이지만 느림)
- `"none"`: 클리핑 없음 (ClipRRect에는 권장하지 않음)

## 예제 JSON

### 기본 둥근 Container

```json
{
  "type": "clipRRect",
  "borderRadius": 12.0,
  "child": {
    "type": "container",
    "color": "#2196F3",
    "height": 100,
    "width": 200
  }
}
```

### 둥근 Image

```json
{
  "type": "clipRRect",
  "borderRadius": 8.0,
  "child": {
    "type": "image",
    "src": "https://example.com/image.jpg",
    "width": 200,
    "height": 200,
    "fit": "cover"
  }
}
```

### 다른 모서리 반경을 가진 Card

```json
{
  "type": "clipRRect",
  "borderRadius": {
    "topLeft": 20.0,
    "topRight": 20.0,
    "bottomLeft": 0.0,
    "bottomRight": 0.0
  },
  "child": {
    "type": "container",
    "color": "#FFFFFF",
    "padding": 16.0,
    "child": {
      "type": "column",
      "children": [
        {
          "type": "text",
          "data": "Card Title",
          "style": {
            "fontSize": 18.0,
            "fontWeight": "bold"
          }
        },
        {
          "type": "text",
          "data": "Card content goes here"
        }
      ]
    }
  }
}
```

## 관련 Widget

- [Container](container.md) - ClipRRect의 자식으로 자주 사용됩니다
- [Card](card.md) - elevation과 둥근 모서리가 있는 미리 스타일이 지정된 container입니다
