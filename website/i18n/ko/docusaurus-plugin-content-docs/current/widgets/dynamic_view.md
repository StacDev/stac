# Dynamic View

## 개요

`dynamicView` widget을 사용하면 API에서 데이터를 가져와서 템플릿을 사용하여 렌더링할 수 있습니다. 이 강력한 기능은 원격 데이터 소스를 기반으로 동적 콘텐츠 렌더링을 가능하게 하므로, 커스텀 코드를 작성하지 않고도 데이터 기반 UI를 만들기에 완벽합니다.

## 기능

- 모든 REST API 엔드포인트에서 데이터 가져오기
- placeholder 구문을 사용하여 템플릿에 데이터 적용
- 점 표기법과 배열 인덱싱을 사용하여 중첩된 데이터 추출
- 단일 객체와 데이터 목록 모두 처리
- itemTemplate 기능을 사용하여 항목 목록 렌더링
- 로딩 및 오류 상태 사용자 정의
- 복잡한 API 응답 내에서 특정 데이터 경로 타겟팅

## 속성

| Property          | Type                   | 필수 여부 | Description                                                        |
| ------------- | ---------------------- | --------- | ----------------------------------------------------------- |
| request       | `StacNetworkRequest`   | 예        | API 요청 구성 (url, method, headers 등)                      |
| template      | `Map<String, dynamic>` | 예        | API 응답의 데이터로 렌더링할 템플릿                           |
| targetPath    | `String`               | 아니오    | API 응답에서 특정 데이터를 추출할 경로                        |
| resultTarget  | `String`               | 아니오    | 템플릿에 데이터를 적용할 때 사용할 키 이름                     |
| loaderWidget  | `Map<String, dynamic>` | 아니오    | 데이터를 로딩하는 동안 표시할 커스텀 widget                   |
| errorWidget   | `Map<String, dynamic>` | 아니오    | 오류가 발생했을 때 표시할 커스텀 widget                       |
| itemTemplate  | `Map<String, dynamic>` | 아니오    | API 응답의 항목 목록에서 각 항목을 렌더링할 템플릿             |
| emptyTemplate | `Map<String, dynamic>` | 아니오    | API 응답에 빈 목록이 포함된 경우 렌더링할 템플릿              |

## 기본 사용법

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://api.example.com/user/1",
    "method": "get"
  },
  "template": {
    "type": "text",
    "data": "Hello, {{name}}!"
  }
}
```

## 데이터 Placeholder

이중 중괄호 `{{placeholder}}`를 사용하여 API 응답의 데이터를 템플릿에 삽입합니다:

- 중첩된 데이터의 경우 점 표기법을 사용합니다: `{{user.address.city}}`
- 배열 요소의 경우 인덱스 표기법을 사용합니다: `{{users[0].name}}` 또는 결합된 경로: `{{items.0.title}}`
- 객체 내의 배열 요소의 경우 결합된 표기법을 사용합니다: `{{data.users[2].profile.name}}`

## 예제

### 로딩 및 오류 상태가 있는 사용자 프로필 예제

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://dummyjson.com/users/1",
    "method": "get"
  },
  "loaderWidget": {
    "type": "center",
    "child": {
      "type": "column",
      "children": [
        {
          "type": "text",
          "data": "Loading..."
        },
        {
          "type": "circularProgressIndicator"
        }
      ]
    }
  },
  "errorWidget": {
    "type": "center",
    "child": {
      "type": "text",
      "data": "Error fetching user profile"
    }
  },
  "template": {
    "type": "column",
    "children": [
      {
        "type": "container",
        "padding": 16,
        "child": {
          "type": "column",
          "crossAxisAlignment": "start",
          "children": [
            {
              "type": "image",
              "src": "{{image}}",
              "width": 100,
              "height": 100
            },
            {
              "type": "text",
              "style": {
                "fontSize": 24,
                "fontWeight": "w700"
              },
              "data": "{{firstName}} {{lastName}}"
            },
            {
              "type": "sizedBox",
              "height": 8
            },
            {
              "type": "text",
              "style": {
                "fontSize": 16,
                "color": "#666666"
              },
              "data": "Email: {{email}}"
            },
            {
              "type": "text",
              "style": {
                "fontSize": 16,
                "color": "#666666"
              },
              "data": "Phone: {{phone}}"
            }
          ]
        }
      }
    ]
  }
}
```

### itemTemplate을 사용한 목록 예제

