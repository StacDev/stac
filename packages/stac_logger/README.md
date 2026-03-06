# Stac Logger

[![pub package](https://img.shields.io/pub/v/stac_logger.svg?label=stac_logger&color=blue)](https://pub.dev/packages/stac_logger)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A lightweight and reusable logging utility for the Stac framework. It switches between implementations—using Flutter's debugPrint on web/WASM platforms and the robust logger package on native platforms—ensuring optimal performance and compatibility across all environments.

## Getting started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  stac_logger: ^1.0.0
```

Then run:

```bash
flutter pub get
```

## Usage

Import the package and use the `Log` class to log messages:

```dart
import 'package:stac_logger/stac_logger.dart';

void main() {
  // Log a debug message
  Log.d('Debug message');
  
  // Log an info message
  Log.i('Info message');
  
  // Log a warning message
  Log.w('Warning message');
  
  // Log an error message
  Log.e('Error message');
}
```

## Implementation Details

This package uses conditional imports to select the appropriate logging implementation based on the platform:

- On native platforms (iOS, Android, desktop), it uses a full-featured logger implementation
- On web/WASM platforms, it uses a simplified implementation compatible with those environments

The conditional import approach ensures that no `dart:io` code is included in web/WASM builds, making the package fully compatible with WebAssembly.

## Additional information

This package is part of the Stac framework ecosystem and is designed to provide logging functionality that works across all platforms, including WASM environments
