# Design System

A design system should make common UI decisions consistent without preventing legitimate product-specific behavior.

## Foundations

Centralize:

- Typography
- Color roles
- Spacing scale
- Corner radii
- Elevation
- Motion durations and curves
- Component states

Prefer semantic names such as `surface`, `onSurface`, `primaryAction`, and `error` over screen-specific color names.

## Components

Reusable components should have a clear visual and behavioral contract. Document states such as:

```text
Default
Focused
Pressed
Disabled
Loading
Error
Selected
```

Do not extract a component solely because a widget tree is long. Extract when reuse, consistency, ownership, or testing creates a meaningful boundary.

## Theming

Prefer Flutter's theme system and design tokens over hard-coded values. Keep light/dark behavior explicit and test important contrast-sensitive states.

## Review checklist

- [ ] Repeated visual values use shared tokens.
- [ ] Component states are defined.
- [ ] Theme behavior is tested for important screens.
- [ ] Components expose only the configuration consumers need.
