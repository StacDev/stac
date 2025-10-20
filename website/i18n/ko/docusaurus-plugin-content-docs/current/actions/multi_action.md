# Multi Action

`StacMultiAction`을 사용하면 여러 작업을 쉽게 실행할 수 있습니다.

## Multi Action 속성

| Property | Type              | Description                                       |
| --- |-------------------|---------------------------------------------------|
| actions | `List<Map<String, dynamic>?>?` | 수행할 action 목록 |
| sync | `bool` | action을 동기적으로 실행할지 병렬로 실행할지 여부. 기본값은 `false`. |

## Multi Action JSON

이 예제는 `StacShowSnackBarAction`을 통해 스낵바를 표시하고, `StacNetworkRequest`를 통해 네트워크 요청을 실행한 후 바로 또 다른 스낵바를 표시합니다.

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
