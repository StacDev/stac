# Network Request Action

`NetworkRequestAction` 클래스는 Stac 애플리케이션에서 네트워크 요청을 만드는 데 사용됩니다.

## 속성

| Property        | Type                       | Description                                                                      |
|-----------------|----------------------------|----------------------------------------------------------------------------------|
| url             | `String`                   | 요청을 보낼 URL.                                            |
| method          | `Method`                   | 요청에 사용할 HTTP 메서드. 기본값은 `Method.get`.                |
| queryParameters | `Map<String, dynamic>?`    | 요청 URL에 포함할 쿼리 파라미터.                              |
| headers         | `Map<String, dynamic>?`    | 요청에 포함할 헤더.                                           |
| contentType     | `String?`                  | 요청의 콘텐츠 타입.                                                 |
| body            | `dynamic`                  | 요청의 본문.                                                         |
| results         | `List<StacNetworkResult>` | 다양한 상태 코드를 처리할 결과 목록. 기본값은 빈 목록. |

### Method

`Method` enum은 Stac Network Request Action에서 사용할 수 있는 다양한 HTTP 메서드를 정의합니다.

| Value    | Description             |
|----------|-------------------------|
| `get`    | GET 요청을 보냅니다.    |
| `post`   | POST 요청을 보냅니다.   |
| `put`    | PUT 요청을 보냅니다.    |
| `delete` | DELETE 요청을 보냅니다. |

### StacNetworkResult

`StacNetworkResult` 클래스는 Stac Network Request Action에서 다양한 상태 코드를 처리하는 데 사용됩니다.

| Property   | Type     | Description                                             |
|------------|----------|---------------------------------------------------------|
| statusCode | `int`    | 처리할 상태 코드.                              |
| action     | `Action` | 상태 코드를 받았을 때 수행할 action. |

## 예제 JSON

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
