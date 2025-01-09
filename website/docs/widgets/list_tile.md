# ListTile

Mirai list tile allows you to build the Flutter list tile widget using JSON.
To know more about the list tile widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/ListTile-class.html).

## Properties

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| onTap | `Map<String,dynamic>` | Called when the user taps this list tile. |
| onLongPress | `Map<String,dynamic>` | Called when the user long-presses on this list tile. |
| leading | `Map<String,dynamic>` | A widget to display before the title. |
| title | `Map<String,dynamic>` | The primary content of the list tile. |
| subtitle | `Map<String,dynamic>` | Additional content displayed below the title. |
| trailing | `Map<String,dynamic>` | A widget to display after the title. |
| isThreeLine | `bool` | Whether this list tile is intended to display three lines of text. |
| dense |  `bool` | Whether this list tile is part of a vertically dense list. |
| style | `ListTileStyle` | Defines the font used for the title. |
| selectedColor | `String` | Defines the color used for icons and text when the list tile is selected. |
| iconColor | `String` | Defines the default color for leading and trailing icons. |
| textColor | `String` | Defines the text color for the title, subtitle, leading, and trailing. |
| contentPadding | `MiraiEdgeInsets` | The tile's internal padding. |
| enabled | `bool` | Whether this list tile is interactive. |
| selected | `bool` | If this tile is also enabled then icons and text are rendered with the same color. |
| focusColor | `String` | The color for the tile's Material when it has the input focus. |
| hoverColor | `String` | The color for the tile's Material when a pointer is hovering over it. |
| autoFocus | `String` | True if this widget will be selected as the initial focus when no other node in its scope is currently focused. |
| tileColor | `String` | Defines the background color of ListTile when selected is false. |
| selectedTileColor | `String` | Defines the background color of ListTile when selected is true. |
| enableFeedback | `bool` | Whether detected gestures should provide acoustic and/or haptic feedback. |
| horizontalTitleGap | `double` | The horizontal gap between the titles and the leading/trailing widgets. |
| minVerticalPadding | `double` | The minimum padding on the top and bottom of the title and subtitle widgets. |
| minLeadingWidth | `double` | The minimum width allocated for the ListTile.leading widget. |

## Example JSON

```json
{
  "type": "column",
  "mainAxisAlignment": "start",
  "crossAxisAlignment": "center",
  "children": [
    {
      "type": "sizedBox",
      "height": 12
    },
    {
      "type": "listTile",
      "leading": {
        "type": "image",
        "src": "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
      },
      "title": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Andrew Symonds",
          "style": {
            "fontSize": 18
          }
        }
      },
      "subtitle": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Andrew Symonds was an Australian international cricketer, who played all three formats as a batting all-rounder. Commonly nicknamed \"Roy\", he was a key member of two World Cup winning squads. Symonds played as a right-handed, middle order batsman and alternated between medium pace and off-spin",
          "style": {
            "fontSize": 14
          }
        }
      },
      "trailing": {
        "type": "icon",
        "iconType": "material",
        "icon": "more_vert",
        "size": 24
      }
    },
    {
      "type": "sizedBox",
      "height": 12
    },
    {
      "type": "listTile",
      "leading": {
        "type": "image",
        "src": "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
      },
      "title": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Adam Gilchrist",
          "style": {
            "fontSize": 18
          }
        }
      },
      "subtitle": {
        "type": "padding",
        "padding": {
          "top": 10
        },
        "child": {
          "type": "text",
          "data": "Adam Craig Gilchrist is an Australian cricket commentator and former international cricketer and captain of the Australia national cricket team. He was an attacking left-handed batsman and record-breaking wicket-keeper",
          "style": {
            "fontSize": 14
          }
        }
      },
      "trailing": {
        "type": "icon",
        "iconType": "material",
        "icon": "more_vert",
        "size": 24
      }
    }
  ]
}
```
