# Border

StacBorder를 사용하면 균일한 테두리(모든 면)와 개별 테두리 면을 모두 지원하는 JSON을 통해 Flutter Border 클래스를 정의할 수 있습니다.
Flutter의 Border 클래스에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/painting/Border-class.html)를 참조하세요.

## 기능

- **균일한 테두리**: 모든 면에 동일한 테두리 적용 (이전 버전과 호환)
- **개별 테두리 면**: 상단, 우측, 하단, 좌측 면에 각각 다른 테두리 지정
- **자동 감지**: 시스템이 균일 테두리 또는 개별 테두리 사용 여부를 자동으로 감지

## 속성

### 균일한 테두리 (모든 면)

| 속성        | 타입           | 설명                                                                                    |
| ----------- | -------------- | --------------------------------------------------------------------------------------- |
| color       | `String?`      | 모든 면의 테두리 색상을 정의합니다.                                                      |
| width       | `StacDouble?`  | 모든 면의 테두리 두께를 정의합니다 (논리 픽셀).                                          |
| borderStyle | `BorderStyle?` | 모든 면의 테두리 스타일을 정의합니다. `solid` 또는 `none`이 가능하며, 기본값은 `solid`입니다. |
| strokeAlign | `StacDouble?`  | 스트로크의 상대적 위치를 정의합니다. -1.0(내부)에서 1.0(외부) 범위의 값을 가집니다.      |

### 개별 테두리 면

| 속성   | 타입              | 설명                             |
| ------ | ----------------- | -------------------------------- |
| top    | `StacBorderSide?` | 상단 면의 테두리를 정의합니다.   |
| right  | `StacBorderSide?` | 우측 면의 테두리를 정의합니다.   |
| bottom | `StacBorderSide?` | 하단 면의 테두리를 정의합니다.   |
| left   | `StacBorderSide?` | 좌측 면의 테두리를 정의합니다.   |

:::note

개별 테두리 면(`top`, `right`, `bottom` 또는 `left`)이 하나라도 지정되면, 시스템은 개별 테두리 모드를 사용하고 균일 테두리 속성(`color`, `width`, `borderStyle`, `strokeAlign`)을 무시합니다.

:::

## 예제

### 균일한 테두리 (모든 면)

```json
{
  "border": {
    "color": "#FF0000",
    "width": 2.0,
    "borderStyle": "solid",
    "strokeAlign": 0.0
  }
}
```

### 개별 테두리 면

```json
{
  "border": {
    "top": {
      "color": "#FF0000",
      "width": 2.0,
      "borderStyle": "solid",
      "strokeAlign": 0.0
    },
    "right": {
      "color": "#00FF00",
      "width": 1.0,
      "borderStyle": "solid"
    },
    "bottom": {
      "color": "#0000FF",
      "width": 3.0,
      "borderStyle": "solid"
    },
    "left": {
      "color": "#FFFF00",
      "width": 1.5,
      "borderStyle": "solid"
    }
  }
}
```

### 부분 테두리 면

일부 면만 지정할 수 있으며, 나머지는 기본값인 `BorderSide.none`이 됩니다:

```json
{
  "border": {
    "top": {
      "color": "#FF0000",
      "width": 2.0,
      "borderStyle": "solid"
    },
    "bottom": {
      "color": "#0000FF",
      "width": 2.0,
      "borderStyle": "solid"
    }
  }
}
```

### 완전한 Container 예제

```json
{
  "type": "container",
  "width": 200,
  "height": 100,
  "decoration": {
    "color": "#F0F0F0",
    "border": {
      "top": {
        "color": "#FF0000",
        "width": 3.0,
        "borderStyle": "solid"
      },
      "right": {
        "color": "#00FF00",
        "width": 2.0,
        "borderStyle": "solid"
      },
      "bottom": {
        "color": "#0000FF",
        "width": 3.0,
        "borderStyle": "solid"
      },
      "left": {
        "color": "#FFFF00",
        "width": 2.0,
        "borderStyle": "solid"
      }
    },
    "borderRadius": {
      "topLeft": 8.0,
      "topRight": 8.0,
      "bottomLeft": 8.0,
      "bottomRight": 8.0
    }
  },
  "child": {
    "type": "center",
    "child": {
      "type": "text",
      "data": "Custom Borders",
      "style": {
        "fontSize": 16,
        "fontWeight": "bold"
      }
    }
  }
}
```

## 참고 자료

- [Border Side](./border_side.md) - StacBorderSide 속성에 대해 알아보기
- [Border Radius](./border_radius.md) - border radius 설정에 대해 알아보기
