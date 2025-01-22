# Text

Mirai text allows you to build the Flutter text widget using JSON.
To know more about the text widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Text-class.html).

## Properties

| Property        | Type                  | Description                                        |
|-----------------|-----------------------|----------------------------------------------------|
| data            | `String`              | The text to display.                               |
| children        | `List<MiraiTextSpan>` | The list of text spans to display.                 |
| style           | `MiraiTextStyle?`     | The style to apply to the text.                    |
| textAlign       | `TextAlign?`          | The alignment of the text.                         |
| textDirection   | `TextDirection?`      | The direction of the text.                         |
| softWrap        | `bool?`               | Whether the text should break at soft line breaks. |
| overflow        | `TextOverflow?`       | How visual overflow should be handled.             |
| textScaleFactor | `double?`             | The number of font pixels for each logical pixel.  |
| maxLines        | `int?`                | The maximum number of lines to display.            |
| semanticsLabel  | `String?`             | The semantics label for the text.                  |
| textWidthBasis  | `TextWidthBasis?`     | The width basis for the text.                      |
| selectionColor  | `String?`             | The color of the text selection.                   |

## Example JSON

```json
{
  "type":  "text",
  "data":  "Hello, World!",
  "style":  {
    "color":  "#FFFFFF",
    "fontSize":  24.0
  }
}
```
