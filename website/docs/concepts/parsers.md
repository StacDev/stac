---
sidebar_position: 1
---

# Mirai Parsers

Mirai has wide variety of built-in parsers to handle different types of widgets.
However, you can also create custom parsers to handle custom widgets or widgets that are not supported by Mirai out of the box.
This guide will walk you through the basics of creating and using parsers in Mirai.

## What is a Mirai Parser?

A [MiraiParser](https://github.com/BuildMirai/mirai/blob/dev/packages/mirai_framework/lib/src/mirai_parser.dart) is a custom class that interprets specific JSON objects and converts them into Flutter widgets. 
This allows for highly flexible and customizable UI components, tailored to the specific needs of your application.

## Creating a Custom Widget Parser

To create a custom parser, you need to follow these steps:

1. **Define the JSON Structure**: Define the structure of the JSON object that your parser will interpret. This structure should be well-documented and easy to understand.
2. **Create the Parser Class**: Create a new Dart class that extends the `MiraiParser` class provided by Mirai. This class will contain the logic to interpret the JSON object and generate the corresponding Flutter widget.
3. **Register the Parser**: Register the custom parser with Mirai so that it can be used to interpret JSON objects.

## Example Parser

Below is a step-by-step example of creating a custom parser for a hypothetical CustomButton widget.

### Step 1: Define the JSON Structure

The JSON structure for the CustomButton widget might look like this:

```json
{
  "type": "customButton",
  "text": "Click Me",
  "color": "#FF5733",
  "onPressed": "handleClick"
}
```

For this JSON Structure, we can create a data class to represent the CustomButton widget and to provide the fromJson method to convert the JSON object to the CustomButton object.
:::note
Here we are using the freezed package to create the data class. But you can use any other method to create the data class.
:::

```dart
@freezed
class CustomButton with _$CustomButton {
  const factory CustomButton({
    required String text,
    required String color,
    required VoidCallback onPressed,
    }) = _CustomButton;

  factory CustomButton.fromJson(Map<String, dynamic> json) =>
      _$CustomButtonFromJson(json);
}
```

### Step 2: Create the Parser Class

Next, we create a new Dart class that extends the `MiraiParser` class.

MiraiParser gives you 3 methods to implement:

1. `type`: This method should return the type of the widget. The `type` is a unique identifier for the widget that will be used to determine which parser to use.
2. `getModel`: This method extracts and returns the model object from the provided JSON. The model object contains the properties and data required to render the widget.
3. `parse`: This is where you build the Flutter widget using the model object. This method should return the widget that corresponds to the JSON object.

```dart
class CustomButtonParser extends MiraiParser<CustomButton> {
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


### Step 3: Register the Parser

Finally, you need to register the custom parser with Mirai so that it can be used to interpret JSON objects.

There are 2 ways to register a parser:

1. **Register in `Mirai.initialize`**: You can register the parser when initializing Mirai by passing it in the `parsers` parameter.

```dart
void main() async {
  await Mirai.initialize(
    parsers: const [
      CustomButtonParser(),
    ],
  );

  runApp(const MyApp());
}
```

When you register the parser in `Mirai.initialize`, the parser will be available throughout the app.

2. **Register through MiraiRegistry**: You can also register the parser anywhere using the `MiraiRegistry` class.

`MiraiRegistry` provides you with two method to register the widget parser.

1. Register a single parser

```dart
MiraiRegistry.instance.register(CustomButtonParser());
```

2. Register multiple parsers

```dart
MiraiRegistry.instance.registerAll([
    MiraiTextParser(),
    MiraiButtonParser(),
]);
```

## Conclusion

Creating custom parsers in Mirai not only allows you to extend the functionality of the library and build highly customizable UI components, but it also enables you to integrate third-party packages into your application. By defining custom parsers for the widgets or components provided by these packages, you can leverage their functionality within the server-driven UI paradigm that Mirai offers. This means you can use any Flutter package in your project and render its widgets from a server-side JSON response, further enhancing the flexibility and power of your application.

