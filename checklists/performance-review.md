# Performance Review Checklist

## Measurement

- [ ] A user-visible performance problem has been identified.
- [ ] Baseline measurements were captured.
- [ ] Measurements use representative devices and workloads.
- [ ] The result can be reproduced.

## Rendering

- [ ] Expensive work is not performed inside `build` unnecessarily.
- [ ] State changes have appropriate rebuild boundaries.
- [ ] `const` is used where appropriate.
- [ ] Large widget trees have been profiled when performance is a concern.

## Lists and data

- [ ] Large collections render lazily.
- [ ] Server-backed collections use pagination where appropriate.
- [ ] Loading, empty, error, refresh, and end states are handled.

## Images

- [ ] Images are appropriately sized for their display surface.
- [ ] Caching policy is intentional.
- [ ] Large image allocations have been considered.

## Memory

- [ ] Controllers, streams, subscriptions, and timers have clear lifecycles.
- [ ] Caches have a bounded or intentional retention policy.
- [ ] Representative flows have been checked for memory growth when relevant.

## CPU and startup

- [ ] CPU-heavy work does not block critical interaction.
- [ ] Expensive non-critical initialization is deferred where appropriate.
- [ ] Startup work is measured rather than guessed.

## Network

- [ ] Timeouts are configured.
- [ ] Duplicate requests are avoided where appropriate.
- [ ] Caching and freshness rules are explicit.
- [ ] Payload size and request sequencing have been reviewed.

## Verification

- [ ] Post-change measurements were captured.
- [ ] The improvement is documented with its measurement method.
- [ ] Trade-offs are documented.
