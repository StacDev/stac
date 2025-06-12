# Multi Action

The `StacMultiAction` allows you to execute multiple actions with ease.

## Multi Action Properties

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| actions | `List<Map<String, dynamic>?>?` | The list of actions to be performed |
| sync | `bool` | Whether to execute the actions in syncronous or parallel. Defaults to `false`. |

## Multi Action JSON

```json
{
  "actionType": "multiAction",
  "sync": true,
  "actions": [
    {
        "actionType": "showSnackBar",
        "content": {
            "type": "text",
            "data": "Executing request..."
        },
        "action": {
            "label": "Done",
            "textColor": "#73C2FB",
            "onPressed": {}
        },
        "behavior": "floating"
    },
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
    },
    {
        "actionType": "showSnackBar",
        "content": {
            "type": "text",
            "data": "Request executed"
        },
        "action": {
            "label": "Done",
            "textColor": "#73C2FB",
            "onPressed": {}
        },
        "behavior": "floating"
    }
  ]
}
```