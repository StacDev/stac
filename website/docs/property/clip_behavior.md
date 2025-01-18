### Clip

The `clipBehavior` property determines how the content outside the box is handled:

| Value                    | Description                                                                      |
| ------------------------ | -------------------------------------------------------------------------------- |
| `none`                   | No clipping is applied (default).                                                |
| `hardEdge`               | Clips the content without anti-aliasing.                                         |
| `antiAlias`              | Clips the content with anti-aliasing for smoother edges.                         |
| `antiAliasWithSaveLayer` | Clips the content with anti-aliasing and saves an offscreen buffer for painting. |

---

## Example JSON

```json
{
  "type": "fittedBox",
  "fit": "contain",
  "alignment": "center",
  "clipBehavior": "hardEdge",
  "child": {
    "type": "text",
    "data": "Hello, World!",
    "style": {
      "fontSize": 20,
      "color": "#000000"
    }
  }
}
```
