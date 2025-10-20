# Dialog Action

`StacDialogAction` 클래스는 Stac 애플리케이션에서 다이얼로그를 표시하는 데 사용됩니다.

## 속성

| Property               | Type                          | Description                                                                 |
|------------------------|-------------------------------|-----------------------------------------------------------------------------|
| widget                 | `Map<String, dynamic>?`       | 다이얼로그 내부에 표시할 widget.                                    |
| request                | `StacNetworkRequest?`        | 다이얼로그를 표시하기 전에 수행할 네트워크 요청.                |
| assetPath              | `String?`                     | 다이얼로그 내부에 표시할 widget의 asset 경로.                  |
| barrierDismissible     | `bool`                        | 다이얼로그 외부를 탭하여 닫을 수 있는지 여부. 기본값은 `true`.   |
| barrierColor           | `String?`                     | 모달 배리어의 색상.                                             |
| barrierLabel           | `String?`                     | 모달 배리어의 시맨틱 레이블.                                   |
| useSafeArea            | `bool`                        | 안전 영역을 사용할지 여부. 기본값은 `true`.                           |
| traversalEdgeBehavior  | `TraversalEdgeBehavior?`      | 다이얼로그의 traversal edge 동작.                                  |

## 예제 JSON

### Widget JSON을 사용한 다이얼로그

```json
{
  "actionType": "showDialog",
  "widget": {
    "type": "text",
    "data": "Hello, World!"
  }
}
```

### Request JSON을 사용한 다이얼로그

```json
{
  "actionType": "showDialog",
  "request": {
    "url": "https://example.com/api",
    "method": "get"
  }
}
```

### Asset JSON을 사용한 다이얼로그

```json
{
  "actionType": "showDialog",
  "assetPath": "assets/dialog.json"
}
```
