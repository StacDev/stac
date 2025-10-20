# ElevatedButton

Stac Elevated Button을 사용하면 JSON을 사용하여 Flutter elevated button widget을 빌드할 수 있습니다.
Flutter의 elevated button widget에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/material/ElevatedButton-class.html)를 참조하세요.

## Properties

| Property      | Type                    | Description                                                   |
|---------------|-------------------------|---------------------------------------------------------------|
| onPressed     | `Map<String, dynamic>?` | 버튼을 탭할 때 호출되는 callback입니다.                              |
| onLongPress   | `Map<String, dynamic>?` | 버튼을 길게 누를 때 호출되는 callback입니다.                           |
| onHover       | `Map<String, dynamic>?` | 버튼 위에 마우스를 올릴 때 호출되는 callback입니다.                      |
| onFocusChange | `Map<String, dynamic>?` | 버튼의 focus가 변경될 때 호출되는 callback입니다.                       |
| style         | `StacButtonStyle?`      | 버튼에 적용할 style입니다.                                          |
| autofocus     | `bool`                  | 페이지가 로드될 때 버튼에 focus를 맞출지 여부입니다. 기본값은 `false`입니다.    |
| clipBehavior  | `Clip`                  | 콘텐츠를 자르는 방법을 결정합니다. 기본값은 `Clip.none`입니다.               |
| child         | `Map<String, dynamic>`  | 버튼 내부에 표시할 widget입니다.                                     |

## Example JSON

```json
{
  "type": "elevatedButton",
  "onPressed": {},
  "onLongPress": {},
  "onHover": {},
  "onFocusChange": {},
  "style": {
    "backgroundColor": "primary",
    "foregroundColor": "#FFFFFF"
  },
  "autofocus": false,
  "clipBehavior": "none",
  "child": {
    "type": "text",
    "data": "Click Me!"
  }
}
```
