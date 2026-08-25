from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
MARKDOWN = re.compile(r"\[[^\]]+\]\(([^)]+)\)")

errors = []
for path in ROOT.rglob("*.md"):
    if any(part.startswith(".") for part in path.relative_to(ROOT).parts):
        continue
    text = path.read_text(encoding="utf-8")
    for target in MARKDOWN.findall(text):
        if target.startswith(("http://", "https://", "mailto:", "#")):
            continue
        target = target.split("#", 1)[0]
        if not target:
            continue
        candidate = (path.parent / target).resolve()
        try:
            candidate.relative_to(ROOT.resolve())
        except ValueError:
            errors.append(f"{path}: link escapes repository: {target}")
            continue
        if not candidate.exists():
            errors.append(f"{path}: missing target: {target}")

if errors:
    print("Broken local Markdown links found:")
    print("\n".join(errors))
    sys.exit(1)

print("Markdown local links: OK")
