---
sidebar_position: 2
---

# Action Parsers

Stac supports a variety of built-in action parsers to handle different types of actions. However, you can also create custom action parsers to handle custom actions or actions that are not supported by Stac out of the box. This guide will walk you through the basics of creating and using action parsers in Stac.

## What is a Stac Action Parser?

A Stac action parser is a custom class that interprets specific JSON objects representing actions and executes the corresponding logic in your Flutter application. This allows for highly flexible and customizable behavior tailored to the specific needs of your application.

## Creating a Custom Action Parser

To create a custom action parser, you need to follow these steps:

1. **Define the JSON Structure**: Define the structure of the JSON object that your action parser will interpret. This structure should be well-documented and easy to understand.
2. **Create the Action Parser Class**: Create a new Dart class that implements the `StacActionParser` interface provided by Stac. This class will contain the logic to interpret the JSON object and execute the corresponding action.
3. **Register the Action Parser**: Register the custom action parser with Stac so that it can be used to interpret JSON objects.

## Example Action Parser

In this example, we will create a custom action parser that calls a print function with a provided message.

### Step 1: Define the JSON Structure

The JSON structure for the custom action might look like this:

```json
{
  "actionType": "print",
  "message": "Hello, Stac!"
}
```
For this JSON Structure, we can create a data class to represent the custom action and to provide the `fromJson` method to convert the JSON object to the custom action object.

```dart
@freezed
class PrintAction with _$PrintAction {
  const factory PrintAction({
    required String message,
  }) = _PrintAction;

  factory PrintAction.fromJson(Map<String, dynamic> json) =>
      _$PrintActionFromJson(json);
}
```
:::note
Here we are using the freezed package to create the data class. But you can use any other method to create the data class.
:::

### Step 2: Create the Action Parser Class

Next, we create a custom action parser class that implements the `StacActionParser` interface. This class will interpret the JSON object and execute the corresponding logic.

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

### Step 3: Register the Action Parser

Finally, you need to register the custom action parser with Stac.

There are 2 ways to register the custom action parser:

1. **Register in `Stac.initialize`**: You can register the parser when initializing Stac by passing it in the `actionParser` parameter.

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

2. **Register through StacRegistry**: You can also register the action parser anywhere using the `StacRegistry` class.

`StacRegistry` provides you with two method to register the action parser.

1. Register a single action parser:

```dart
StacRegistry.instance.registerAction(parser);
```

2. Register multiple action parsers:

```dart
StacRegistry.instance.registerAllActions([
    StacShareParser(),
    StacBluetoothParser(),
]);
```

## Conclusion

Creating custom action parsers in Stac not only allows you to extend the functionality of the library but also enables you to define highly customizable behaviors within your application. By defining custom parsers for actions, you can leverage the full power of server-driven UI in your Flutter application, ensuring dynamic and responsive user interactions.