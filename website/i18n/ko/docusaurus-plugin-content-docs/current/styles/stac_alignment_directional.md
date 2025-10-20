# StacAlignmentDirectional

Stac AlignmentDirectional을 사용하면 JSON을 통해 alignment 위젯을 처리할 수 있습니다.

`alignment` 속성은 박스 내에서 자식이 배치되는 위치를 결정합니다:

| 값             | Description                               |
| -------------- | ---------------------------------- |
| `topStart`     | 자식을 상단-시작 모서리에 정렬합니다. |
| `topCenter`    | 자식을 상단-중앙에 정렬합니다.        |
| `topEnd`       | 자식을 상단-끝 모서리에 정렬합니다.   |
| `centerStart`  | 자식을 중앙-시작에 정렬합니다.        |
| `center`       | 자식을 박스 중앙에 정렬합니다.        |
| `centerEnd`    | 자식을 중앙-끝에 정렬합니다.          |
| `bottomStart`  | 자식을 하단-시작에 정렬합니다.        |
| `bottomCenter` | 자식을 하단-중앙에 정렬합니다.        |
| `bottomEnd`    | 자식을 하단-끝에 정렬합니다.          |

## 예제 JSON

```json
{
  "type": "fittedBox",
  "alignment": "center"
}
```
