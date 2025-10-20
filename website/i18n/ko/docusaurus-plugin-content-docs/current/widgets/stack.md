# Stack

Stac Stack을 사용하면 JSON을 사용하여 Flutter stack 위젯을 빌드할 수 있습니다.
Flutter의 stack 위젯에 대해 자세히 알아보려면 [공식 문서](https://api.flutter.dev/flutter/widgets/Stack-class.html)를 참조하세요.

## Properties

| Property      | Type                         | Description                                                                                                          |
|---------------|------------------------------|----------------------------------------------------------------------------------------------------------------------|
| alignment     | `StacAlignmentDirectional`  | 위치가 지정되지 않고 부분적으로 위치가 지정된 자식들을 정렬하는 방법입니다. 기본값은 `StacAlignmentDirectional.topStart`입니다. |
| clipBehavior  | `Clip`                       | 콘텐츠를 클리핑하는 방법입니다. 기본값은 `Clip.hardEdge`입니다.                                                                |
| fit           | `StackFit`                   | 위치가 지정되지 않은 자식들의 크기를 조정하는 방법입니다. 기본값은 `StackFit.loose`입니다.                                               |
| textDirection | `TextDirection?`             | 정렬을 해결하는 데 사용할 텍스트 방향입니다.                                                                   |
| children      | `List<Map<String, dynamic>>` | 스택 내부에 표시할 위젯 리스트입니다. 기본값은 빈 리스트입니다.                                          |

## Example JSON

```json
{
  "type": "stack",
  "alignment": "center",
  "clipBehavior": "antiAlias",
  "fit": "expand",
  "textDirection": "ltr",
  "children": [
    {
      "type": "text",
      "data": "Hello, World!"
    },
    {
      "type": "container",
      "width": 100,
      "height": 100,
      "color": "#FF0000"
    }
  ]
}
```
