# RefreshIndicator

The Mirai RefreshIndicator allows you to build a Flutter RefreshIndicator widget using JSON.
To know more about the RefreshIndicator widget in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/material/RefreshIndicator-class.html).

## Properties

| Property        | Type                          | Description                                                                                                                              |
|-----------------|-------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| child           | `Map<String, dynamic>?`       | The widget below this widget in the tree.                                                                                                |
| displacement    | `double`                      | The distance from the child's top or bottom edge to where the refresh indicator starts. Defaults to `40`.                                |
| edgeOffset      | `double`                      | The offset where the indicator starts. Defaults to `0`.                                                                                  |
| onRefresh       | `Map<String, dynamic>?`       | The callback that is called when the user has dragged the refresh indicator far enough to demonstrate that they want the app to refresh. |
| color           | `String?`                     | The color of the refresh indicator.                                                                                                      |
| backgroundColor | `String?`                     | The background color of the refresh indicator.                                                                                           |
| semanticsLabel  | `String?`                     | The semantic label for the refresh indicator.                                                                                            |
| semanticsValue  | `String?`                     | The semantic value for the refresh indicator.                                                                                            |
| strokeWidth     | `double`                      | The width of the refresh indicator's stroke. Defaults to `RefreshProgressIndicator.defaultStrokeWidth`.                                  |
| triggerMode     | `RefreshIndicatorTriggerMode` | The mode that controls when the refresh indicator will be triggered. Defaults to `RefreshIndicatorTriggerMode.onEdge`.                   |

## Example JSON

```json
{
  "type": "refreshIndicator",
  "onRefresh": {
    "actionType": "request",
    "url": "https://raw.githubusercontent.com/buildMirai/mirai/main/examples/mirai_gallery/assets/json/list_view_example.json",
    "method": "get",
    "contentType": "application/json"
  }
}
```