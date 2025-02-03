# Navigate Action

The Stac Navigate Action allows you to perform navigation actions in a Flutter application using JSON.
To know more about navigation in Flutter, refer to the [official documentation](https://api.flutter.dev/flutter/widgets/Navigator-class.html).

## Properties

| Property         | Type                    | Description                                                                 |
|------------------|-------------------------|-----------------------------------------------------------------------------|
| request          | `StacNetworkRequest?`  | The network request to perform before navigation.                           |
| widgetJson       | `Map<String, dynamic>?` | The JSON representation of the widget to navigate to.                       |
| assetPath        | `String?`               | The asset path of the widget to navigate to.                                |
| routeName        | `String?`               | The name of the route to navigate to.                                       |
| navigationStyle  | `NavigationStyle?`      | The style of navigation (e.g., push, pop, pushReplacement, etc.).           |
| result           | `Map<String, dynamic>?` | The result to return when popping the route.                                |
| arguments        | `Map<String, dynamic>?` | The arguments to pass to the route.                                         |


### NavigationStyle

The `NavigationStyle` enum defines the different styles of navigation that can be used in the Stac Navigate Action.

| Value                   | Description                                               |
|-------------------------|-----------------------------------------------------------|
| `push`                  | Pushes a new route onto the navigator stack.              |
| `pop`                   | Pops the current route off the navigator stack.           |
| `pushReplacement`       | Replaces the current route with a new route.              |
| `pushAndRemoveAll`      | Pushes a new route and removes all the previous routes.   |
| `popAll`                | Pops all the routes off the navigator stack.              |
| `pushNamed`             | Pushes a named route onto the navigator stack.            |
| `pushNamedAndRemoveAll` | Pushes a named route and removes all the previous routes. |
| `pushReplacementNamed`  | Replaces the current route with a named route.            |

## Example JSON

### Navigate with a Network Request

```json
{
  "actionType": "navigate",
  "request": {
    "url": "https://example.com/api",
    "method": "get"
  },
  "navigationStyle": "push"
}
```

### Navigate with a Widget JSON

```json
{
  "actionType": "navigate",
  "widgetJson": {
    "type": "scaffold",
    "appBar": {
      "type": "appBar",
      "title": {
        "type": "text",
        "data": "My App"
      }
    },
    "body": {
      "type": "center",
      "child": {
        "type": "text",
        "data": "Hello, World!"
      }
    }
  },
  "navigationStyle": "push"
}
```

### Navigate with an Asset Path

```json
{
  "actionType": "navigate",
  "assetPath": "assets/widgets/my_widget.json",
  "navigationStyle": "push"
}
```

### Navigate with a Route Name

```json
{
  "actionType": "navigate",
  "routeName": "/home",
  "navigationStyle": "pushNamed"
}
```