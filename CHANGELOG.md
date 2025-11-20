# PDFDancer Changelog

## Week of November 13-20, 2025

### Core Platform

**Text Processing Improvements**
- Improved accuracy of text positioning and alignment in extracted content
- Enhanced paragraph detection to better identify logical text blocks
- Better handling of complex text layouts and multi-column documents
- Improved text line editing capabilities with more accurate positioning

**Image Support**
- Enhanced image processing capabilities for better quality and compatibility

**API Performance**
- Added detailed performance metrics to `/summary` and `/windows` endpoints
- Improved API reliability and error handling
- Better handling of edge cases in form field operations

### Java SDK (v0.1.8)

**New Features**
- Select text lines using pattern matching with `selectTextLinesMatching()` and `selectTextLineMatching()`
- Edit text lines with full fluent builder pattern for easier code
- Delete pages with `page().delete()`
- Enhanced form field validation with type checks

**Improvements**
- Now supports Java 25
- Better compatibility with Gradle 9.x
- Improved method naming: `name()` renamed to `getName()` for consistency

**Documentation**
- Published OpenAPI specification
- Added API coverage report

### Python SDK (v0.2.28)

**New Features**
- Full text line editing support - modify text content in existing PDFs
- Change font and color properties on text lines

**Improvements**
- Better handling of text modifications with font preservation
- Clearer error messages when attempting unsupported operations

**Documentation**
- Complete PyPI package metadata for better discoverability
- Updated README and examples

### TypeScript SDK (v1.0.22)

**New Features**
- Introduced `PathBuilder` API for creating vector paths programmatically
- Added visual debugging helpers for easier development and testing

**Bug Fixes**
- Fixed page index handling in certain edge cases
- Improved Node.js environment compatibility
- Better error handling in browser vs server environments

**Documentation**
- Added visual debugging examples
- Updated OpenAPI specification

### MCP Server (v0.1.2)

**Platform Support**
- Now tested and verified on Node.js 18-25
- Full Windows and macOS compatibility
- Support for PowerShell and WSL environments

**Improvements**
- Easier installation with simplified setup instructions
- Better cross-platform compatibility
- Improved tool documentation and search syntax

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript, plus a Model Context Protocol (MCP) server for AI assistants. This week brought significant improvements to text editing capabilities across all SDKs, enhanced platform compatibility, and better developer tools.
