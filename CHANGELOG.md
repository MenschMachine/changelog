# PDFDancer Changelog

*Last updated: November 25, 2025*

Follow along with the latest improvements to PDFDancer. We ship updates frequently to make
editing, inspecting, and automating PDF workflows feel first-class for developers.

## Week of November 23-29, 2025

### Core Platform

**Find and Replace**
- Find and replace text across PDFs with two replacement modes:
  - Visual replacement: overlays new text while preserving original structure
  - True replacement: removes original text completely
- Supports case-sensitive and case-insensitive searches
- Preserves font styling and positioning

**PDF Processing**
- Page orientation now preserved when loading and creating pages

### Java SDK (v0.2.0)

**Breaking Changes**
- Page numbering is now 1-based instead of 0-based
- `pageIndex` renamed to `pageNumber` throughout the API

### Python SDK (v0.3.0)

**Breaking Changes**
- Page numbering is now 1-based instead of 0-based
- `page_index` renamed to `page_number` throughout the API
- Removed `line_spacing` option from text line editing

### TypeScript SDK (v2.0.0)

**Breaking Changes**
- Page numbering is now 1-based instead of 0-based
- `pageIndex` renamed to `pageNumber` throughout the API

**New Features**
- Open PDFs directly from file paths: `PDFDancer.open("document.pdf")`
- Support for `File` and `ArrayBuffer` types in `open()` method
- Environment variable loading with dotenv support

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript, plus a Model Context Protocol (MCP) server for AI assistants. This week brings a major API version update with 1-based page numbering across all SDKs and a new find-and-replace feature.

## Week of November 16-22, 2025

### Core Platform

**Text Manipulation**
- More accurate text positioning and alignment in processed PDFs
- Better paragraph detection for multi-column documents
- Edit text lines that contain multiple styled text elements

**Form Fields**
- Form field validation ensures you're setting the right value types

### Java SDK (v0.1.8)

**New Features**
- Select text lines using pattern matching: `selectTextLinesMatching("pattern")` and `selectTextLineMatching("pattern")`
- Build text line edits with fluent API for clearer code
- Delete pages with `page().delete()`
- Better Gradle 9.x compatibility

**API Changes**
- `name()` method renamed to `getName()` for consistency

**Documentation**
- OpenAPI specification published
- API coverage report shows what's available

### Python SDK (v0.2.28)

**New Features**
- Edit text in existing PDFs by modifying text lines
- Change fonts and colors on text lines

**Bug Fixes**
- Text and font properties now preserved correctly during edits
- Clearer error messages when operations aren't supported

**Documentation**
- Complete PyPI package information for easier discovery

### TypeScript SDK (v1.0.22)

**New Features**
- Create vector paths programmatically with the new `PathBuilder` API
- Visual debugging helpers for development

**Bug Fixes**
- Better handling of page references in complex documents
- Improved Node.js compatibility

**Documentation**
- Visual debugging examples
- OpenAPI specification updated

### MCP Server (v0.1.2)

**Improvements**
- Verified compatibility with Node.js 18-25
- Full Windows and macOS support
- Works in PowerShell and WSL environments

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript, plus a Model Context Protocol (MCP) server for AI assistants. This week brought text editing improvements and the new PathBuilder API for creating vector graphics.

## Week of November 9-15, 2025

### Core Platform

**Text Processing**
- More accurate text positioning and sizing
- Better text merging for cleaner output

**Vector Graphics**
- Support for shading fills and gradients
- Enhanced annotation handling
- Better line width rendering
- Support for CMYK colors

**OCR Detection**
- Automatically detect if a PDF contains OCR'd text
- Page-level OCR detection

**PDF Features**
- Support for link annotations
- Better handling of specialized fonts

**Font Management**
- API endpoints for managing fonts

### Java SDK (v0.1.4)

**New Features**
- Select single elements at coordinates: `selectTextLineAt()`, `selectPathAt()`, `selectElementAt()`
- Automatic retry for failed requests with configurable backoff
- Graceful handling of rate limits with Retry-After support
- Enhanced form field type validation

**Documentation**
- API coverage analysis

### Python SDK (v0.2.24)

**New Features**
- Automatic retry for network errors
- Graceful rate limit handling with Retry-After support
- Select single elements: `selectTextLineAt()`, `selectPathAt()`, `selectElementAt()`

**Configuration**
- Control retry behavior with `PDFDANCER_RETRY_BACKOFF_FACTOR` environment variable

### TypeScript SDK (v1.0.17)

**New Features**
- Automatic retry for failed requests with Retry-After support
- Select single elements: `selectTextLineAt()`, `selectPathAt()`, `selectElementAt()`
- `ImageBuilder.apply()` method for easier image operations

**Improvements**
- Better Node.js environment handling

### MCP Server (v0.1.2)

**Major Changes**
- Focused on PDFDancer SDK documentation only
- Simplified search with clear syntax guide

**Publishing**
- Published to npm as `@pdfdancer/mcp-server`

**Documentation**
- Installation guides for Claude Desktop, Cline, Zed, and Sourcegraph Cody
- Demo video showing Claude Code integration

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript, plus a Model Context Protocol (MCP) server for AI assistants. This week focused on reliability with automatic retries and rate limiting.

## Week of November 2-8, 2025

### Core Platform

**PDF Metadata**
- All generated PDFs now include metadata
- Tenant ID tracking in documents

**Documentation**
- Coordinate system visualization tool
- Element selection demonstration tool

### Java SDK (v0.1.2)

**New Features**
- Configurable retry mechanism for network calls
- Session management and PDF processing

**Configuration**
- Default endpoint: https://api.pdfdancer.com
- Configurable base URLs

**Publishing**
- Published to Maven Central

### Python SDK (v0.2.22)

**New Features**
- Automatic retry for network failures
- Select single elements at coordinates

**Configuration**
- `PDFDANCER_RETRY_BACKOFF_FACTOR` environment variable

**Bug Fixes**
- Fixed attribute delegation in TextLineObject

### TypeScript SDK (v1.0.16)

**New Features**
- Full TypeScript support with type safety
- Works in browsers and Node.js
- String file path support
- Select single elements at coordinates

**Configuration**
- Default endpoint: https://api.pdfdancer.com
- Configurable base URLs

### MCP Server (v0.1.0)

**Initial Release**
- Access PDFDancer SDK documentation through MCP protocol
- Search documentation and retrieve code samples
- Compatible with AI assistants

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript, plus a Model Context Protocol (MCP) server for AI assistants.
