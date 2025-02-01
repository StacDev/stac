# AspectRatio

Stac aspectRatio allows you to build the Flutter AspectRatio widget using JSON.
To know more about the aspectRatio widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/AspectRatio-class.html).

---

## Properties

| Property      | Type                    | Description                                                                                      |
|---------------|-------------------------|--------------------------------------------------------------------------------------------------|
| `aspectRatio` | `double`                | The desired width-to-height ratio for the child widget. Defaults to `1` (a square aspect ratio). |
| `child`       | `Map<String, dynamic>?` | The child widget that should adhere to the specified aspect ratio, represented as a JSON object. |

---

## Example JSON

```json
{
  "type": "aspectRatio",
  "aspectRatio": 1.33,
  "child": {
    "type": "container",
    "color": "#FF5733",
    "width": 100,
    "height": 100
  }
}
```
