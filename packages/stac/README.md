<p>
  <img src="https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/stac_banner.png" width="100%" alt="Stac: Server-Driven UI Framework for Flutter" />
</p>

<p align="center">
  <a href="https://pub.dev/packages/stac"><img src="https://img.shields.io/pub/v/stac?label=pub.dev&labelColor=0F172A&logo=dart&logoColor=fff&color=0EA5E9&style=flat" alt="pub"></a>
  <a href="https://github.com/StacDev/stac"><img src="https://img.shields.io/github/stars/StacDev/stac?style=flat&label=stars&labelColor=0F172A&color=8B5CF6&logo=github&logoColor=fff" alt="github"></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-22C55E.svg?labelColor=0F172A&style=flat" alt="license"></a>
  <a href="https://discord.com/invite/vTGsVRK86V"><img src="https://img.shields.io/discord/1326481685579173888?logo=discord&logoColor=fff&labelColor=0F172A&color=5865F2&style=flat" alt="discord"></a>
  <a href="https://github.com/StacDev/stac"><img src="https://img.shields.io/github/contributors/StacDev/stac?logo=github&logoColor=fff&labelColor=0F172A&color=F59E0B&style=flat" alt="contributors"></a>
  <a href="https://github.com/invertase/melos"><img src="https://img.shields.io/badge/maintained%20with-melos-F472B6.svg?labelColor=0F172A&style=flat" alt="melos"></a>
</p>

<p align="center">
  <a href="https://stac.dev/">Website</a> •
  <a href="https://console.stac.dev/">Console</a> •
  <a href="https://docs.stac.dev/quickstart">Quickstart</a> •
  <a href="https://docs.stac.dev/">Documentation</a> •
  <a href="https://discord.com/invite/vTGsVRK86V">Community & Support</a> •
  <a href="https://github.com/StacDev/stac">GitHub</a>
</p>

# Stac

**Stac** is a **Server-Driven UI (SDUI) framework for Flutter**. It lets you build and update your app's UI on the fly, without waiting for app store reviews!
Instead of hard-coding everything in your app, you write your UI using **Stac's intuitive Dart DSL**. Your server then delivers this UI as a JSON payload, and Stac automatically renders it natively on the client at runtime.

Why use Stac?

- **Ship instantly:** Tweak your UI in Dart, push it to your server, and boom—your users see it immediately.
- **A/B testing made easy:** Try out different layouts or personalize the experience without rolling out a new app version.
- **Build once:** Keep your UI consistent across iOS, Android, and Web with a unified backend schema.
- **Move faster:** Let your backend dictate layouts directly without ever touching the client-side Flutter codebase.

## Features 📦

- 🚀 **Instant updates:** Push UI changes straight from your server. No app store waiting rooms.
- 💻 **Familiar Dart syntax:** Write your server UI using our purely Dart DSL. It feels just like writing traditional Flutter code!
- 🧩 **Native rendering:** Stac translates your server's payload into lightning-fast native Flutter widgets on the client.
- 🧱 **Prebuilt components:** Comes with a massive library of ready-to-use standard Flutter widgets.
- 🌐 **Network requests:** Trigger API calls and manage data directly from your server payload.
- 🧭 **Navigation:** Control routing, open dialogs, and trigger bottom sheets from the backend.
- 📝 **Forms & validation:** We handle the messy form state and validation for you.
- 🎨 **Dynamic theming:** Change colors, fonts, and layouts on the fly using `StacTheme`.
- 💾 **Smart caching:** Built-in screen caching so your app feels blazing fast, even on flaky networks.
- 🛠️ **Custom widgets:** Need a custom chart or native integration? Easily build and register your own UI components.

## Quick Start

It's super easy to get started. You just need to initialize Stac and tell it which screen to load.

### 1. Initialize Stac
Set up Stac in your app's `main.dart` and provide a `routeName` to fetch from your server.

```dart
import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

// import 'package:my_app/default_stac_options.dart';

void main() async {
  // Initialize Stac with optional custom configurations
  await Stac.initialize(options: defaultStacOptions);
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stac App',
      // Pass a routeName to load your dynamic SDUI screen!
      home: Stac(routeName: 'get_started'),
    );
  }
}
```

