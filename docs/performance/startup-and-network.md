# Startup and Network Performance

## Startup

The first useful frame should not wait for work that can happen later.

Prioritize:

1. Required configuration
2. Authentication/session restoration when required for the initial route
3. Critical data needed to render the initial experience

Defer non-critical analytics, optional prefetching, cache warming, and expensive setup when product behavior allows it.

## Network

Network performance is more than latency. Repeated requests, oversized payloads, missing caching, and sequential calls can all degrade the experience.

Prefer:

- Appropriate timeouts
- Request deduplication where needed
- Pagination
- Caching with explicit freshness rules
- Batching where supported
- Parallel requests when dependencies do not require sequencing
- Compact response models for high-volume endpoints

Measure the complete user journey rather than optimizing a single request in isolation.
