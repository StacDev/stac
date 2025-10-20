# Image

`Image` widget을 사용하면 JSON을 통해 Flutter 앱에서 이미지를 표시할 수 있습니다. 이 widget은 asset, 파일, 네트워크 URL 등 여러 소스의 이미지를 지원하며, 정렬, 색상, 너비, 높이, 크기 조정과 같은 사용자 정의 옵션을 제공합니다.

동등한 Flutter widget과 속성에 대해 자세히 알아보려면 [Image에 대한 공식 Flutter 문서](https://api.flutter.dev/flutter/widgets/Image-class.html)를 참조하세요.

## Properties

| 속성        | 타입             | 설명                                                                                    |
|-------------|------------------|-----------------------------------------------------------------------------------------|
| `src`       | `String`         | 이미지의 소스입니다. 예를 들어, 네트워크 이미지의 URL, 파일 이미지의 파일 경로 또는 asset 경로입니다. |
| `alignment` | `StacAlignment` | 컨테이너 내에서 이미지의 정렬입니다. 기본값은 `StacAlignment.center`입니다.                     |
| `imageType` | `StacImageType` | 이미지 소스의 유형: `file`, `network` 또는 `asset`입니다. 기본값은 `StacImageType.network`입니다. |
| `color`     | `String?`        | 이미지와 블렌딩할 색상으로, 16진수 형식으로 제공됩니다 (예: 빨간색의 경우 `#FF0000`).              |
| `width`     | `double?`        | 논리적 픽셀 단위의 이미지 너비입니다.                                                        |
| `height`    | `double?`        | 논리적 픽셀 단위의 이미지 높이입니다.                                                        |
| `fit`       | `BoxFit?`        | 레이아웃 중 할당된 공간에 이미지를 어떻게 맞출지 지정합니다.                                    |

## Enum: StacImageType

| 값        | 설명                                       |
|-----------|--------------------------------------------|
| `file`    | 로컬 파일에서 이미지를 불러옵니다.           |
| `network` | 네트워크 URL에서 이미지를 불러옵니다.        |
| `asset`   | Flutter의 asset 번들에서 이미지를 불러옵니다. |

## Example JSON

```json
{
  "type": "image",
  "src": "https://example.com/image.png",
  "alignment": "center",
  "imageType": "network",
  "color": "#FFFFFF",
  "width": 200.0,
  "height": 100.0,
  "fit": "contain"
}
```
