---
sidebar_position: 3
---

# Theming

테마는 모든 애플리케이션의 필수적인 부분으로, 앱 전체에 걸쳐 일관된 모양과 느낌을 보장합니다. Stac은 JSON을 사용하여 애플리케이션의 테마를 동적으로 업데이트할 수 있는 강력한 방법을 제공합니다.

Stac 테마는 Flutter의 내장 테마와 유사하게 작동합니다. JSON에서 테마를 정의하고 StacTheme widget을 사용하여 애플리케이션에 적용합니다. 이를 통해 앱의 시각적 스타일을 관리하는 중앙 집중식이고 쉽게 유지보수 가능한 접근 방식을 제공합니다.

## Stac Theming 구현하기

Stac에서 테마를 구현하려면 다음 단계를 따라야 합니다:

1. **MaterialApp을 StacApp으로 교체**: `MaterialApp`을 `StacApp`으로 교체하는 것부터 시작합니다
2. **StacApp에 StacTheme 전달**: `StacApp`에 `StacTheme` widget을 전달하여 테마를 적용합니다. StacTheme widget은 JSON 테마 정의로부터 생성된 `StacTheme` 객체를 매개변수로 받습니다.

```dart
import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

void main() async {
  await Stac.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StacApp(
      theme: StacTheme.fromJson(themeJson),
      homeBuilder: (context) => const HomeScreen(),
    );
  }

  Map<String, dynamic> themeJson = {
    "brightness": "light",
    "disabledColor": "#60FEF7FF",
    "fontFamily": "Handjet",
    "colorScheme": {
      "brightness": "light",
      "primary": "#6750a4",
      "onPrimary": "#FFFFFF",
      "secondary": "#615B6F",
      "onSecondary": "#FFFFFF",
      "surface": "#FEFBFF",
      "onSurface": "#1C1B1E",
      "background": "#FEFBFF",
      "onBackground": "#1C1B1E",
      "surfaceVariant": "#E6E0EA",
      "onSurfaceVariant": "#48454D",
      "error": "#AB2D25",
      "onError": "#FFFFFF",
      "success": "#27BA62",
      "onSuccess": "#FFFFFF"
    }
  };
}
```

자세한 내용은 [StacTheme](https://github.com/StacDev/stac/blob/dev/packages/stac/lib/src/parsers/theme/stac_theme/stac_theme.dart) 클래스를 확인하세요.
