# Memory and Images

## Memory

Prefer clear ownership for large objects and resources. Dispose controllers, subscriptions, streams, and platform resources according to their lifecycle. Investigate retained objects with profiling tools rather than guessing from source code.

### Watch for

- Unbounded in-memory collections
- Large decoded images
- Long-lived listeners
- Timers and streams that outlive their feature
- Caches without a bounded policy

## Images

Use the smallest practical asset for the UI surface. Consider dimensions, format, caching policy, and device memory. Avoid decoding a very large image when only a small thumbnail is displayed.

## Rule

Memory optimization is a measurement problem. Profile representative flows, identify retained allocations, make one targeted change, and verify the result.
