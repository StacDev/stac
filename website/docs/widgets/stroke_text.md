# MiraiStrokeText

The `MiraiStrokeText` widget allows you to create text with a stroke (outline) effect using JSON. It provides customization options for text style, alignment, direction, overflow, stroke color, and stroke width.

## Properties

| Property          | Type              | Description                                                                                     |
| ----------------- | ----------------- | ----------------------------------------------------------------------------------------------- |
| `data`            | `String`          | The text to display.                                                                            |
| `style`           | `MiraiTextStyle?` | The style to apply to the text, including font size, weight, color, etc.                        |
| `textAlign`       | `TextAlign?`      | The alignment of the text (e.g., left, center, right).                                          |
| `textDirection`   | `TextDirection?`  | The direction of the text (e.g., `ltr` for left-to-right, `rtl` for right-to-left).             |
| `overflow`        | `TextOverflow?`   | Determines how visual overflow should be handled (e.g., ellipsis, clip).                        |
| `maxLines`        | `int?`            | The maximum number of lines to display.                                                         |
| `strokeColor`     | `String?`         | The color of the stroke (outline) in a hex string format (e.g., `#FFFFFF` for white).           |
| `strokeWidth`     | `double?`         | The width of the stroke (outline).                                                              |
| `textScaleFactor` | `double?`         | The scale factor for text, controlling the size of the font in logical pixels per device pixel. |

## Example JSON

```json
{
  "type": "strokeText",
  "data": "Outlined Text Example",
  "style": {
    "color": "#DFD1D1FF",
    "fontSize": 20.0,
    "fontWeight": "bold"
  },
  "textAlign": "center",
  "strokeColor": "#241E1EFF",
  "strokeWidth": 2.0,
  "maxLines": 1
}
```
