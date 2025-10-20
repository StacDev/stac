# BackdropFilter

Stac BackdropFilter를 사용하면 JSON을 통해 Flutter BackdropFilter 위젯을 구축할 수 있습니다. 이 위젯은 기존에 그려진 콘텐츠에 필터를 적용한 다음 자식 위젯을 그립니다. 주로 서리 유리 효과, 블러, 그리고 다른 시각적 효과를 만드는 데 사용됩니다.

Flutter의 BackdropFilter 위젯에 대해 자세히 알아보려면 [Backdrop Filter](https://api.flutter.dev/flutter/widgets/BackdropFilter-class.html) 및 [Image Filter](https://api.flutter.dev/flutter/dart-ui/ImageFilter-class.html) 공식 문서를 참조하세요.

---

## 속성

| Property  | Type                   | Description                                                                                |
|-----------|------------------------|--------------------------------------------------------------------------------------------|
| `filter`  | `Map<String, dynamic>` | 자식을 그리기 전에 기존에 그려진 콘텐츠에 적용할 이미지 필터입니다.       |
| `child`   | `Map<String, dynamic>?`| 기존에 그려진 콘텐츠에 필터를 적용한 후 그릴 위젯입니다.             |
| `enabled` | `bool`                 | 필터를 적용할지 여부입니다. false인 경우 자식이 필터 없이 그려집니다. 기본값은 `true`입니다. |
| `blendMode` | `String?` | 필터를 기존 콘텐츠와 블렌딩할 때 적용할 블렌드 모드입니다. 기본값은 `BlendMode.srcOver`입니다. 사용 가능한 값은 [BlendMode](https://api.flutter.dev/flutter/dart-ui/BlendMode.html)를 참조하세요. |

---

## Filter Types

`filter` 속성은 다양한 유형의 이미지 필터를 허용합니다. 다음은 지원되는 필터 유형입니다:

### Blur Filter

| Property  | Type    | Description                                                                    |
|-----------|---------|--------------------------------------------------------------------------------|
| `type`    | `String`| `"blur"`로 설정되어야 합니다.                                                       |
| `sigmaX`  | `double`| 수평 방향의 표준 편차입니다. 기본값은 `10.0`입니다.        |
| `sigmaY`  | `double`| 수직 방향의 표준 편차입니다. 기본값은 `sigmaX`와 동일합니다.|

### Dilate Filter

| Property  | Type    | Description                                                                    |
|-----------|---------|--------------------------------------------------------------------------------|
| `type`    | `String`| `"dilate"`로 설정되어야 합니다.                                                     |
| `radiusX` | `double`| 수평 방향의 반경입니다.                                         |
| `radiusY` | `double`| 수직 방향의 반경입니다.                                           |

### Erode Filter

| Property  | Type    | Description                                                                    |
|-----------|---------|--------------------------------------------------------------------------------|
| `type`    | `String`| `"erode"`로 설정되어야 합니다.                                                      |
| `radiusX` | `double`| 수평 방향의 반경입니다.                                         |
| `radiusY` | `double`| 수직 방향의 반경입니다.                                           |

### Compose Filter

| Property  | Type                   | Description                                                     |
|-----------|------------------------|-----------------------------------------------------------------|
| `type`    | `String`               | `"compose"`로 설정되어야 합니다.                                      |
| `inner`   | `Map<String, dynamic>` | 먼저 적용할 내부 필터입니다.                                 |
| `outer`   | `Map<String, dynamic>` | 내부 필터 이후에 적용할 외부 필터입니다.                |

---

## Usage Recommendations

BackdropFilter를 사용할 때 최상의 결과를 얻으려면:

1. `Stack`을 사용하여 필터를 적용하려는 콘텐츠 위에 BackdropFilter를 배치하세요
2. BackdropFilter를 `ClipRRect`로 감싸서 필터를 특정 영역으로 제한하세요
3. BackdropFilter의 자식으로 반투명 컨테이너를 포함시켜 효과를 가시적으로 만드세요
4. Stack에서 `fit: expand`를 사용하여 적절한 크기를 보장하세요

---

## 예제 JSON

### Example 1: Frosted Glass Effect

```json
{
  "type": "clipRRect",
  "borderRadius": {
    "all": 16
  },
  "child": {
    "type": "sizedBox",
    "height": 200,
    "width": 300,
    "child": {
      "type": "stack",
      "fit": "expand",
      "children": [
        {
          "type": "container",
          "decoration": {
            "image": {
              "src": "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg",
              "fit": "cover"
            }
          }
        },
        {
          "type": "backdropFilter",
          "filter": {
            "type": "blur",
            "sigmaX": 15.0,
            "sigmaY": 15.0
          },
          "child": {
            "type": "container",
            "decoration": {
              "color": "#80FFFFFF"
            }
          }
        }
      ]
    }
  }
}
```

### Example 2: Dilate Filter Effect

```json
{
  "type": "clipRRect",
  "borderRadius": {
    "all": 16
  },
  "child": {
    "type": "sizedBox",
    "height": 200,
    "width": 300,
    "child": {
      "type": "stack",
      "fit": "expand",
      "children": [
        {
          "type": "container",
          "decoration": {
            "image": {
              "src": "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg",
              "fit": "cover"
            }
          }
        },
        {
          "type": "backdropFilter",
          "filter": {
            "type": "dilate",
            "radiusX": 2.0,
            "radiusY": 2.0
          },
          "child": {
            "type": "container",
            "decoration": {
              "color": "#80FFFFFF"
            }
          }
        }
      ]
    }
  }
}
```

### Example 3: Compose Filter (Blur + Dilate)

```json
{
  "type": "clipRRect",
  "borderRadius": {
    "all": 16
  },
  "child": {
    "type": "sizedBox",
    "height": 200,
    "width": 300,
    "child": {
      "type": "stack",
      "fit": "expand",
      "children": [
        {
          "type": "container",
          "decoration": {
            "image": {
              "src": "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg",
              "fit": "cover"
            }
          }
        },
        {
          "type": "backdropFilter",
          "filter": {
            "type": "compose",
            "outer": {
              "type": "blur",
              "sigmaX": 5.0,
              "sigmaY": 5.0
            },
            "inner": {
              "type": "dilate",
              "radiusX": 2.0,
              "radiusY": 2.0
            }
          },
          "child": {
            "type": "container",
            "decoration": {
              "color": "#80FFFFFF"
            }
          }
        }
      ]
    }
  }
}
```

---

## Common Issues and Solutions

### Issue: Filter affects entire screen

백드롭 필터가 특정 영역 대신 전체 화면에 영향을 미치는 경우, 다음을 확인하세요:

1. BackdropFilter를 `ClipRRect`로 감싸서 효과를 제한하세요
2. 필터를 적용할 콘텐츠 위에 BackdropFilter를 자식으로 배치한 `Stack`을 사용하세요
3. BackdropFilter가 위젯 트리의 루트 레벨에 있지 않은지 확인하세요

### Issue: Filter not visible

필터 효과가 보이지 않는 경우:

1. BackdropFilter의 자식이 반투명 색상을 가지고 있는지 확인하세요 (예: `#80FFFFFF`)
2. 필터 매개변수 (블러의 경우 `sigmaX` 및 `sigmaY`)가 눈에 띄기에 충분히 큰지 확인하세요
3. 필터 뒤의 콘텐츠에 효과를 가시적으로 만들기에 충분한 대비가 있는지 확인하세요
