---
sidebar_position: 2
---

# Action Parser

Stac은 다양한 유형의 action을 처리하기 위한 여러 내장 action parser를 지원합니다. 그러나 Stac에서 기본적으로 지원하지 않는 사용자 정의 action이나 action을 처리하기 위해 커스텀 action parser를 만들 수도 있습니다. 이 가이드에서는 Stac에서 action parser를 생성하고 사용하는 기본 사항을 안내합니다.

## Stac Action Parser란 무엇인가요?

Stac action parser는 action을 나타내는 특정 JSON 객체를 해석하고 Flutter 애플리케이션에서 해당 로직을 실행하는 커스텀 클래스입니다. 이를 통해 애플리케이션의 특정 요구 사항에 맞춘 매우 유연하고 커스터마이징 가능한 동작을 구현할 수 있습니다.

## 커스텀 Action Parser 생성하기

커스텀 action parser를 생성하려면 다음 단계를 따라야 합니다:

1. **JSON 구조 정의**: action parser가 해석할 JSON 객체의 구조를 정의합니다. 이 구조는 잘 문서화되어 있고 이해하기 쉬워야 합니다.
2. **Action Parser 클래스 생성**: Stac에서 제공하는 `StacActionParser` 인터페이스를 구현하는 새로운 Dart 클래스를 생성합니다. 이 클래스는 JSON 객체를 해석하고 해당 action을 실행하는 로직을 포함합니다.
3. **Action Parser 등록**: 커스텀 action parser를 Stac에 등록하여 JSON 객체를 해석하는 데 사용할 수 있도록 합니다.

## 예제 Action Parser

이 예제에서는 제공된 메시지와 함께 print 함수를 호출하는 커스텀 action parser를 생성합니다.

### Step 1: JSON 구조 정의

커스텀 action의 JSON 구조는 다음과 같습니다:

```json
{
  "actionType": "print",
  "message": "Hello, Stac!"
}
```
이 JSON 구조에 대해 커스텀 action을 나타내는 데이터 클래스를 생성하고 JSON 객체를 커스텀 action 객체로 변환하는 `fromJson` 메서드를 제공할 수 있습니다.

```dart
@freezed
abstract class PrintAction with _$PrintAction {
  const factory PrintAction({
    required String message,
  }) = _PrintAction;

  factory PrintAction.fromJson(Map<String, dynamic> json) =>
      _$PrintActionFromJson(json);
}
```
:::note
여기서는 freezed 패키지를 사용하여 데이터 클래스를 생성합니다. 하지만 다른 방법을 사용하여 데이터 클래스를 생성할 수도 있습니다.
:::

### Step 2: Action Parser 클래스 생성

다음으로 `StacActionParser` 인터페이스를 구현하는 커스텀 action parser 클래스를 생성합니다. 이 클래스는 JSON 객체를 해석하고 해당 로직을 실행합니다.

```dart
class PrintActionParser implements StacActionParser<PrintAction> {
  @override
  String get actionType => 'print';

  @override
  PrintAction getModel(Map<String, dynamic> json) => PrintAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacNavigateAction model) {
    print(model.message);
  }
}
```

### Step 3: Action Parser 등록

마지막으로 커스텀 action parser를 Stac에 등록해야 합니다.

커스텀 action parser를 등록하는 방법은 2가지가 있습니다:

1. **`Stac.initialize`에서 등록**: Stac을 초기화할 때 `actionParser` 매개변수에 전달하여 parser를 등록할 수 있습니다.

```dart
void main() async {
  await Stac.initialize(
    actionParsers: const [
      PrintActionParser(),
    ],
  );
  runApp(const MyApp());
}
```

2. **StacRegistry를 통한 등록**: `StacRegistry` 클래스를 사용하여 어디서나 action parser를 등록할 수도 있습니다.

`StacRegistry`는 action parser를 등록하기 위한 두 가지 메서드를 제공합니다.

1. 단일 action parser 등록:

```dart
StacRegistry.instance.registerAction(parser);
```

2. 여러 action parser 등록:

```dart
StacRegistry.instance.registerAllActions([
    StacShareParser(),
    StacBluetoothParser(),
]);
```

## 결론

Stac에서 커스텀 action parser를 생성하면 라이브러리의 기능을 확장할 수 있을 뿐만 아니라 애플리케이션 내에서 높은 수준의 커스터마이징 가능한 동작을 정의할 수 있습니다. action에 대한 커스텀 parser를 정의함으로써 Flutter 애플리케이션에서 server-driven UI의 모든 기능을 활용하여 동적이고 반응형 사용자 인터랙션을 보장할 수 있습니다.
