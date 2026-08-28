# CI validation note

The runnable performance example is validated with `dart format`, `flutter analyze`, and `flutter test` in GitHub Actions.

Performance profiling itself is not treated as a CI benchmark. Use Flutter DevTools and representative devices for runtime profiling, then record meaningful before-and-after measurements.
