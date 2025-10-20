---
sidebar_position: 1
---

# Stac Parser

Stac은 다양한 유형의 widget을 처리하기 위한 여러 내장 parser를 지원합니다.
그러나 Stac에서 기본적으로 지원하지 않는 커스텀 widget이나 widget을 처리하기 위해 커스텀 parser를 만들 수도 있습니다.
이 가이드에서는 Stac에서 parser를 생성하고 사용하는 기본 사항을 안내합니다.

## Stac Parser란 무엇인가요?

[StacParser](https://github.com/StacDev/stac/blob/dev/packages/stac_framework/lib/src/stac_parser.dart)는 특정 JSON 객체를 해석하고 Flutter widget으로 변환하는 커스텀 클래스입니다.
이를 통해 애플리케이션의 특정 요구 사항에 맞춘 매우 유연하고 커스터마이징 가능한 UI 컴포넌트를 만들 수 있습니다.

## 커스텀 Widget Parser 생성하기

커스텀 parser를 생성하려면 다음 단계를 따라야 합니다:

1. **JSON 구조 정의**: parser가 해석할 JSON 객체의 구조를 정의합니다. 이 구조는 잘 문서화되어 있고 이해하기 쉬워야 합니다.
2. **Parser 클래스 생성**: Stac에서 제공하는 `StacParser` 클래스를 확장하는 새로운 Dart 클래스를 생성합니다. 이 클래스는 JSON 객체를 해석하고 해당하는 Flutter widget을 생성하는 로직을 포함합니다.
3. **Parser 등록**: 커스텀 parser를 Stac에 등록하여 JSON 객체를 해석하는 데 사용할 수 있도록 합니다.

## 예제 Parser

다음은 가상의 CustomButton widget을 위한 커스텀 parser를 생성하는 단계별 예제입니다.

### Step 1: JSON 구조 정의

CustomButton widget의 JSON 구조는 다음과 같습니다:

```json
{
  "type": "customButton",
  "text": "Click Me",
  "color": "#FF5733",
  "onPressed": "handleClick"
}
```

이 JSON 구조에 대해 CustomButton widget을 나타내는 데이터 클래스를 생성하고 JSON 객체를 CustomButton 객체로 변환하는 fromJson 메서드를 제공할 수 있습니다.
:::note
여기서는 freezed 패키지를 사용하여 데이터 클래스를 생성합니다. 하지만 다른 방법을 사용하여 데이터 클래스를 생성할 수도 있습니다.
:::

```dart
@freezed
abstract class CustomButton with _$CustomButton {
  const factory CustomButton({
    required String text,
    required String color,
    required VoidCallback onPressed,
    }) = _CustomButton;

  factory CustomButton.fromJson(Map<String, dynamic> json) =>
      _$CustomButtonFromJson(json);
}
```

### Step 2: Parser 클래스 생성

다음으로 `StacParser` 클래스를 확장하는 새로운 Dart 클래스를 생성합니다.

StacParser는 구현해야 할 3가지 메서드를 제공합니다:

1. `type`: 이 메서드는 widget의 type을 반환해야 합니다. `type`은 어떤 parser를 사용할지 결정하는 데 사용될 widget의 고유 식별자입니다.
2. `getModel`: 이 메서드는 제공된 JSON에서 모델 객체를 추출하고 반환합니다. 모델 객체는 widget을 렌더링하는 데 필요한 속성과 데이터를 포함합니다.
3. `parse`: 여기서 모델 객체를 사용하여 Flutter widget을 빌드합니다. 이 메서드는 JSON 객체에 해당하는 widget을 반환해야 합니다.

```dart
class CustomButtonParser extends StacParser<CustomButton> {
  const CustomButtonParser();

  @override
  String get type => 'customButton';

  @override
  CustomButton getModel(Map<String, dynamic> json) => CustomButton.fromJson(json);

  @override
  Widget parse(BuildContext context, model) {
    return ElevatedButton(
      onPressed: model.onPressed,
      child: Text(model.text),
      style: ElevatedButton.styleFrom(
        backgroundColor: model.color.toColor,
      ),
    );
  }
}
```


### Step 3: Parser 등록

마지막으로 커스텀 parser를 Stac에 등록하여 JSON 객체를 해석하는 데 사용할 수 있도록 해야 합니다.

parser를 등록하는 방법은 2가지가 있습니다:

1. **`Stac.initialize`에서 등록**: Stac을 초기화할 때 `parsers` 매개변수에 전달하여 parser를 등록할 수 있습니다.

```dart
void main() async {
  await Stac.initialize(
    parsers: const [
      CustomButtonParser(),
    ],
  );

  runApp(const MyApp());
}
```

`Stac.initialize`에서 parser를 등록하면, parser는 앱 전체에서 사용할 수 있습니다.

2. **StacRegistry를 통한 등록**: `StacRegistry` 클래스를 사용하여 어디서나 parser를 등록할 수도 있습니다.

`StacRegistry`는 widget parser를 등록하기 위한 두 가지 메서드를 제공합니다.

1. 단일 parser 등록

```dart
StacRegistry.instance.register(CustomButtonParser());
```

2. 여러 parser 등록

```dart
StacRegistry.instance.registerAll([
    StacTextParser(),
    StacButtonParser(),
]);
```

## 결론

Stac에서 커스텀 parser를 생성하면 라이브러리의 기능을 확장하고 높은 수준의 커스터마이징 가능한 UI 컴포넌트를 구축할 수 있을 뿐만 아니라, 서드파티 패키지를 애플리케이션에 통합할 수도 있습니다. 이러한 패키지가 제공하는 widget이나 컴포넌트에 대한 커스텀 parser를 정의함으로써, Stac이 제공하는 server-driven UI 패러다임 내에서 해당 기능을 활용할 수 있습니다. 이는 프로젝트에서 모든 Flutter 패키지를 사용하고 서버 측 JSON 응답에서 해당 widget을 렌더링할 수 있다는 것을 의미하며, 애플리케이션의 유연성과 강력함을 더욱 향상시킵니다.
