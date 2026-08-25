# Accessibility

Accessibility should be considered during component and flow design, not added after the UI is complete.

## Core requirements

- Provide meaningful semantics for interactive controls.
- Do not communicate important information through color alone.
- Maintain sufficient contrast for text and meaningful UI states.
- Keep interactive targets comfortably usable.
- Preserve a logical traversal and focus order.
- Support text scaling without breaking critical flows.
- Provide useful labels for icons when their meaning is not obvious.
- Respect reduced-motion preferences where applicable.

## Flutter considerations

Use Flutter's semantic widgets and accessibility tooling where appropriate. Test the rendered semantics tree for critical controls instead of assuming visual labels are sufficient.

## Review checklist

- [ ] Primary actions have meaningful accessible names.
- [ ] Icon-only controls have labels.
- [ ] Errors are understandable without relying only on color.
- [ ] Text remains usable at larger accessibility sizes.
- [ ] Focus order supports the intended task flow.
- [ ] Critical flows have been reviewed with platform accessibility tools.
