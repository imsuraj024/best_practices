# Network Security

Protect data in transit and keep transport behavior explicit.

## Baseline

- Use HTTPS/TLS for production network communication.
- Keep certificate validation enabled.
- Never disable TLS verification to work around development errors in production.
- Avoid logging authentication headers and sensitive request or response bodies.
- Keep dependencies updated and review security advisories.

## Certificate pinning

Certificate pinning can reduce exposure to certain man-in-the-middle scenarios, but it also creates certificate rotation and operational failure risks.

Evaluate it against the application's threat model, certificate management process, and recovery strategy. Do not treat pinning as a universal requirement.

## Failure handling

Network security failures should fail closed for security-sensitive operations. Do not silently downgrade to insecure transport.