### 2. Write your UI
You can author your screens using Stac's Dart package. It feels just like writing normal Flutter code, but it compiles down to JSON!

<table width="100%">
<tr>
<td width="70%">

```dart
import 'package:stac_core/stac_core.dart';

import '../widgets/primary_button.dart';

@StacScreen(screenName: "loginScreen")
StacWidget loginScreen() {
  return StacScaffold(
    appBar: StacAppBar(
      leading: StacIconButton(
        onPressed: StacNavigator.pop(),
        icon: StacIcon(
          icon: StacIcons.chevron_left,
          color: StacColors.onSurfaceVariant,
        ),
      ),
    ),
    body: StacPadding(
      padding: StacEdgeInsets.symmetric(horizontal: 20),
      child: StacColumn(
        crossAxisAlignment: StacCrossAxisAlignment.start,
        children: [
          StacRow(
            crossAxisAlignment: StacCrossAxisAlignment.end,
            children: [
              StacText(
                data: 'Sign in',
                style: StacThemeData.textTheme.titleLarge,
              ),
              StacSizedBox(width: 10),
              StacExpanded(
                child: StacDivider(
                  height: 20,
                  thickness: 1,
                  color: StacColors.black,
                ),
              ),
            ],
          ),
          StacSizedBox(height: 32),
          StacTextField(
            decoration: StacInputDecoration( 
              labelText: 'Email',
              labelStyle: StacThemeData.textTheme.bodyMedium,
            ),
          ),
          StacSizedBox(height: 24),
          StacTextField(
            decoration: StacInputDecoration(
              labelText: 'Password',
              labelStyle: StacThemeData.textTheme.bodyMedium,
            ),
            obscureText: true,
            maxLines: 1,
          ),
          StacSizedBox(height: 4),
          StacTextButton(
            onPressed: StacNavigator.pushStac('forgot_password_screen'),
            child: StacText(data: 'Forgot password?'),
          ),
          StacSpacer(),
          primaryButton(
            text: 'Proceed',
            onPressed: StacNavigator.pushStac('home_screen'),
          ),
        ],
      ),
    ),
  );
}

StacWidget primaryButton({
  required String text,
  required StacAction onPressed,
}) {
  return StacPadding(
    padding: StacEdgeInsets.only(top: 20, bottom: 48),
    child: StacFilledButton(
      onPressed: onPressed,
      child: StacRow(
        children: [
          StacText(data: text),
          StacSpacer(),
          StacIcon(icon: StacIcons.arrow_forward, size: 20),
        ],
      ),
    ),
  );
}
```
</td>
<td width="30%" align="center" valign="top">
  <img src="https://github.com/StacDev/stac/blob/dev/assets/login.png" alt="Stac Form Screen" height="840" />
</td>
</tr>
</table>

## Documentation

- 📚 **[Full Documentation](https://docs.stac.dev/)** – Complete guides and API reference
- 🚀 **[Quick Start](https://docs.stac.dev/quickstart)** – Get up and running in minutes
- 🛠️ **[Stac CLI](https://docs.stac.dev/cli)** – Command-line tools for development
- 🎛️ **[Stac Console](https://console.stac.dev/)** – Web interface for managing your app
- 🤝 **[Contributing](https://github.com/StacDev/stac/blob/dev/CONTRIBUTING.md)** – Help build Stac

## License

This project is licensed under the MIT License - see the [LICENSE](/LICENSE) file for details.

## Join our community

- 💬 **[Discord](https://discord.com/invite/vTGsVRK86V)** – Chat with the community and get help
- 🐙 **[GitHub](https://github.com/StacDev/stac)** – Report issues and contribute
- 🐦 **[X](https://x.com/stac_dev)** – Follow us for updates

---

<p align="center"> Developed with 💙 by the Stac team and our amazing community</p>

<p align="center">
<a href="https://github.com/StacDev/stac/graphs/contributors">
  <img src="https://raw.githubusercontent.com/StacDev/stac/refs/heads/dev/assets/contributor_banner.png" alt="Stac Contributors"/>
</a>
</p>

