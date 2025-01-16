<p align="center">
  <img src="https://github.com/buildMirai/mirai/blob/dev/assets/mirai_banner.png" width="100%" alt="Mirai: Server-Driven UI Framework for Flutter" />
</p>

[![pub package](https://img.shields.io/pub/v/mirai.svg)](https://pub.dev/packages/mirai)
[![License: MIT][license_badge]][license_link]
[![GitHub Stars](https://img.shields.io/github/stars/buildMirai/mirai)](https://github.com/buildMirai/mirai/stargazers)
[![Netlify Status](https://api.netlify.com/api/v1/badges/a376dbd3-c928-4d0f-8cfd-6a2ca2dfae5b/deploy-status)](https://app.netlify.com/sites/buildmirai/deploys)

---
# 🚀 Mirai – Server-Driven UI Framework for Flutter

[Mirai][mirai_website] is a powerful Server-Driven UI (SDUI) framework for Flutter, enabling you to build beautiful, cross-platform applications dynamically using JSON in real time.

Whether you’re building apps for mobile, web, or desktop, Mirai simplifies UI delivery and enhances flexibility without requiring redeployment for every design change.

- 🛠️ Build Dynamic UIs: Update your app’s UI instantly with JSON configurations.
- 🌍 Cross-Platform: Write once, render anywhere – Flutter does the rest.
- ⚡ Fast Iterations: Make changes on the server and see them live in your app.

### 🌟 Explore Mirai in Action
- 🧪 [Try Mirai Playground](https://playground.buildmirai.dev/) – A sandbox environment for experimenting with Mirai Dynamic UI.
- 📚 [Read the Documentation](https://docs.buildmirai.dev/) – Get started with detailed guides and examples.

Developed with 💙 by [Mirai][mirai_website]

## Installation 🚀

First, we need to add Mirai to our pubspec.yaml file.

Install the plugin by running the following command from the project root:

```bash
flutter pub add mirai
```

## Usage 🧑‍💻

Now that we have successfully installed Mirai, we can import Mirai in main.dart.

```dart
import 'package:mirai/mirai.dart';
```

Next, within main function initialize Mirai.

```dart
void main() async {
  await Mirai.initialize();

  runApp(const MyApp());
}
```

You can also specify your custom Parsers in `Mirai.initialize` and `Dio` instance.

```dart
void main() async {
  final dio = Dio();

  await Mirai.initialize(
    parsers: const [
      ExampleScreenParser(),
    ],
    dio: dio,
  );

  runApp(const MyApp());
}
```

Finally, replace your MaterialApp with MiraiApp. And call your json with Mirai.fromJson(json, context).

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
    return MiraiApp(
      title: 'Mirai Demo',
      homeBuilder: (context) => Mirai.fromJson(json, context),
    );
  }
}

```

## Example

Here is an example of a basic form screen build with Mirai.

### Server

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

### Flutter

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

>Note:
>
>Mirai provides multiple methods to parse JSONs into Flutter widgets. You can use `Mirai.fromNetwork()`,  `Mirai.fromJson()` & `Mirai.fromAsset()`

That's it with just few lines of code your SDUI app is up and running.

![Form Screen][form_screen]

### More examples

Check out the [Mirai Gallery](https://github.com/BuildMirai/mirai/tree/dev/examples/mirai_gallery) app for more such examples.

## Contributors ✨

<a href="https://github.com/buildMirai/mirai/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=buildMirai/mirai" alt="Mirai Contributors"/>
</a>

## Companies/Products using Mirai ✨

<a href="https://jobhunt.work/">
  <img src="https://github.com/BuildMirai/mirai/tree/dv/companies/assets/companies/jobhunt.png" alt="Job Hunt" height="100"/>
</a>

## Maintainers

- [Divyanshu Bhargava][divyanshu_github]

[github_stars]: https://img.shields.io/github/stars/buildMirai/mirai
[github_stars_link]: https://github.com/buildMirai/mirai/stargazers 
[license_badge]: https://img.shields.io/badge/license-MIT-blue.png
[license_link]: https://opensource.org/licenses/MIT
[mirai_banner]: https://github.com/buildMirai/mirai/blob/dev/assets/mirai_banner.png
[form_screen]: https://github.com/buildMirai/mirai/blob/dev/assets/form_screen_image.png
[divyanshu_github]: https://github.com/divyanshub024
[mirai_website]: https://buildmirai.dev/