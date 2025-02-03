# Stac Framework

The Stac Framework package contains the framework files for [Stac](https://github.com/StacDev/stac), such as StacParser and StacActionParser. These classes provide a simple way to create custom parsers for widgets and actions in Stac. This can be useful for extending the functionality of Stac or for implementing custom widgets and actions.

Here are some examples of how the Stac Framework package can be used:

- Create a custom parser for a new widget that is not supported by Stac out of the box.
- Create a custom parser for a widget that has additional functionality, such as the ability to handle user input.
- Create a custom action parser to handle a new type of action, such as sending a message to a remote server.
- Create a custom action parser to handle an existing action in a different way, such as logging the action before it is executed.

## Installation 🚀

First, we need to add Stac Framework to our pubspec.yaml file.

Install the plugin by running the following command from the project root:

```bash
flutter pub add stac_framework
```

## Usage

1. Import `stac_framework.dart` at the top of your parser file.

```dart
 import 'package:stac_framework/stac_framework.dart';
```

2. Initialize your custom parser for a widget or an action and extend it from `StacParser` or `StacActionParser` like this.

    ```dart
        // define `MyCustomWidget`
    
        @freezed
        class MyCustomWidget with _$MyCustomWidget { ... }
    ```
   
    a. Let's say we are initializing a widget parser.

    ```dart
    class StacWidgetParser extends StacParser<MyCustomWidget> { 
        ... 
    }
    ```

    b. Let's say we are initializing an action parser.

    ```dart
    class StacActionParser  extends StacActionParser<dynamic> {
        ...
    }
    ```

3. Now implement the required methods in your custom parser.

    a. Let's say we are building a widget parser.

    ```dart
    class StacWidgetParser  extends StacParser<MyCustomWidget> {
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
    class StacActionParser  extends StacActionParser<dynamic> {
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
