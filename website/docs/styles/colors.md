# Color

The `Color` that can apply to different Flutter widgets for example text color, background color, border color etc. [official documentation](https://api.flutter.dev/flutter/material/Colors-class.html).

## Types of color

There are three different types of colors. Theme color, Hex color and Name color.

### Theme colors

The Theme colors are theme based colors which we define in theme.

These are the theme colors [`primary`, `onPrimary`,`primaryContainer`, `onPrimaryContainer`, `secondary`, `onSecondary`, `secondaryContainer`, `onSecondaryContainer`, `tertiary`, `onTertiary`, `tertiaryContainer`, `onTertiaryContainer`, `error`, `onError`, `errorContainer`, `onErrorContainer`, `background`, `onBackground`, `surface`, `onSurface`, `surfaceVariant`, `onSurfaceVariant`, `outline`, `outlineVariant`, `shadow`, `scrim`, `inverseSurface`, `onInverseSurface`, `inversePrimary`, `surfaceTint`, `scaffoldBackgroundColor`].

### Hex colors

The Hex colors will allows to define custom hex value. It could be 6 digit Hex code(`#FF0000`) or it could be 8 digit Hex code(`#88FF0000`) where first 2 digits are for opacity.

### Name colors

The Name colors will allows to provide color by using color names and shades or opacity.

These are the name colors [`amber`, `amberAccent`, `black`, `blue`, `blueAccent`, `blueGrey`, `brown`, `cyan`, `cyanAccent`, `deepOrange`, `deepOrangeAccent`, `deepPurple`, `deepPurpleAccent`, `green`, `greenAccent`, `grey`, `indigo`, `indigoAccent`, `lightBlue`, `lightBlueAccent`, `lightGreen`, `lightGreenAccent`, `lime`, `limeAccent`, `orange`, `orangeAccent`, `pink`, `pinkAccent`, `purple`, `purpleAccent`, `red`, `redAccent`, `teal`, `tealAccent`, `transparent`, `white`, `yellow`, `yellowAccent`].

These are the color shades for all the colors except white and black [`50`, `100`, `200`, `300`, `400`, `500`, `600`, `700`, `800`, `900`].

These are the opacities for white color [`10`, `12`, `24`, `30`, `38`, `54`, `60`, `70`].

These are the opacities for black color [`12`, `26`, `38`, `45`, `54`, `87`].

## Example

### Example 1: Theme color
```json
{
  "type": "text",
  "data": "Hello World!",
  "style": {
    "color": "primary"
  }
}
```

### Example 2: Hex color
```json
{
  "type": "text",
  "data": "Hello World!",
  "style": {
    "color": "#000000"
  }
}
```

### Example 3: Name color
```json
{
  "type": "text",
  "data": "Hello World!",
  "style": {
    "color": "red100"
  }
}
```
