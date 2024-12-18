# Mirai Framework

The Mirai Framework package contains the framework files for [Mirai](https://github.com/buildMirai/mirai), such as MiraiParser and MiraiActionParser. These classes provide a simple way to create custom parsers for widgets and actions in Mirai. This can be useful for extending the functionality of Mirai or for implementing custom widgets and actions.

Here are some examples of how the Mirai Framework package can be used:

- Create a custom parser for a new widget that is not supported by Mirai out of the box.
- Create a custom parser for a widget that has additional functionality, such as the ability to handle user input.
- Create a custom action parser to handle a new type of action, such as sending a message to a remote server.
- Create a custom action parser to handle an existing action in a different way, such as logging the action before it is executed.

## Installation 🚀

First, we need to add Mirai Framework to our pubspec.yaml file.

Install the plugin by running the following command from the project root:

```bash
flutter pub add mirai_framework
```

## Usage

1. Import `mirai_framework.dart` at the top of your parser file.

```dart
 import 'package:mirai_framework/mirai_framework.dart';
```

2. Initialize your custom parser for a widget or an action and extend it from `MiraiParser` or `MiraiActionParser` like this.

    ```dart
        // define `MyCustomWidget`
    
        @freezed
        class MyCustomWidget with _$MyCustomWidget { ... }
    ```
   
    a. Let's say we are initializing a widget parser.

    ```dart
    class MiraiWidgetPraser extends MiraiParser<MyCustomWidget> { 
        ... 
    }
    ```

    b. Let's say we are initializing an action parser.

    ```dart
    class MiraiActionPraser  extends MiraiActionParser<dynamic> {
        ...
    }
    ```

3. Now implement the required methods in your custom parser.

    a. Let's say we are building a widget parser.

    ```dart
    class MiraiWidgetParser  extends MiraiParser<MyCustomWidget> {
        @override
        MyCustomWidget getModel(Map<String, dynamic> json) {
            // TODO: implement getModel
            throw UnimplementedError();
        }

        @override
        Widget parse(BuildContext context, MyCustomWidget model) {
            // TODO: implement parse
            throw UnimplementedError();
        }

        @override
        // TODO: implement type
        String get type => throw UnimplementedError();

    }

    ```

     b. Let's say we are building an action parser.

    ```dart
    class MiraiActionPraser  extends MiraiActionParser<dynamic> {
        @override
        // TODO: implement actionType
        String get actionType => throw UnimplementedError();

        @override
        getModel(Map<String, dynamic> json) {
            // TODO: implement getModel
            throw UnimplementedError();
        }

        @override
        FutureOr onCall(BuildContext context, model) {
            // TODO: implement onCall
            throw UnimplementedError();
        }
    }
    ```
