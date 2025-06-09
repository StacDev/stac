# BackdropFilter

Stac BackdropFilter allows you to build the Flutter BackdropFilter widget using JSON. This widget applies a filter to the existing painted content and then paints its child. It's commonly used to create frosted glass effects, blurs, and other visual effects.

To know more about the BackdropFilter widget in Flutter, refer to the official documentation for [Backdrop Filter](https://api.flutter.dev/flutter/widgets/BackdropFilter-class.html) and [Image Filter](https://api.flutter.dev/flutter/dart-ui/ImageFilter-class.html).

---

## Properties

| Property  | Type                   | Description                                                                                |
|-----------|------------------------|--------------------------------------------------------------------------------------------|
| `filter`  | `Map<String, dynamic>` | The image filter to apply to the existing painted content before painting the child.       |
| `child`   | `Map<String, dynamic>?`| The widget to paint after applying the filter to the existing painted content.             |
| `enabled` | `bool`                 | Whether the filter should be applied. When false, the child is drawn without a filter. Defaults to `true`. |
| `blendMode` | `String?` | The blend mode to apply when blending the filter with the existing content. Defaults to `BlendMode.srcOver`. Refer to [BlendMode](https://api.flutter.dev/flutter/dart-ui/BlendMode.html) for available values. |

---

## Filter Types

The `filter` property accepts different types of image filters. Here are the supported filter types:

### Blur Filter

| Property  | Type    | Description                                                                    |
|-----------|---------|--------------------------------------------------------------------------------|
| `type`    | `String`| Must be set to `"blur"`.                                                       |
| `sigmaX`  | `double`| The standard deviation in the horizontal direction. Defaults to `10.0`.        |
| `sigmaY`  | `double`| The standard deviation in the vertical direction. Defaults to same as `sigmaX`.|

### Dilate Filter

| Property  | Type    | Description                                                                    |
|-----------|---------|--------------------------------------------------------------------------------|
| `type`    | `String`| Must be set to `"dilate"`.                                                     |
| `radiusX` | `double`| The radius in the horizontal direction.                                         |
| `radiusY` | `double`| The radius in the vertical direction.                                           |

### Erode Filter

| Property  | Type    | Description                                                                    |
|-----------|---------|--------------------------------------------------------------------------------|
| `type`    | `String`| Must be set to `"erode"`.                                                      |
| `radiusX` | `double`| The radius in the horizontal direction.                                         |
| `radiusY` | `double`| The radius in the vertical direction.                                           |

### Compose Filter

| Property  | Type                   | Description                                                     |
|-----------|------------------------|-----------------------------------------------------------------|
| `type`    | `String`               | Must be set to `"compose"`.                                      |
| `inner`   | `Map<String, dynamic>` | The inner filter to apply first.                                 |
| `outer`   | `Map<String, dynamic>` | The outer filter to apply after the inner filter.                |

---

## Usage Recommendations

For best results with BackdropFilter:

1. Use a `Stack` to position the BackdropFilter over content you want to filter
2. Wrap the BackdropFilter in a `ClipRRect` to constrain the filter to a specific area
3. Include a semi-transparent container as the child of the BackdropFilter to make the effect visible
4. Use `fit: expand` on the Stack to ensure proper sizing

---

## Example JSON

### Example 1: Frosted Glass Effect

```json
{
  "type": "clipRRect",
  "borderRadius": {
    "all": 16
  },
  "child": {
    "type": "sizedBox",
    "height": 200,
    "width": 300,
    "child": {
      "type": "stack",
      "fit": "expand",
      "children": [
        {
          "type": "container",
          "decoration": {
            "image": {
              "src": "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg",
              "fit": "cover"
            }
          }
        },
        {
          "type": "backdropFilter",
          "filter": {
            "type": "blur",
            "sigmaX": 15.0,
            "sigmaY": 15.0
          },
          "child": {
            "type": "container",
            "decoration": {
              "color": "#80FFFFFF"
            }
          }
        }
      ]
    }
  }
}
```

### Example 2: Dilate Filter Effect

```json
{
  "type": "clipRRect",
  "borderRadius": {
    "all": 16
  },
  "child": {
    "type": "sizedBox",
    "height": 200,
    "width": 300,
    "child": {
      "type": "stack",
      "fit": "expand",
      "children": [
        {
          "type": "container",
          "decoration": {
            "image": {
              "src": "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg",
              "fit": "cover"
            }
          }
        },
        {
          "type": "backdropFilter",
          "filter": {
            "type": "dilate",
            "radiusX": 2.0,
            "radiusY": 2.0
          },
          "child": {
            "type": "container",
            "decoration": {
              "color": "#80FFFFFF"
            }
          }
        }
      ]
    }
  }
}
```

### Example 3: Compose Filter (Blur + Dilate)

```json
{
  "type": "clipRRect",
  "borderRadius": {
    "all": 16
  },
  "child": {
    "type": "sizedBox",
    "height": 200,
    "width": 300,
    "child": {
      "type": "stack",
      "fit": "expand",
      "children": [
        {
          "type": "container",
          "decoration": {
            "image": {
              "src": "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg",
              "fit": "cover"
            }
          }
        },
        {
          "type": "backdropFilter",
          "filter": {
            "type": "compose",
            "outer": {
              "type": "blur",
              "sigmaX": 5.0,
              "sigmaY": 5.0
            },
            "inner": {
              "type": "dilate",
              "radiusX": 2.0,
              "radiusY": 2.0
            }
          },
          "child": {
            "type": "container",
            "decoration": {
              "color": "#80FFFFFF"
            }
          }
        }
      ]
    }
  }
}
```

---

## Common Issues and Solutions

### Issue: Filter affects entire screen

If your backdrop filter is affecting the entire screen instead of just a specific area, make sure to:

1. Wrap the BackdropFilter in a `ClipRRect` to constrain its effects
2. Use a `Stack` with the BackdropFilter as a child positioned over the content to filter
3. Make sure the BackdropFilter is not at the root level of your widget tree

### Issue: Filter not visible

If your filter effect isn't visible:

1. Ensure the child of the BackdropFilter has a semi-transparent color (e.g., `#80FFFFFF`)
2. Check that the filter parameters (like `sigmaX` and `sigmaY` for blur) are large enough to be noticeable
3. Verify that the content behind the filter has sufficient contrast to make the effect visible