---
slug: /
sidebar_position: 1
---

# Get Started 🚀

Welcome to **Mirai**, a Server-Driven UI (SDUI) framework for Flutter. Mirai empowers developers to build dynamic, cross-platform applications by utilizing JSON in real time. This innovative approach to UI development allows for flexible, efficient, and seamless updates, minimizing the need for frequent AppStore/PlayStore releases and ensuring your application always looks and feels fresh.

## Packages

The Miraiverse consists of the following packages:

| Package | Description | Link                                                                                               |
|---------|-------------|----------------------------------------------------------------------------------------------------|
| [mirai](https://github.com/Securrency-OSS/mirai/tree/dev/packages/mirai) | The core package that provides the foundation for building server-driven UIs in Flutter. | [![pub package](https://img.shields.io/pub/v/mirai.svg)](https://pub.dev/packages/mirai)           |
| [mirai_framework](https://github.com/Securrency-OSS/mirai/tree/dev/packages/mirai_framework) | A framework that extends the functionality of the core package and provides additional features for building server-driven UIs. | [![pub package](https://img.shields.io/pub/v/mirai_framework.svg)](https://pub.dev/packages/mirai_framework) |
| [mirai_webview](https://github.com/Securrency-OSS/mirai/tree/dev/packages/mirai_webview) | A package that enables you to embed web views in your server-driven UIs. | [![pub package](https://img.shields.io/pub/v/mirai_webview.svg)](https://pub.dev/packages/mirai_webview)   |


## Installation

To get started with Mirai, follow the installation instructions below:

1. Add the Mirai dependency to your `pubspec.yaml` file:

Run this command:

```bash
flutter pub add mirai
```
This will add mirai into your package's pubspec.yaml (and run an implicit flutter pub get):

Alternatively, you can manually add the dependency to your app from within your pubspec.yaml:

```yaml
dependencies:
  mirai: ^<latest-version>
```
:::note
Please replace `<latest-version>` with the latest version of Mirai. You can find the latest version on the [Mirai pub.dev page](https://pub.dev/packages/mirai).
:::

2. Run the following command in your terminal to install the package:

```bash
flutter pub get
```

3. Import the Mirai package in your Dart file:

```dart
import 'package:mirai/mirai.dart';
```

Now, you're ready to start using Mirai in your Flutter project.

## How to use Mirai?

Now that you have successfully installed Mirai, let's dive into how you can use it to build dynamic, server-driven UIs in your Flutter project.

## 1. Import the Mirai package

To start using Mirai, you need to import the package in your Dart file. Add the following import statement to your `main.dart`:

```dart
import 'package:mirai/mirai.dart';
```

This import allows you to access all the classes and functions provided by Mirai.

## 2. Initialize Mirai

In the `main` function, initialize Mirai to set up the necessary configurations and prepare your app for rendering UI from JSON.

### Basic Initialization
```dart
void main() async {
  await Mirai.initialize();
  runApp(const MyApp());
}
```

## 3. Use Mirai to Render UI

You can use `Mirai.fromJson` to load and render the UI from a JSON object. Here’s how you can integrate it into your Flutter app:

```dart
import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';

void main() async {
  await Mirai.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiraiDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Mirai.fromJson(json, context),
    );
  }
}
```

### Rendering UI from JSON File in Assets

You can also use `Mirai.fromAssets` to load and render the UI from a JSON file stored in the assets folder:

```dart
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'MiraiDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Mirai.fromAsset('assets/ui.json', context),
  );
}
```

### Rendering UI from Network

Alternatively, use the `Mirai.fromNetwork` method to load and render the UI from a JSON file stored on a server:

```dart
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'MiraiDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Mirai.fromNetwork(
      request: MiraiNetworkRequest(
        url: 'https://example.com/ui.json',
      ), 
      context: context,
    ),
  );
}
```

By following these steps, you can effectively integrate Mirai into your Flutter project and start building dynamic, server-driven UIs.

## Example: Mirai Form Screen

Here's an example of how you can use Mirai to render a form screen in your Flutter app:

### JSON Data

```json
{
  "type": "scaffold",
  "appBar": {
    "type": "appBar",
    "title": {
      "type": "text",
      "data": "Text Field",
      "style": {
        "color": "#ffffff",
        "fontSize": 21
      }
    },
    "backgroundColor": "#4D00E9"
  },
  "backgroundColor": "#ffffff",
  "body": {
    "type": "singleChildScrollView",
    "child": {
      "type": "container",
      "padding": {
        "left": 12,
        "right": 12,
        "top": 12,
        "bottom": 12
      },
      "child": {
        "type": "column",
        "mainAxisAlignment": "center",
        "crossAxisAlignment": "center",
        "children": [
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "textField",
            "maxLines": 1,
            "keyboardType": "text",
            "textInputAction": "done",
            "textAlign": "start",
            "textCapitalization": "none",
            "textDirection": "ltr",
            "textAlignVertical": "top",
            "obscureText": false,
            "cursorColor": "#FC3F1B",
            "style": {
              "color": "#000000"
            },
            "decoration": {
              "hintText": "What do people call you?",
              "filled": true,
              "icon": {
                "type": "icon",
                "iconType": "cupertino",
                "icon": "person_solid",
                "size": 24
              },
              "hintStyle": {
                "color": "#797979"
              },
              "labelText": "Name*",
              "fillColor": "#F2F2F2"
            },
            "readOnly": false,
            "enabled": true
          },
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "textField",
            "maxLines": 1,
            "keyboardType": "text",
            "textInputAction": "done",
            "textAlign": "start",
            "textCapitalization": "none",
            "textDirection": "ltr",
            "textAlignVertical": "top",
            "obscureText": false,
            "cursorColor": "#FC3F1B",
            "style": {
              "color": "#000000"
            },
            "decoration": {
              "hintText": "Where can we reach you?",
              "filled": true,
              "icon": {
                "type": "icon",
                "iconType": "cupertino",
                "icon": "phone_solid",
                "size": 24
              },
              "hintStyle": {
                "color": "#797979"
              },
              "labelText": "Phone number*",
              "fillColor": "#F2F2F2"
            },
            "readOnly": false,
            "enabled": true
          },
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "textField",
            "maxLines": 1,
            "keyboardType": "text",
            "textInputAction": "done",
            "textAlign": "start",
            "textCapitalization": "none",
            "textDirection": "ltr",
            "textAlignVertical": "top",
            "obscureText": false,
            "cursorColor": "#FC3F1B",
            "style": {
              "color": "#000000"
            },
            "decoration": {
              "hintText": "Your email address",
              "filled": true,
              "icon": {
                "type": "icon",
                "iconType": "material",
                "icon": "email",
                "size": 24
              },
              "hintStyle": {
                "color": "#797979"
              },
              "labelText": "Email",
              "fillColor": "#F2F2F2"
            },
            "readOnly": false,
            "enabled": true
          },
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "sizedBox",
            "height": 100,
            "child": {
              "type": "textField",
              "expands": true,
              "cursorColor": "#FC3F1B",
              "style": {
                "color": "#000000"
              },
              "decoration": {
                "filled": true,
                "hintStyle": {
                  "color": "#797979"
                },
                "labelText": "Life story",
                "fillColor": "#F2F2F2"
              },
              "readOnly": false,
              "enabled": true
            }
          },
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "textField",
            "maxLines": 1,
            "keyboardType": "text",
            "textInputAction": "done",
            "textAlign": "start",
            "textCapitalization": "none",
            "textDirection": "ltr",
            "textAlignVertical": "top",
            "obscureText": true,
            "cursorColor": "#FC3F1B",
            "style": {
              "color": "#000000"
            },
            "decoration": {
              "filled": true,
              "suffixIcon": {
                "type": "icon",
                "iconType": "cupertino",
                "icon": "eye",
                "size": 24
              },
              "hintStyle": {
                "color": "#797979"
              },
              "labelText": "Password*",
              "fillColor": "#F2F2F2"
            },
            "readOnly": false,
            "enabled": true
          },
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "textField",
            "maxLines": 1,
            "keyboardType": "text",
            "textInputAction": "done",
            "textAlign": "start",
            "textCapitalization": "none",
            "textDirection": "ltr",
            "textAlignVertical": "top",
            "obscureText": true,
            "cursorColor": "#FC3F1B",
            "style": {
              "color": "#000000"
            },
            "decoration": {
              "filled": true,
              "suffixIcon": {
                "type": "icon",
                "iconType": "cupertino",
                "icon": "eye",
                "size": 24
              },
              "hintStyle": {
                "color": "#797979"
              },
              "labelText": "Re-type password*",
              "fillColor": "#F2F2F2"
            },
            "readOnly": false,
            "enabled": true
          },
          {
            "type": "sizedBox",
            "height": 48
          },
          {
            "type": "elevatedButton",
            "child": {
              "type": "text",
              "data": "Submit"
            },
            "style": {
              "backgroundColor": "#4D00E9",
              "padding": {
                "top": 8,
                "left": 12,
                "right": 12,
                "bottom": 8
              }
            },
            "onPressed": {}
          }
        ]
      }
    }
  }
}
```
### Flutter Code

```dart
import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MiraiApp(
      title: 'Mirai Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Mirai.fromNetwork(
        MiraiRequest(
          url: _url,
          method: Method.get,
        ),
      ),
    );
  }
}
```

That's it with just few lines of code your SDUI app is up and running.

<img src="/img/form_screen_image.png" alt="Form screen example"/>

For more detailed examples and advanced usage, refer to the [Mirai Gallery App](https://github.com/buildMirai/mirai/tree/dev/examples/mirai_gallery).


