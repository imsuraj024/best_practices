# Networking Error Handling Example

Map transport failures to application-level outcomes instead of exposing HTTP details to the UI.

```dart
enum AppFailureType {
  offline,
  timeout,
  unauthorized,
  validation,
  server,
  unknown,
}

class AppFailure implements Exception {
  const AppFailure(this.type);

  final AppFailureType type;
}
```

The presentation layer should decide how to render an `AppFailure`; it should not need to understand HTTP status codes or client exceptions.