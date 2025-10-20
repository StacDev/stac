# GestureDetector

Stac의 `GestureDetector` widget을 사용하면 애플리케이션 내에서 다양한 제스처와 사용자 상호작용을 감지할 수 있습니다. 이 widget은 Flutter의 네이티브 GestureDetector widget을 래핑하여 터치 이벤트, 탭, 드래그 등을 처리할 수 있는 JSON 기반 인터페이스를 제공합니다.

## 사용법

Stac JSON에서 GestureDetector를 사용하려면 widget 타입을 "gestureDetector"로 지정하고 처리하려는 제스처 콜백과 함께 자식 widget을 제공합니다.

```json
{
  "type": "gestureDetector",
  "child": {
    "type": "container",
    "color": "#2196F3",
    "width": 200,
    "height": 200,
    "alignment": "center",
    "child": {
      "type": "text",
      "data": "Tap me!",
      "style": {
        "color": "#FFFFFF",
        "fontSize": 20
      }
    }
  },
  "onTap": {
    "actionType": "showSnackBar",
    "content": {
      "type": "text",
      "data": "This is a Snackbar"
    }
  }
}
```

## 속성

### 자식 Widget

| Property | Type | Description |
|----------|------|-------------|
| `child` | Widget | 제스처에 반응할 widget입니다 |

### 탭 제스처

| Property | Type | Description |
|----------|------|-------------|
| `onTapDown` | Action | 포인터가 화면에 접촉할 때 호출됩니다 |
| `onTapUp` | Action | 포인터가 화면 접촉을 멈출 때 호출됩니다 |
| `onTap` | Action | 탭이 발생할 때 호출됩니다 |
| `onTapCancel` | Action | 탭이 취소될 때 호출됩니다 |
| `onDoubleTapDown` | Action | 포인터가 잠재적인 더블 탭에서 화면에 접촉할 때 호출됩니다 |
| `onDoubleTap` | Action | 더블 탭이 발생할 때 호출됩니다 |
| `onDoubleTapCancel` | Action | 더블 탭이 취소될 때 호출됩니다 |

### 보조 및 3차 탭 제스처

| Property | Type | Description |
|----------|------|-------------|
| `onSecondaryTap` | Action | 보조 탭이 발생할 때 호출됩니다 (예: 마우스 오른쪽 클릭) |
| `onSecondaryTapDown` | Action | 보조 포인터가 화면에 접촉할 때 호출됩니다 |
| `onSecondaryTapUp` | Action | 보조 포인터가 화면 접촉을 멈출 때 호출됩니다 |
| `onSecondaryTapCancel` | Action | 보조 탭이 취소될 때 호출됩니다 |
| `onTertiaryTapDown` | Action | 3차 포인터가 화면에 접촉할 때 호출됩니다 |
| `onTertiaryTapUp` | Action | 3차 포인터가 화면 접촉을 멈출 때 호출됩니다 |
| `onTertiaryTapCancel` | Action | 3차 탭이 취소될 때 호출됩니다 |

### 롱 프레스 제스처

| Property | Type | Description |
|----------|------|-------------|
| `onLongPressDown` | Action | 포인터가 잠재적인 롱 프레스에서 화면에 접촉할 때 호출됩니다 |
| `onLongPressCancel` | Action | 롱 프레스가 취소될 때 호출됩니다 |
| `onLongPress` | Action | 롱 프레스가 발생할 때 호출됩니다 |
| `onLongPressStart` | Action | 롱 프레스가 시작될 때 호출됩니다 |
| `onLongPressMoveUpdate` | Action | 롱 프레스 이동 업데이트가 발생할 때 호출됩니다 |
| `onLongPressUp` | Action | 롱 프레스 업이 발생할 때 호출됩니다 |
| `onLongPressEnd` | Action | 롱 프레스가 끝날 때 호출됩니다 |

### 보조 및 3차 롱 프레스 제스처

