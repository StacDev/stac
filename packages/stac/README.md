<p>
  <img src="https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/stac_banner.png" width="100%" alt="Stac: Server-Driven UI Framework for Flutter" />
</p>

[![pub package](https://img.shields.io/pub/v/stac.svg)](https://pub.dev/packages/stac)
[![License: MIT][license_badge]][license_link]
[![GitHub Stars](https://img.shields.io/github/stars/StacDev/stac)](https://github.com/StacDev/stac/stargazers)
[![Discord](https://img.shields.io/discord/1326481685579173888.svg?logo=discord&color=blue)](https://discord.com/invite/vTGsVRK86V)
[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)


---
# 🚀 Stac – Server-Driven UI Framework for Flutter

[Stac][stac_website] (formerly Mirai) is a powerful Server-Driven UI (SDUI) framework for Flutter, enabling you to build beautiful, cross-platform applications dynamically using JSON in real time.

Whether you're building apps for mobile, web, desktop, or WASM, Stac simplifies UI delivery and enhances flexibility without requiring redeployment for every design change.

## ✨ Key Features

- 🛠️ **90+ Built-in Widgets** – Comprehensive support for Material Design widgets
- 🎬 **11+ Action Handlers** – Navigate, network requests, dialogs, forms, and more
- 🎨 **Complete Theme Support** – JSON-driven theme customization with StacTheme
- 🌍 **Cross-Platform** – Write once, render on mobile, web, desktop, and WASM
- ⚡ **Fast Iterations** – Update UI instantly without redeployment
- 🔧 **Custom Parsers** – Extend with your own widgets and actions
- 🎯 **Variable Resolution** – Dynamic expressions and state management
- 📝 **Form Support** – Built-in form validation and value management
- 🚨 **Error Handling** – Customizable error widgets for better debugging
- 🖼️ **Rich Media** – Support for images, SVG, and cached network images

### 🌟 Explore Stac in Action
- 🧪 [Try Stac Playground](https://playground.stac.dev/) – A sandbox environment for experimenting with Stac Dynamic UI
- 📚 [Read the Documentation](https://docs.stac.dev/) – Get started with detailed guides and examples
- 💬 [Join Discord](https://discord.com/invite/vTGsVRK86V) – Connect with the community

Developed with 💙 by Stac.

## 📋 Requirements

- Flutter SDK: `>=3.35.0`
- Dart SDK: `>=3.0.0 <4.0.0`

## Installation 🚀

Add Stac to your project by running:

```bash
flutter pub add stac
```

## 🚀 Quick Start

### Step 1: Import Stac

```dart
import 'package:stac/stac.dart';
```

### Step 2: Initialize Stac

Initialize Stac in your `main()` function before running your app:

```dart
void main() async {
  await Stac.initialize();
  runApp(const MyApp());
}
```

### Step 3: Use StacApp

Replace `MaterialApp` with `StacApp` and load your UI using one of the available methods:

```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StacApp(
      title: 'Stac Demo',
      homeBuilder: (context) => Stac.fromJson(jsonMap, context),
    );
  }
}
```

That's it! Your Server-Driven UI app is now up and running.

## ⚙️ Advanced Configuration

You can configure Stac with custom parsers, error handling, and a custom `Dio` instance:

```dart
void main() async {
  final dio = Dio();

  await Stac.initialize(
    parsers: const [
      ExampleScreenParser(),
    ],
    actionParsers: const [
      CustomActionParser(),
    ],
    dio: dio,
    showErrorWidgets: true, // Show error widgets in debug mode
    logStackTraces: true, // Log stack traces for debugging
    errorWidgetBuilder: (context, error) {
      // Custom error widget
      return Text('Error in ${error.type}: ${error.error}');
    },
  );

  runApp(const MyApp());
}
```

## 📲 Loading UI

Stac provides three methods to load your UI:

### From JSON Map
```dart
Stac.fromJson(jsonMap, context)
```

### From Network
```dart
Stac.fromNetwork(
  context: context,
  request: StacNetworkRequest(
    url: 'https://api.example.com/screen',
    method: Method.get,
    headers: {'Authorization': 'Bearer token'},
    queryParameters: {'param': 'value'},
  ),
)
```

### From Assets
```dart
Stac.fromAssets('assets/screen.json')
```

You can also provide custom loading and error widgets:

```dart
Stac.fromNetwork(
  context: context,
  request: StacNetworkRequest(
    url: 'https://api.example.com/screen',
    method: Method.get,
  ),
  loadingWidget: (context) => CircularProgressIndicator(),
  errorWidget: (context, error) => Text('Failed to load: $error'),
)
```

## 📦 What's Included

### Widgets (90+)

Stac supports a comprehensive set of Flutter Material Design widgets out of the box:

**Layout Widgets:** Container, Column, Row, Stack, Positioned, Center, Align, Padding, SizedBox, Spacer, Expanded, Flexible, Wrap, FittedBox, AspectRatio, FractionallySizedBox, LimitedBox

**Scrollable Widgets:** ListView, GridView, SingleChildScrollView, PageView, CustomScrollView, RefreshIndicator, CarouselView

**UI Components:** Text, Icon, Image (with SVG and cached network support), Card, Chip, Divider, VerticalDivider, CircularProgressIndicator, LinearProgressIndicator, Placeholder

**Interactive Widgets:** ElevatedButton, TextButton, OutlinedButton, FilledButton, IconButton, FloatingActionButton, GestureDetector, InkWell, Switch, Checkbox, Radio, RadioGroup, Slider

**Input Widgets:** TextField, TextFormField, DropdownMenu, AutoComplete

**App Structure:** Scaffold, AppBar, SliverAppBar, Drawer, BottomNavigationBar, BottomNavigationView, TabBar, TabBarView, Tab

**Dialogs & Overlays:** AlertDialog, BackdropFilter

**Other Widgets:** Hero, Visibility, Conditional, Opacity, ColoredBox, ClipRRect, ClipOval, CircleAvatar, ListTile, Table, TableCell, SafeArea, Form, DynamicView, NetworkWidget

### Actions (11+)

Handle user interactions and app logic with built-in action handlers:

- **Navigate Action** – Navigate between screens
- **Network Request** – Make HTTP requests (GET, POST, PUT, DELETE)
- **Dialog Action** – Show alert dialogs
- **Modal Bottom Sheet** – Display bottom sheets
- **Snack Bar** – Show snack bar messages
- **Set Value** – Update variables and state
- **Get Form Value** – Retrieve form field values
- **Form Validate** – Validate form inputs
- **Multi Action** – Execute multiple actions sequentially
- **Delay Action** – Add delays between actions
- **None Action** – No-op action

### Theme Support

Customize your app's appearance with JSON-driven themes:

- Complete MaterialTheme support via `StacTheme`
- All theme components: ColorScheme, TextTheme, AppBarTheme, ButtonTheme, CardTheme, etc.
- Dark mode support
- Material 3 colors and surface variants
- Color transparency with `@` notation (e.g., `"primary@50"`)

### Additional Features

- **Variable Resolution:** Use dynamic expressions with `${variable}` syntax
- **Conditional Rendering:** Conditionally show/hide widgets based on expressions
- **Form Management:** Built-in form state management and validation
- **Custom Parsers:** Extend Stac with your own widgets and actions
- **Error Handling:** Customizable error widgets for better debugging
- **Expression Evaluation:** Support for dynamic logic in JSON

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
      homeBuilder: (context) => Stac.fromNetwork(
        context: context,
        request: StacNetworkRequest(
          url: 'https://api.example.com/form-screen',
          method: Method.get,
        ),
      ),
    );
  }
}
```

>**Note:** Stac provides multiple methods to load UI: `Stac.fromNetwork()`, `Stac.fromJson()`, and `Stac.fromAssets()`

That's it with just few lines of code your SDUI app is up and running.

![Form Screen][form_screen]

### More Examples

Check out these resources for more examples and inspiration:

- 📱 [Stac Gallery App](https://github.com/StacDev/stac/tree/dev/examples/stac_gallery) – A showcase of all Stac widgets and features
- 📝 [Counter Example](https://github.com/StacDev/stac/tree/dev/examples/counter_example) – Simple counter app built with Stac
- 🎬 [Movie App Example](https://github.com/StacDev/stac/tree/dev/examples/movie_app) – Complete movie browsing app
- 📚 [Documentation](https://docs.stac.dev/) – Full documentation with detailed examples for all widgets and actions

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guide](https://github.com/StacDev/stac/blob/dev/CONTRIBUTING.md) for details.

### Code of Conduct

Please read our [Code of Conduct](https://github.com/StacDev/stac/blob/dev/CODE_OF_CONDUCT.md) before contributing.

## Contributors ✨

Thanks to all our amazing contributors!

<a href="https://github.com/StacDev/stac/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=StacDev/stac" alt="Stac Contributors"/>
</a>

## Companies/Products using Stac ✨

<a href="https://jobhunt.work/">
  <img src="https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/companies/jobhunt.jpg" alt="Job Hunt" height="100"/>
</a>

<a href="https://bettrdo.com/">
  <img src="https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/companies/bettrdo.jpg" alt="BettrDo" height="100"/>
</a>

## 📖 Resources

- 📘 [Official Documentation](https://docs.stac.dev/)
- 🎮 [Playground](https://playground.stac.dev/)
- 🌐 [Website](https://stac.dev/)
- 💬 [Discord Community](https://discord.com/invite/vTGsVRK86V)
- 📦 [pub.dev Package](https://pub.dev/packages/stac)
- 🐙 [GitHub Repository](https://github.com/StacDev/stac)

## 👥 Maintainers

- [Divyanshu Bhargava][divyanshu_github] – Core Developer
- [Rahul Bisht][rahul_linkedin] – Core Developer

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

[github_stars]: https://img.shields.io/github/stars/StacDev/stac
[github_stars_link]: https://github.com/StacDev/stac/stargazers 
[license_badge]: https://img.shields.io/badge/license-MIT-blue.png
[license_link]: https://opensource.org/licenses/MIT
[stac_banner]: https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/stac_banner.png
[form_screen]: https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/form_screen_image.png
[divyanshu_github]: https://github.com/divyanshub024
[rahul_linkedin]: https://www.linkedin.com/in/bybisht
[stac_website]: https://stac.dev/
