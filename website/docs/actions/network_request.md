# Network Request Action

The `NetworkRequestAction` class is used to make network requests in Mirai applications.

## Properties

| Property        | Type                       | Description                                                                      |
|-----------------|----------------------------|----------------------------------------------------------------------------------|
| url             | `String`                   | The URL to which the request is sent.                                            |
| method          | `Method`                   | The HTTP method to use for the request. Defaults to `Method.get`.                |
| queryParameters | `Map<String, dynamic>?`    | The query parameters to include in the request URL.                              |
| headers         | `Map<String, dynamic>?`    | The headers to include in the request.                                           |
| contentType     | `String?`                  | The content type of the request.                                                 |
| body            | `dynamic`                  | The body of the request.                                                         |
| results         | `List<MiraiNetworkResult>` | The list of results to handle different status codes. Defaults to an empty list. |

### Method

The `Method` enum defines the different HTTP methods that can be used in the Mirai Network Request Action.

| Value    | Description             |
|----------|-------------------------|
| `get`    | Sends a GET request.    |
| `post`   | Sends a POST request.   |
| `put`    | Sends a PUT request.    |
| `delete` | Sends a DELETE request. |

### MiraiNetworkResult

The `MiraiNetworkResult` class is used to handle different status codes in the Mirai Network Request Action.

| Property   | Type     | Description                                             |
|------------|----------|---------------------------------------------------------|
| statusCode | `int`    | The status code to handle.                              |
| action     | `Action` | The action to perform when the status code is received. |

## Example JSON

```json
{
  "actionType": "networkRequest",
  "url": "https://example.com/api",
  "method": "get",
  "queryParameters": {
    "page": 1
  },
  "headers": {
    "Authorization": "Bearer token"
  },
  "contentType": "application/json",
  "body": {
    "data": "example"
  },
  "results": [
    {
      "statusCode": 200,
      "action": {
        "actionType": "none"
      }
    },
    {
      "statusCode": 404,
      "action": {
        "actionType": "none"
      }
    }
  ]
}
```
