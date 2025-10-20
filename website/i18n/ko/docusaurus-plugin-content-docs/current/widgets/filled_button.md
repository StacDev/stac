# FilledButton

Stac Filled Button을 사용하면 JSON을 통해 Flutter filled button widget을 구성할 수 있습니다.
Flutter의 filled button widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/FilledButton-class.html)를 참조하세요.

## 속성

| 속성           | 타입                     | 설명                                                                      |
|---------------|--------------------------|--------------------------------------------------------------------------|
| onPressed     | `Map<String, dynamic>?` | 버튼을 탭할 때 호출되는 콜백입니다.                                            |
| onLongPress   | `Map<String, dynamic>?` | 버튼을 길게 누를 때 호출되는 콜백입니다.                                        |
| onHover       | `Map<String, dynamic>?` | 버튼 위에 마우스를 올릴 때 호출되는 콜백입니다.                                   |
| onFocusChange | `Map<String, dynamic>?` | 버튼의 포커스가 변경될 때 호출되는 콜백입니다.                                    |
| style         | `StacButtonStyle?`      | 버튼에 적용할 스타일입니다.                                                   |
| autofocus     | `bool`                  | 페이지가 로드될 때 버튼이 포커스를 받아야 하는지 여부입니다. 기본값은 `false`입니다.     |
| clipBehavior  | `Clip`                  | 콘텐츠를 자르는 방법을 결정합니다. 기본값은 `Clip.none`입니다.                     |
| child         | `Map<String, dynamic>`  | 버튼 내부에 표시할 widget입니다.                                             |

## 예제 JSON

```json
{
  "type": "filledButton",
  "onPressed": {},
  "onLongPress": {},
  "onHover": {},
  "onFocusChange": {},
  "style": {
    "backgroundColor": "#FFC107",
    "foregroundColor": "#000000"
  },
  "autofocus": false,
  "clipBehavior": "none",
  "child": {
    "type": "text",
    "data": "Click Me!"
  }
}
```
