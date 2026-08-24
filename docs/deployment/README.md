# CI/CD and Release

Automate the checks that protect the main branch and make releases repeatable.

## Pull request pipeline

```text
Pull request
  ↓
Format
  ↓
Analyze
  ↓
Unit / widget tests
  ↓
Documentation checks
  ↓
Review
```

## Release pipeline

```text
Version
  ↓
Build
  ↓
Test
  ↓
Sign
  ↓
Publish
  ↓
Monitor
```

## Environment management

Keep development, staging, and production configuration explicit. Never commit production secrets to the repository. Prefer CI-managed secrets and environment-specific configuration.

## Release safety

- Keep build and version numbers traceable.
- Make signing credentials available only to the release environment.
- Use staged rollout where the platform and product risk justify it.
- Monitor crashes and critical business flows after release.
- Document rollback or mitigation procedures for high-risk releases.

## Principle

A release should be a repeatable process, not a sequence of manual steps known by one developer.
