# Responsive Layouts

Design for a range of screen sizes and input environments instead of assuming one device shape.

## Principles

- Base layout decisions on available constraints, not device model names.
- Use adaptive breakpoints only when the layout actually needs a different composition.
- Keep content readable instead of stretching every surface to the full width.
- Handle orientation and split-screen scenarios where the product supports them.
- Avoid fixed heights around text and dynamic content.

## Pattern

```text
Available width
      ↓
Choose layout composition
      ↓
Constrain content
      ↓
Render adaptive components
```

## Avoid

- Hard-coded screen dimensions.
- Assuming every phone is the same aspect ratio.
- Horizontal overflow hidden as a substitute for responsive design.
- Desktop layouts simply scaled down for mobile.

## Testing

Test representative compact, regular, and wide constraints. Include large text settings for critical user journeys.