API가 항목 목록을 반환할 때, `itemTemplate` 속성을 사용하여 각 항목을 어떻게 렌더링할지 정의합니다:

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://dummyjson.com/users",
    "method": "get"
  },
  "targetPath": "users",
  "template": {
    "type": "listView",
    "itemTemplate": {
      "type": "listTile",
      "title": {
        "type": "text",
        "data": "{{firstName}} {{lastName}}"
      },
      "subtitle": {
        "type": "text",
        "data": "{{email}}"
      },
      "leading": {
        "type": "circleAvatar",
        "backgroundImage": "{{image}}"
      }
    }
  }
}
```

### 빈 상태 처리

API가 빈 목록을 반환할 때 사용자 친화적인 메시지를 표시하려면 `emptyTemplate` 속성을 사용합니다:

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://api.example.com/products",
    "method": "get"
  },
  "targetPath": "products",
  "template": {
    "type": "gridView",
    "crossAxisCount": 2,
    "itemTemplate": {
      "type": "card",
      "child": {
        "type": "column",
        "children": [
          {
            "type": "image",
            "src": "{{image_url}}"
          },
          {
            "type": "text",
            "data": "{{name}}"
          },
          {
            "type": "text",
            "data": "${{price}}"
          }
        ]
      }
    }
  },
  "emptyTemplate": {
    "type": "center",
    "child": {
      "type": "column",
      "mainAxisSize": "min",
      "children": [
        {
          "type": "icon",
          "icon": "shopping_cart",
          "size": 64,
          "color": "#9E9E9E"
        },
        {
          "type": "container",
          "height": 16
        },
        {
          "type": "text",
          "data": "No products available",
          "style": {
            "fontSize": 18,
            "fontWeight": "bold",
            "color": "#424242"
          }
        },
        {
          "type": "container",
          "height": 8
        },
        {
          "type": "text",
          "data": "Check back later for new products!",
          "style": {
            "fontSize": 14,
            "color": "#757575"
          }
        },
        {
          "type": "container",
          "height": 24
        },
        {
          "type": "elevatedButton",
          "child": {
            "type": "text",
            "data": "Refresh"
          },
          "onPressed": {
            "actionType": "navigate",
            "route": "/refresh"
          }
        }
      ]
    }
  }
}
```

## Empty Template 동작

`emptyTemplate`은 다음과 같은 경우에 자동으로 트리거됩니다:

1. **직접 빈 배열**: API 응답이 빈 배열 `[]`인 경우
2. **타겟 경로의 빈 배열**: 지정된 `targetPath`의 데이터가 빈 배열인 경우
3. **중첩된 데이터의 빈 배열**: API 응답이 중첩된 객체 내에 빈 배열을 포함하는 경우

### Empty Template을 트리거하는 API 응답 예제

#### 시나리오 1: 직접 빈 배열

```json
[]
```

#### 시나리오 2: 타겟 경로의 빈 배열

```json
{
  "success": true,
  "data": [],
  "message": "No results found"
}
```

#### 시나리오 3: 중첩된 구조의 빈 배열

```json
{
  "response": {
    "users": [],
    "total": 0
  }
}
```

## 고급 사용법

### 중첩된 데이터 추출

`targetPath` 속성을 사용하여 복잡한 API 응답에서 특정 데이터를 추출합니다:

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://api.example.com/data",
    "method": "get"
  },
  "targetPath": "response.data.items",
  "template": {
    "type": "column",
    "children": [
      {
        "type": "text",
        "data": "Items loaded: {{length}}"
      }
    ]
  }
}
```

### resultTarget 사용

`resultTarget` 속성을 사용하면 템플릿에 데이터를 적용할 때 사용할 키 이름을 지정할 수 있습니다. 이는 템플릿에서 특정 이름으로 데이터를 참조하고자 할 때 유용합니다:

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://api.example.com/products",
    "method": "get"
  },
  "targetPath": "data.featured",
  "resultTarget": "product",
  "template": {
    "type": "card",
    "child": {
      "type": "column",
      "children": [
        {
          "type": "text",
          "data": "{{product.name}}"
        },
        {
          "type": "text",
          "data": "Price: ${{product.price}}"
        }
      ]
    }
  }
}
```

### 커스텀 헤더

API 요청에 커스텀 헤더를 추가합니다:

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://api.example.com/protected-resource",
    "method": "get",
    "headers": {
      "Authorization": "Bearer your-token-here",
      "Content-Type": "application/json"
    }
  },
  "template": {
    "type": "text",
    "data": "Data loaded successfully!"
  }
}
```

### targetPath에서 배열 인덱싱

targetPath에서 특정 배열 요소에 액세스할 수 있습니다:

```json
{
  "type": "dynamicView",
  "request": {
    "url": "https://api.example.com/posts",
    "method": "get"
  },
  "targetPath": "data.posts[0]",
  "template": {
    "type": "text",
    "data": "Featured Post: {{title}}"
  }
}
```

## 모범 사례

1. 복잡한 API 응답에서 필요한 데이터만 추출하려면 `targetPath`를 사용하세요
2. 목록 데이터의 경우 각 항목을 어떻게 렌더링할지 정의하기 위해 항상 `itemTemplate` 속성을 사용하세요
3. **빈 API 응답을 우아하게 처리하기 위해 목록 기반 뷰에 항상 `emptyTemplate`을 제공하세요**
4. 정보를 제공하고 실행 가능한 빈 상태를 디자인하세요 - 명확한 메시징과 새로고침 버튼과 같은 관련 작업을 포함하세요
5. 가능한 경우 템플릿을 모듈화하고 재사용 가능하게 유지하세요
6. API 요청이 실패한 경우를 위해 UI 디자인에서 적절한 오류 처리를 사용하세요
7. 빈 상태의 경우 앱의 디자인 시스템과 일치하는 적절한 아이콘과 색상을 사용하세요
8. 더 나은 사용자 경험을 위해 커스텀 `loaderWidget`과 `errorWidget`을 제공하세요
9. 템플릿에서 특정 이름으로 데이터를 참조해야 할 때 `resultTarget`을 사용하세요

## 제한 사항

- API 엔드포인트는 JSON 데이터를 반환해야 합니다
- 매우 큰 데이터셋의 경우 성능 문제를 피하기 위해 페이지네이션을 고려하거나 항목 수를 제한하세요
- 복잡한 데이터 변환은 템플릿 시스템 외부의 커스텀 코드가 필요할 수 있습니다
- placeholder 구문의 중첩된 배열 액세스는 예제에 표시된 형식으로 제한됩니다
