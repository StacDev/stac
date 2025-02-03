<p align="center">
  <img src="https://github.com/StacDev/stac/blob/dev/assets/stac_banner.png" width="100%" alt="Stac: Server-Driven UI Framework for Flutter" />
</p>

[![pub package](https://img.shields.io/pub/v/stac.svg)](https://pub.dev/packages/stac)
[![License: MIT][license_badge]][license_link]
[![GitHub Stars](https://img.shields.io/github/stars/StacDev/stac)](https://github.com/StacDev/stac/stargazers)
[![Netlify Status](https://api.netlify.com/api/v1/badges/a376dbd3-c928-4d0f-8cfd-6a2ca2dfae5b/deploy-status)](https://app.netlify.com/sites/StacDev/deploys)
[![Discord](https://img.shields.io/discord/1326481685579173888.svg?logo=discord&color=blue)](https://discord.com/invite/vTGsVRK86V)

---
# 🚀 Stac – Server-Driven UI Framework for Flutter

[Stac][stac_website] (formerly Mirai) is a powerful Server-Driven UI (SDUI) framework for Flutter, enabling you to build beautiful, cross-platform applications dynamically using JSON in real time.

Whether you’re building apps for mobile, web, or desktop, Stac simplifies UI delivery and enhances flexibility without requiring redeployment for every design change.

- 🛠️ Build Dynamic UIs: Update your app’s UI instantly with JSON configurations.
- 🌍 Cross-Platform: Write once, render anywhere – Flutter does the rest.
- ⚡ Fast Iterations: Make changes on the server and see them live in your app.

### 🌟 Explore Stac in Action
- 🧪 [Try Stac Playground](https://playground.stac.dev/) – A sandbox environment for experimenting with Stac Dynamic UI.
- 📚 [Read the Documentation](https://docs.stac.dev/) – Get started with detailed guides and examples.

Developed with 💙 by [Stac][stac_website]

## Installation 🚀

First, we need to add Stac to our pubspec.yaml file.

Install the plugin by running the following command from the project root:

```bash
flutter pub add stac
```

## Usage 🧑‍💻

Now that we have successfully installed Stac, we can import Stac in main.dart.

```dart
import 'package:stac/stac.dart';
```

Next, within main function initialize Stac.

```dart
void main() async {
  await Stac.initialize();

  runApp(const MyApp());
}
```

You can also specify your custom Parsers in `Stac.initialize` and `Dio` instance.

```dart
void main() async {
  final dio = Dio();

  await Stac.initialize(
    parsers: const [
      ExampleScreenParser(),
    ],
    dio: dio,
  );

  runApp(const MyApp());
}
```

Finally, replace your MaterialApp with StacApp. And call your json with Stac.fromJson(json, context).

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
      title: 'Stac Demo',
      homeBuilder: (context) => Stac.fromJson(json, context),
    );
  }
}

```

## Example

Here is an example of a basic form screen build with Stac.

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
import 'package:stac/stac.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StacApp(
      title: 'Stac Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Stac.fromNetwork(
        StacRequest(
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
>Stac provides multiple methods to parse JSONs into Flutter widgets. You can use `Stac.fromNetwork()`,  `Stac.fromJson()` & `Stac.fromAsset()`

That's it with just few lines of code your SDUI app is up and running.

![Form Screen][form_screen]

### More examples

Check out the [Stac Gallery](https://github.com/StacDev/stac/tree/dev/examples/stac_gallery) app for more such examples.

## Contributors ✨

<a href="https://github.com/StacDev/stac/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=StacDev/stac" alt="Stac Contributors"/>
</a>

## Companies/Products using Stac ✨

<a href="https://jobhunt.work/">
  <img src="https://github.com/StacDev/stac/blob/dev/assets/companies/jobhunt.jpg" alt="Job Hunt" height="100"/>
</a>

<a href="https://bettrdo.com/">
  <img src="https://github.com/StacDev/stac/blob/dev/assets/companies/bettrdo.jpg" alt="BettrDo" height="100"/>
</a>

## Maintainers

- [Divyanshu Bhargava][divyanshu_github]

[github_stars]: https://img.shields.io/github/stars/StacDev/stac
[github_stars_link]: https://github.com/StacDev/stac/stargazers 
[license_badge]: https://img.shields.io/badge/license-MIT-blue.png
[license_link]: https://opensource.org/licenses/MIT
[stac_banner]: https://github.com/StacDev/stac/blob/dev/assets/stac_banner.png
[form_screen]: https://github.com/StacDev/stac/blob/dev/assets/form_screen_image.png
[divyanshu_github]: https://github.com/divyanshub024
[stac_website]: https://stac.dev/