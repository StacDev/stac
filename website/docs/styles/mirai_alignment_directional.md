# MiraiAlignmentDirectional

Mirai AlignmentDirectional allows you to handling alignment widget using JSON.

The `alignment` property determines where the child is positioned within the box:

| Value          | Description                               |
| -------------- | ----------------------------------------- |
| `topStart`     | Aligns the child to the top-start corner. |
| `topCenter`    | Aligns the child to the top-center.       |
| `topEnd`       | Aligns the child to the top-end corner.   |
| `centerStart`  | Aligns the child to the center-start.     |
| `center`       | Centers the child in the box.             |
| `centerEnd`    | Aligns the child to the center-end.       |
| `bottomStart`  | Aligns the child to the bottom-start.     |
| `bottomCenter` | Aligns the child to the bottom-center.    |
| `bottomEnd`    | Aligns the child to the bottom-end.       |

## Example JSON

```json
{
  "type": "fittedBox",
  "alignment": "center"
}
```