| Property | Type | Description |
|----------|------|-------------|
| `onSecondaryLongPressDown` | Action | 보조 포인터가 잠재적인 롱 프레스에서 화면에 접촉할 때 호출됩니다 |
| `onSecondaryLongPressCancel` | Action | 보조 롱 프레스가 취소될 때 호출됩니다 |
| `onSecondaryLongPress` | Action | 보조 롱 프레스가 발생할 때 호출됩니다 |
| `onSecondaryLongPressStart` | Action | 보조 롱 프레스가 시작될 때 호출됩니다 |
| `onSecondaryLongPressMoveUpdate` | Action | 보조 롱 프레스 이동 업데이트가 발생할 때 호출됩니다 |
| `onSecondaryLongPressUp` | Action | 보조 롱 프레스 업이 발생할 때 호출됩니다 |
| `onSecondaryLongPressEnd` | Action | 보조 롱 프레스가 끝날 때 호출됩니다 |
| `onTertiaryLongPressDown` | Action | 3차 포인터가 잠재적인 롱 프레스에서 화면에 접촉할 때 호출됩니다 |
| `onTertiaryLongPressCancel` | Action | 3차 롱 프레스가 취소될 때 호출됩니다 |
| `onTertiaryLongPress` | Action | 3차 롱 프레스가 발생할 때 호출됩니다 |
| `onTertiaryLongPressStart` | Action | 3차 롱 프레스가 시작될 때 호출됩니다 |
| `onTertiaryLongPressMoveUpdate` | Action | 3차 롱 프레스 이동 업데이트가 발생할 때 호출됩니다 |
| `onTertiaryLongPressUp` | Action | 3차 롱 프레스 업이 발생할 때 호출됩니다 |
| `onTertiaryLongPressEnd` | Action | 3차 롱 프레스가 끝날 때 호출됩니다 |

### 드래그 제스처

| Property | Type | Description |
|----------|------|-------------|
| `onVerticalDragDown` | Action | 포인터가 화면에 접촉하고 수직 드래그를 시작할 수 있을 때 호출됩니다 |
| `onVerticalDragStart` | Action | 포인터가 수직 드래그를 시작할 때 호출됩니다 |
| `onVerticalDragUpdate` | Action | 포인터가 수직 드래그를 업데이트할 때 호출됩니다 |
| `onVerticalDragEnd` | Action | 포인터가 수직 드래그를 끝낼 때 호출됩니다 |
| `onVerticalDragCancel` | Action | 수직 드래그가 취소될 때 호출됩니다 |
| `onHorizontalDragDown` | Action | 포인터가 화면에 접촉하고 수평 드래그를 시작할 수 있을 때 호출됩니다 |
| `onHorizontalDragStart` | Action | 포인터가 수평 드래그를 시작할 때 호출됩니다 |
| `onHorizontalDragUpdate` | Action | 포인터가 수평 드래그를 업데이트할 때 호출됩니다 |
| `onHorizontalDragEnd` | Action | 포인터가 수평 드래그를 끝낼 때 호출됩니다 |
| `onHorizontalDragCancel` | Action | 수평 드래그가 취소될 때 호출됩니다 |

### Force Press 제스처

| Property | Type | Description |
|----------|------|-------------|
| `onForcePressStart` | Action | force press가 시작될 때 호출됩니다 |
| `onForcePressPeak` | Action | force press가 최대 압력에 도달할 때 호출됩니다 |
| `onForcePressUpdate` | Action | force press가 업데이트될 때 호출됩니다 |
| `onForcePressEnd` | Action | force press가 끝날 때 호출됩니다 |

### 기타 속성

| Property | Type | 기본값 | Description |
|----------|------|---------|-------------|
| `excludeFromSemantics` | boolean | false | 시맨틱 트리에서 제스처를 제외할지 여부입니다 |
| `dragStartBehavior` | string | "start" | 드래그가 공식적으로 시작되는 시점을 결정합니다 ("start" 또는 "down") |

## 예제 JSON

### 간단한 탭 예제

```json
{
  "type": "gestureDetector",
  "onTap": {
    "actionType": "navigate",
    "routeName": "/details"
  },
  "child": {
    "type": "container",
    "padding": 16,
    "color": "#E0E0E0",
    "child": {
      "type": "text",
      "data": "Navigate to Details"
    }
  }
}
```

### 드래그 예제

```json
{
  "type": "gestureDetector",
  "onHorizontalDragEnd": {
    "actionType": "handleSwipe"
  },
  "child": {
    "type": "container",
    "width": 200,
    "height": 200,
    "color": "#F5F5F5",
    "alignment": "center",
    "child": {
      "type": "text",
      "data": "Swipe horizontally"
    }
  }
}
```

### 롱 프레스 예제

```json
{
  "type": "gestureDetector",
  "onLongPress": {
    "actionType": "showDialog",
    "title": "Long Press Detected",
    "content": "You performed a long press on the widget."
  },
  "child": {
    "type": "container",
    "padding": 16,
    "decoration": {
      "color": "#4CAF50",
      "borderRadius": 8
    },
    "child": {
      "type": "text",
      "data": "Long press me",
      "style": {
        "color": "#FFFFFF"
      }
    }
  }
}
```

## Action 처리

Stac GestureDetector의 각 제스처 콜백은 제스처가 감지되었을 때 수행할 작업을 정의하는 action 객체를 허용합니다. 이는 내비게이션 작업, 다이얼로그 표시, 커스텀 함수 실행 또는 Stac 애플리케이션에서 지원하는 기타 작업일 수 있습니다.

Action에 대한 자세한 내용은 [Actions 문서](../actions/)를 참조하세요.
