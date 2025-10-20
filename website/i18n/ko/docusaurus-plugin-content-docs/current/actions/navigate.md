# Navigate Action

Stac Navigate Action을 사용하면 JSON을 통해 Flutter 애플리케이션에서 네비게이션 작업을 수행할 수 있습니다.
Flutter의 네비게이션에 대한 자세한 내용은 [공식 문서](https://api.flutter.dev/flutter/widgets/Navigator-class.html)를 참조하세요.

## 속성

| Property         | Type                    | Description                                                                 |
|------------------|-------------------------|-----------------------------------------------------------------------------|
| request          | `StacNetworkRequest?`  | 네비게이션 전에 수행할 네트워크 요청.                           |
| widgetJson       | `Map<String, dynamic>?` | 네비게이션할 widget의 JSON 표현.                       |
| assetPath        | `String?`               | 네비게이션할 widget의 asset 경로.                                |
| routeName        | `String?`               | 네비게이션할 라우트의 이름.                                       |
| navigationStyle  | `NavigationStyle?`      | 네비게이션 스타일 (예: push, pop, pushReplacement 등).           |
| result           | `Map<String, dynamic>?` | 라우트를 pop할 때 반환할 결과.                                |
| arguments        | `Map<String, dynamic>?` | 라우트에 전달할 인자.                                         |


### NavigationStyle

`NavigationStyle` enum은 Stac Navigate Action에서 사용할 수 있는 다양한 네비게이션 스타일을 정의합니다.

| Value                   | Description                                               |
|-------------------------|-----------------------------------------------------------|
| `push`                  | 네비게이터 스택에 새 라우트를 푸시합니다.              |
| `pop`                   | 네비게이터 스택에서 현재 라우트를 pop합니다.           |
| `pushReplacement`       | 현재 라우트를 새 라우트로 교체합니다.              |
| `pushAndRemoveAll`      | 새 라우트를 푸시하고 이전의 모든 라우트를 제거합니다.   |
| `popAll`                | 네비게이터 스택에서 모든 라우트를 pop합니다.              |
| `pushNamed`             | 네비게이터 스택에 명명된 라우트를 푸시합니다.            |
| `pushNamedAndRemoveAll` | 명명된 라우트를 푸시하고 이전의 모든 라우트를 제거합니다. |
| `pushReplacementNamed`  | 현재 라우트를 명명된 라우트로 교체합니다.            |

## 예제 JSON

### Network Request를 사용한 네비게이션

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

### Widget JSON을 사용한 네비게이션

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

### Asset Path를 사용한 네비게이션

```json
{
  "actionType": "navigate",
  "assetPath": "assets/widgets/my_widget.json",
  "navigationStyle": "push"
}
```

### Route Name을 사용한 네비게이션

```json
{
  "actionType": "navigate",
  "routeName": "/home",
  "navigationStyle": "pushNamed"
}
```
