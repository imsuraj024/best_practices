# UI and UX

Flutter UI should be predictable, responsive, accessible, and consistent with the product's design language.

## Principles

- Keep presentation logic separate from business rules.
- Prefer reusable components when the same behavior or visual contract repeats.
- Define loading, empty, success, and error states deliberately.
- Use responsive layouts rather than hard-coded device assumptions.
- Respect platform conventions where they improve usability.
- Avoid animation that delays or obscures important actions.

## Design system

Centralize recurring values such as typography, spacing, colors, shapes, and component states. Avoid scattering magic numbers across screens.

## Accessibility

Critical controls should have meaningful semantics, sufficient contrast, usable touch targets, and a logical traversal order. Do not communicate important information through color alone.

## Review checklist

- [ ] Text scales without breaking critical flows.
- [ ] Interactive controls have meaningful labels.
- [ ] Important states are visually and semantically distinguishable.
- [ ] Keyboard/screen-reader behavior has been considered where relevant.
- [ ] Layout works across representative screen sizes.
