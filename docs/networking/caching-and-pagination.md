# Caching and Pagination

## Caching

Define what is cached, for how long, who owns invalidation, and what happens when cached data is stale.

Prefer explicit cache policies over an accidental cache that persists indefinitely.

## Pagination

Use pagination when a collection can grow beyond a small bounded size.

```text
Initial request
    ↓
Page 1
    ↓
User reaches threshold
    ↓
Load next page
    ↓
Merge or replace according to API semantics
```

Handle loading, end-of-list, retry, duplicate requests, and partial failure states.

## Avoid

- Loading an unbounded dataset into memory.
- Fetching the same page concurrently because scroll events fire repeatedly.
- Treating stale cache data as authoritative without a product decision.
