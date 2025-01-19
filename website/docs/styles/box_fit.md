# BoxFit

The `fit` property supports the following values:

| Value       | Description                                                                         |
| ----------- | ----------------------------------------------------------------------------------- |
| `fill`      | Stretches the child to fill the box, distorting the aspect ratio if necessary.      |
| `contain`   | Scales the child to fit within the box while maintaining its aspect ratio.          |
| `cover`     | Scales the child to completely cover the box, possibly cropping parts of it.        |
| `fitWidth`  | Scales the child to match the width of the box, possibly overflowing vertically.    |
| `fitHeight` | Scales the child to match the height of the box, possibly overflowing horizontally. |
| `none`      | Positions the child without scaling, potentially allowing it to overflow the box.   |
| `scaleDown` | Scales the child down to fit within the box only if it is larger than the box.      |

## Example JSON

```json
{
  "type": "fittedBox",
  "fit": "contain"
}
```
