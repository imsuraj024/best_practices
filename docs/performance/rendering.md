# Rendering and Rebuilds

Flutter rebuilds are normal. The goal is not zero rebuilds; the goal is keeping rebuild scope appropriate for the work being performed.

## Review checklist

- Keep rapidly changing state near its consumers.
- Avoid doing expensive computation inside `build`.
- Extract subtrees when it makes ownership and rebuild boundaries clearer.
- Prefer immutable inputs where practical.
- Use `const` constructors where they provide value.
- Measure with DevTools before and after meaningful changes.

## Anti-pattern

A screen-wide state update that rebuilds a complex page for a small counter, badge, or timer creates unnecessary work.

Prefer isolating the changing region so unrelated UI can remain stable.
