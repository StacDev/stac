# Modal Bottom Sheet Action

The `StacModalBottomSheetAction` class is used to display a modal bottom sheet in Stac applications.

## Properties

| Property            | Type                          | Description                                                                 |
|---------------------|-------------------------------|-----------------------------------------------------------------------------|
| widget              | `Map<String, dynamic>?`       | The widget to display inside the modal bottom sheet.                        |
| request             | `StacNetworkRequest?`        | The network request to perform before displaying the modal bottom sheet.    |
| assetPath           | `String?`                     | The asset path of the widget to display inside the modal bottom sheet.      |
| backgroundColor     | `String?`                     | The background color of the modal bottom sheet.                             |
| barrierLabel        | `String?`                     | The semantic label for the modal barrier.                                   |
| elevation           | `double?`                     | The elevation of the modal bottom sheet.                                    |
| shape               | `StacBorder?`                | The shape of the modal bottom sheet.                                        |
| constraints         | `StacBoxConstraints?`        | The constraints for the modal bottom sheet.                                 |
| barrierColor        | `String?`                     | The color of the modal barrier.                                             |
| isScrollControlled  | `bool`                        | Whether the modal bottom sheet is scroll controlled. Defaults to `false`.   |
| useRootNavigator    | `bool`                        | Whether to use the root navigator. Defaults to `false`.                     |
| isDismissible       | `bool`                        | Whether the modal bottom sheet is dismissible. Defaults to `true`.          |
| enableDrag          | `bool`                        | Whether the modal bottom sheet can be dragged. Defaults to `true`.          |
| showDragHandle      | `bool?`                       | Whether to show a drag handle on the modal bottom sheet.                    |
| useSafeArea         | `bool`                        | Whether to use the safe area. Defaults to `false`.                          |

## Example JSON

### Modal Bottom Sheet with a Widget JSON

```json
{
  "actionType": "showModalBottomSheet",
  "widget": {
    "type": "container",
    "height": 200,
    "color": "amber",
    "child": {
      "type": "center",
      "child": {
        "type": "column",
        "mainAxisAlignment": "center",
        "mainAxisSize": "min",
        "children": [
          {
            "type": "text",
            "data": "Modal BottomSheet"
          },
          {
            "type": "elevatedButton",
            "child": {
              "type": "text",
              "data": "Close BottomSheet"
            },
            "onPressed": {
              "actionType": "pop"
            }
          }
        ]
      }
    }
  }
}
```

### Modal Bottom Sheet with an Asset Path

```json
{
  "actionType": "showModalBottomSheet",
  "assetPath": "assets/widgets/modal_bottom_sheet.json"
}
```

### Modal Bottom Sheet with a Network Request

```json
{
  "actionType": "showModalBottomSheet",
  "request": {
    "url": "https://example.com/api",
    "method": "get"
  }
}
```