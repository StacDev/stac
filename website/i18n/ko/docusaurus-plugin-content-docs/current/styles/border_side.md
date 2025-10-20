# Border Side

StacBorderSide를 사용하면 JSON을 통해 Flutter BorderSide 클래스를 정의할 수 있습니다.
Flutter의 BorderSide 클래스에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/painting/BorderSide-class.html)를 참조하세요.

:::info

BorderSide는 [StacBorder](./border.md)의 새로운 개별 테두리 기능과 함께 사용됩니다. 이제 상단, 우측, 하단, 좌측 테두리를 개별적으로 지정할 수 있습니다.

:::

## 속성

| 속성        | 타입           | 설명                                                                                    |
| ----------- | -------------- | --------------------------------------------------------------------------------------- |
| color       | `Color?`       | 테두리의 색상을 정의합니다.                                                              |
| width       | `double?`      | 테두리의 두께를 정의합니다. (논리 픽셀).                                                 |
| style       | `BorderStyle?` | 테두리의 스타일을 정의합니다. `solid` 또는 `none`이 가능하며, 기본값은 `solid`입니다.    |
| strokeAlign | `double?`      | 스트로크의 상대적 위치를 정의합니다. -1.0(내부)에서 1.0(외부) 범위의 값을 가집니다.      |

## 예제

```json
{
  "color": "#428AF5",
  "width": 1.0,
  "style": "solid",
  "strokeAlign": 1.0
}
```

## 참고 자료

- [Border](./border.md) - StacBorder에서 개별 테두리 사용에 대해 알아보기
