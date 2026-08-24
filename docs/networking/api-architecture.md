# API Architecture

Keep HTTP and serialization concerns behind a data-source boundary. The rest of the application should consume meaningful models and errors.

```text
Presentation
    ↓
Application / State
    ↓
Repository
    ↓
Remote Data Source
    ↓
HTTP Client
```

## Repository responsibility

A repository should coordinate data sources and expose an application-friendly contract. It should not become a second HTTP client with every endpoint-specific concern duplicated inside it.

## Data-source responsibility

The remote data source handles transport details such as requests, response decoding, headers, and API-specific errors.

## Error mapping

Convert transport failures into errors the application can reason about, such as authentication expired, unavailable service, validation failure, or unexpected failure.

## Avoid

- API calls directly from widgets.
- Passing raw HTTP responses through the UI.
- Catching every exception and returning an empty list.
- Retrying non-idempotent operations blindly.
