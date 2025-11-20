# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This repository generates weekly changelogs for the pdfdancer stack by analyzing git history across multiple related repositories. The repositories are defined in `submodules.txt` and cloned as history-only (no working tree) to minimize disk usage while preserving git commit data.

## Repository Management

### Initial Checkout of Tracked Repositories

To clone all tracked repositories as history-only (no working tree, blob filtering):

```sh
for i in `cat submodules.txt`; do
  git clone --no-checkout --filter=blob:none $i `echo $i|sed 's|git.*Machine/\(.*\)\.git|\1|g'`
done
```

This creates directories like `pdfdancer-api`, `pdfdancer-backend`, etc. with only `.git` directories containing commit history.

### Update All Repositories

To pull latest changes from all tracked repositories:

```sh
for i in `cat submodules.txt`; do
  cd `echo $i|sed 's|git.*Machine/\(.*\)\.git|\1|g'` && git pull && cd ..
done
```

## Architecture

### Tracked Repositories

The pdfdancer stack consists of 6 repositories defined in `submodules.txt`:
- `pdfdancer-backend` - Backend service
- `pdfdancer-api` - API layer
- `pdfdancer-client-java` - Java client SDK
- `pdfdancer-client-python` - Python client SDK
- `pdfdancer-client-typescript` - TypeScript client SDK
- `pdfdancer-mcp` - MCP integration

### Changelog Generation

Changelogs are stored in `CHANGELOG.md` at the repository root. When generating changelogs, analyze git commit history across all tracked repositories to create consolidated weekly summaries.

#### Changelog Writing Guidelines

**Audience**: Write for PDFDancer users, not developers. Focus on what users can do, not how it was implemented.

**Structure**:
- Start with "Core Platform" section covering backend and API changes
- Follow with SDK-specific sections (Java, Python, TypeScript)
- End with MCP server section
- Include a footer summary explaining what PDFDancer is

**Content Guidelines**:

**DO Include**:
- New user-facing features and APIs
- Breaking changes or API improvements (method renames, signature changes)
- Bug fixes that affect user experience
- Platform/version compatibility changes
- Performance improvements users will notice
- New capabilities (e.g., "Select text lines using pattern matching")
- Documentation and examples that help users

**DO NOT Include**:
- Internal refactoring or code cleanup
- CI/CD changes, test infrastructure, or build system updates
- Internal class/method names unless part of public API
- Testing improvements or test additions
- Dependency updates unless they enable new features
- Implementation details (e.g., "Applied CTM Y-scale to ascent")
- Debug logging, code formatting, or minor cleanups

**Language**:
- Use active, user-focused language: "You can now..." or "Added support for..."
- Describe capabilities, not implementation: "Better text positioning" not "Improved text height calculation using font metrics"
- Group related changes into logical features
- Use present tense for current capabilities
- Keep it concise and scannable

**Example Transformation**:
- ❌ "Applied CTM Y-scale to ascent and descent in PDFTextContainer"
- ✅ "Improved accuracy of text positioning and alignment"

- ❌ "Added JUnit Platform Launcher for Gradle 9.x compatibility"
- ✅ "Better compatibility with Gradle 9.x"

- ❌ "Centralized error metrics publishing to exception handlers"
- ✅ (Omit - internal implementation detail)

## Working with Git History

Since repositories are cloned with `--no-checkout` and `--filter=blob:none`:
- Use `git log` commands to analyze commits
- No working tree exists in subdirectories
- Blob objects are fetched on-demand if needed
- Focus on commit metadata (messages, authors, dates) rather than file contents
