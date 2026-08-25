# Performance Engineering

Performance should be measured against real user journeys. Do not optimize code simply because it looks expensive.

## Performance model

```text
User journey
    ↓
Measure baseline
    ↓
Identify bottleneck
    ↓
Change one variable
    ↓
Measure again
    ↓
Keep only a verified improvement
```

## Main areas

| Area | Watch for | Preferred approach |
|---|---|---|
| Rendering | Excessive rebuilds | Narrow state boundaries |
| Layout | Expensive repeated work | Simplify widget trees |
| Lists | Large in-memory collections | Lazy rendering + pagination |
| Images | Oversized assets | Appropriate dimensions + caching |
| CPU | Heavy synchronous work | Isolate or move off critical UI path |
| Startup | Work before first frame | Defer non-critical initialization |
| Network | Slow or repeated requests | Caching, batching, pagination |
| Memory | Retained large objects | Ownership, disposal, profiling |

## Rendering

Use `const` where it improves widget identity and reduces unnecessary work, but do not treat `const` as a substitute for correct state boundaries. Keep frequently changing state close to the widgets that consume it.

## Lists and pagination

Avoid loading an unbounded remote collection into memory. Prefer server-side pagination where available, render items lazily, and define loading, empty, failure, refresh, and end-of-list states.

## Images

Request or generate images close to the size required by the UI. Cache intentionally and avoid retaining multiple full-resolution copies when thumbnails are sufficient.

## Expensive computation

CPU-heavy work should not block the UI thread during interaction. Profile first, then consider isolates or other off-main-thread approaches when the workload justifies them.

## Startup

Critical startup work should be minimal. Defer analytics setup, non-critical prefetching, and other optional initialization until after the first useful frame where product behavior permits it.

## Profiling

Use Flutter DevTools and profile builds when investigating real performance problems. Compare before and after measurements on representative devices and workloads.

Never publish an improvement percentage without recording how it was measured.
