# Dialog Action

The `MiraiDialogAction` class is used to display a dialog in Mirai applications.

## Properties

| Property               | Type                          | Description                                                                 |
|------------------------|-------------------------------|-----------------------------------------------------------------------------|
| widget                 | `Map<String, dynamic>?`       | The widget to display inside the dialog.                                    |
| request                | `MiraiNetworkRequest?`        | The network request to perform before displaying the dialog.                |
| assetPath              | `String?`                     | The asset path of the widget to display inside the dialog.                  |
| barrierDismissible     | `bool`                        | Whether the dialog is dismissible by tapping outside. Defaults to `true`.   |
| barrierColor           | `String?`                     | The color of the modal barrier.                                             |
| barrierLabel           | `String?`                     | The semantic label for the modal barrier.                                   |
| useSafeArea            | `bool`                        | Whether to use the safe area. Defaults to `true`.                           |
| traversalEdgeBehavior  | `TraversalEdgeBehavior?`      | The traversal edge behavior of the dialog.                                  |

## Example JSON

### Dialog with a Widget JSON

```json
{
  "actionType": "showDialog",
  "widget": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```

### Dialog with a Request JSON

```json
{
  "actionType": "showDialog",
  "request": {
    "url": "https://example.com/api",
    "method": "get"
  }
}
```

### Dialog with an Asset JSON

```json
{
  "actionType": "showDialog",
  "assetPath": "assets/dialog.json"
}
```