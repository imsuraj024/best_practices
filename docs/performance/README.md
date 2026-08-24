# Performance

Performance work should be measured. Avoid optimizing code because it merely looks expensive.

## High-value practices

- Keep expensive computation out of `build` methods.
- Use `const` constructors where they are semantically appropriate.
- Split large widget trees so small state changes do not rebuild unrelated content.
- Render long lists lazily.
- Paginate server-backed collections.
- Resize and cache images appropriately.
- Profile memory and frame performance on representative devices.

## Measure before and after

For a performance change, record:

1. The user-visible problem.
2. The baseline measurement.
3. The change made.
4. The post-change measurement.
5. Any trade-offs introduced.

Do not claim a percentage improvement without a reproducible measurement.

## Common mistakes

- Assuming every rebuild is expensive.
- Adding `const` everywhere without understanding state boundaries.
- Loading entire datasets into memory.
- Using oversized images for small UI surfaces.
- Optimizing benchmarks that do not represent real user flows.
