# NetworkWidget

The Stac NetworkWidget allows you to build a widget that makes a network request and renders a widget based on the response using JSON.

## Properties

| Property | Type                  | Description                          |
|----------|-----------------------|--------------------------------------|
| request  | `StacNetworkRequest` | The network request configuration.   |

## Example JSON

```json
{
  "type": "networkWidget",
  "request": {
    "url": "https://api.example.com/data",
    "method": "get",
    "headers": {
      "Authorization": "Bearer token"
    }
  }
}
```