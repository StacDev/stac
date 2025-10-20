# Visibility

Stac Visibility를 사용하면 JSON을 사용하여 Flutter Visibility 위젯을 빌드할 수 있습니다.
Flutter의 Visibility 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/Visibility-class.html)를 참조하세요.

---

## Properties

| Property                | Type                    | Description                                                                                       |
|-------------------------|-------------------------|---------------------------------------------------------------------------------------------------|
| `child`                 | `Map<String, dynamic>`  | `visible`이 `true`일 때 표시될 위젯입니다.                                              |
| `replacement`           | `Map<String, dynamic>?` | `visible`이 `false`일 때 표시할 위젯입니다. 기본값은 빈 위젯입니다 (`SizedBox.shrink`). |
| `visible`               | `bool`                  | 자식이 보이는지 여부입니다. 기본값은 `true`입니다.                                                 |
| `maintainState`         | `bool`                  | 위젯이 숨겨져 있을 때 상태를 유지할지 여부입니다. 기본값은 `false`입니다.               |
| `maintainAnimation`     | `bool`                  | 위젯이 숨겨져 있을 때 애니메이션을 유지할지 여부입니다. 기본값은 `false`입니다.           |
| `maintainSize`          | `bool`                  | 위젯이 숨겨져 있을 때 크기를 유지할지 여부입니다. 기본값은 `false`입니다.                |
| `maintainSemantics`     | `bool`                  | 위젯이 숨겨져 있을 때 의미론을 유지할지 여부입니다. 기본값은 `false`입니다.           |
| `maintainInteractivity` | `bool`                  | 위젯이 숨겨져 있을 때 상호작용성을 유지할지 여부입니다. 기본값은 `false`입니다.       |

---

## Example JSON

### Example 1: Basic Visibility

```json
{
  "type": "visibility",
  "child": {
    "type": "text",
    "data": "I am visible!"
  },
  "visible": true
}
```

### Example 2: Hidden with Replacement

```json
{
  "type": "visibility",
  "child": {
    "type": "text",
    "data": "I am hidden!"
  },
  "replacement": {
    "type": "container",
    "color": "#FF5733",
    "width": 50,
    "height": 50
  },
  "visible": false
}
```
