# NetworkWidget

Stac NetworkWidget을 사용하면 네트워크 요청을 수행하고 JSON을 사용하여 응답에 기반한 위젯을 렌더링하는 위젯을 빌드할 수 있습니다.

## 속성

| Property | Type                  | Description                          |
|----------|-----------------------|--------------------------------------|
| request  | `StacNetworkRequest` | 네트워크 요청 구성입니다.   |

## 예제 JSON

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
