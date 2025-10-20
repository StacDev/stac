# Table Column Width

StacTableColumnWidth를 사용하면 JSON을 통해 Flutter TableColumnWidth 클래스를 구성할 수 있습니다.
Flutter의 TableColumnWidth 클래스에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/rendering/TableColumnWidth-class.html)를 참조하세요.

## 속성

| Property  | Type                     | Description                                                                                                                           |
| ----- | ------------------------ | ------------------------------------------------------------------------------------------------------------------------------ |
| type  | `StacTableColumnWidth?` | 사용할 columnWidth의 타입을 정의합니다. `fixedColumnWidth`, `flexColumnWidth`, `fractionColumnWidth` 및 `intrinsicColumnWidth`가 가능합니다. |
| value | `double?`                | columnWidth에 할당할 값을 정의합니다. 예: `5.0`은 `fixedColumnWidth`의 경우 `5px`이 됩니다.                                       |

## Example

```json
{
    "type": "fixedColumnWidth",
    "value": 200.0
}
```
