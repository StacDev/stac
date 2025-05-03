# ClipRRect

The `ClipRRect` widget in Stac allows you to clip its child using rounded rectangles. This is useful when you want to create UI elements with rounded corners.

## Usage

```json
{
  "type": "clipRRect",
  "borderRadius": 8.0,
  "clipBehavior": "antiAlias",
  "child": {
    "type": "container",
    "color": "#FF0000",
    "height": 100,
    "width": 100
  }
}
```

## Properties

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `borderRadius` | `StacBorderRadius` | `StacBorderRadius()` (0 for all corners) | The border radius of the rounded corners. Can be specified as a single value, a list of 4 values, or an object with individual corner values. |
| `clipBehavior` | `Clip` | `antiAlias` | The clipping behavior when content extends beyond the rounded rectangle. |
| `child` | `Widget` | Required | The widget to clip with rounded corners. |

## BorderRadius Format Options

The `borderRadius` property can be specified in multiple formats:

### Single Value (applies to all corners)

```json
{
  "type": "clipRRect",
  "borderRadius": 8.0,
  "child": { ... }
}
```

### List Format (topLeft, topRight, bottomLeft, bottomRight)

```json
{
  "type": "clipRRect",
  "borderRadius": [8.0, 16.0, 8.0, 16.0],
  "child": { ... }
}
```

### Object Format (specify each corner individually)

```json
{
  "type": "clipRRect",
  "borderRadius": {
    "topLeft": 8.0,
    "topRight": 16.0,
    "bottomLeft": 8.0,
    "bottomRight": 16.0
  },
  "child": { ... }
}
```

## Clip Behavior Options

The `clipBehavior` property accepts the following values:

- `"antiAlias"` (default): Clip using anti-aliasing for smoother edges
- `"hardEdge"`: Clip without anti-aliasing for sharper edges
- `"antiAliasWithSaveLayer"`: Anti-aliased clipping with an offscreen buffer (higher quality but slower)
- `"none"`: No clipping (not recommended for ClipRRect)

## Examples

### Basic Rounded Container

```json
{
  "type": "clipRRect",
  "borderRadius": 12.0,
  "child": {
    "type": "container",
    "color": "#2196F3",
    "height": 100,
    "width": 200
  }
}
```

### Rounded Image

```json
{
  "type": "clipRRect",
  "borderRadius": 8.0,
  "child": {
    "type": "image",
    "src": "https://example.com/image.jpg",
    "width": 200,
    "height": 200,
    "fit": "cover"
  }
}
```

### Card with Different Corner Radii

```json
{
  "type": "clipRRect",
  "borderRadius": {
    "topLeft": 20.0,
    "topRight": 20.0,
    "bottomLeft": 0.0,
    "bottomRight": 0.0
  },
  "child": {
    "type": "container",
    "color": "#FFFFFF",
    "padding": 16.0,
    "child": {
      "type": "column",
      "children": [
        {
          "type": "text",
          "text": "Card Title",
          "style": {
            "fontSize": 18.0,
            "fontWeight": "bold"
          }
        },
        {
          "type": "text",
          "text": "Card content goes here"
        }
      ]
    }
  }
}
```

## Related Widgets

- [Container](container.md) - Often used as a child of ClipRRect
- [Card](card.md) - A pre-styled container with elevation and rounded corners