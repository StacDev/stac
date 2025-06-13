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
