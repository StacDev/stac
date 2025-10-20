# OutlinedButton

Stac Outlined Button을 사용하면 JSON을 사용하여 Flutter outlined button 위젯을 빌드할 수 있습니다.
Flutter의 outlined button 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/material/OutlinedButton-class.html)를 참조하세요.

## 속성

| Property      | Type                    | Description                                                                        |
|---------------|-------------------------|------------------------------------------------------------------------------------|
| onPressed     | `Map<String, dynamic>?` | 버튼이 탭될 때 호출되는 콜백입니다.                             |
| onLongPress   | `Map<String, dynamic>?` | 버튼이 길게 눌렸을 때 호출되는 콜백입니다.                       |
| onHover       | `Map<String, dynamic>?` | 버튼 위에 마우스를 올렸을 때 호출되는 콜백입니다.                       |
| onFocusChange | `Map<String, dynamic>?` | 버튼의 포커스가 변경될 때 호출되는 콜백입니다.                       |
| style         | `StacButtonStyle?`      | 버튼에 적용할 스타일입니다.                                                  |
| autofocus     | `bool`                  | 페이지가 로드될 때 버튼에 포커스를 맞출지 여부입니다. 기본값은 `false`입니다. |
| clipBehavior  | `Clip`                  | 콘텐츠를 클리핑하는 방법을 결정합니다. 기본값은 `Clip.none`입니다.             |
| child         | `Map<String, dynamic>`  | 버튼 내부에 표시할 위젯입니다.                                           |

## 예제 JSON

```json
{
  "type": "outlinedButton",
  "onPressed": {},
  "onLongPress": {},
  "onHover": {},
  "onFocusChange": {},
  "style": {
    "backgroundColor": "#FFFFFF",
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
