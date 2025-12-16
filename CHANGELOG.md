# PDFDancer Changelog

*Last updated: December 16, 2025*

Follow along with the latest improvements to PDFDancer. We ship updates frequently to make
editing, inspecting, and automating PDF workflows feel first-class for developers.

## Week of December 14-20, 2025

### Core Platform

**Font Handling**
- Support for embedded TrueType fonts with custom encodings
- Support for Type 3 fonts with resources dictionary
- Vertical writing mode support for PDF fonts

**Image & Graphics**
- Blend mode support in PDF images
- ExtGState support with alpha/transparency and softmask composition
- Page rotation transformation handling

**Text Rendering**
- Improved text positioning with text rise offset
- Horizontal scaling support for text elements
- Color state inheritance for Form XObjects

**Annotations**
- Popup annotation appearance stream preservation
- Squiggly annotation support from original COS data

### Java SDK (v0.2.2)

**Improvements**
- Simplified redaction API for better usability
- Text line assertions now support regex pattern matching

### Python SDK (v0.3.3)

**New Features**
- Select text lines by regex pattern: `select_text_lines_matching("pattern")`

### TypeScript SDK

**New Features**
- Batch redact functionality for redacting multiple elements at once

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript, plus a Model Context Protocol (MCP) server for AI assistants. This week brings improved font handling including TrueType and Type 3 support, plus regex pattern matching for text selection.

## Week of December 7-13, 2025

### Core Platform

**PDF Layers (Optional Content)**
- Support for Optional Content Groups (OCGs) and layer visibility
- Preserve layer configurations when processing PDFs

**Annotation Improvements**
- Better handling of line, polyline, polygon, and link annotations
- Ink annotations now preserve opacity and border width
- Popup annotation support

**Form Fields**
- Improved appearance preservation for checkboxes, push buttons, and radio buttons
- Better handling of standalone widget annotations
- Text field appearance restoration

**Fonts & Text**
- Support for Type0 (CID) fonts with proper encoding
- Text rendering with stroke line width
- Improved tiling pattern rendering

**Image Editing**
- Replace, scale, and rotate images in PDFs
- Crop images to specific bounds
- Adjust image opacity
- Flip images horizontally or vertically

### Java SDK (v0.2.2)

No user-facing changes this week.

### Python SDK (v0.3.2)

**Documentation**
- Updated README with vector paths, redaction, and singular selectors examples

### TypeScript SDK (v2.0.2)

No user-facing changes this week.

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript, plus a Model Context Protocol (MCP) server for AI assistants. This week brings PDF layer support, improved annotation handling, and comprehensive image editing capabilities.

## Week of November 30 - December 6, 2025

### Core Platform

**Redaction**
- Redact sensitive content from PDFs including text, images, paths, and form fields
- Elements are permanently removed and replaced with placeholder boxes
- Redact by element ID for precise control over what gets removed

**Text Reflow**
- Replace text and automatically reflow to fit the original bounds
- Options for horizontal expansion and vertical scaling
- Works on both paragraphs and individual text lines

### Java SDK (v0.2.1)

**New Features**
- Redact content from PDFs: `textLine.redact()`, `image.redact()`, `path.redact()`, `formField.redact()`
- Select form fields by name: `selectFormFieldByName("fieldName")`

**Improvements**
- Default HTTP timeout increased to 60 seconds for large documents

### Python SDK (v0.3.1)

**New Features**
- Redact content from PDFs with `redact()` method on text lines, images, paths, and form fields

### TypeScript SDK (v2.0.1)

**New Features**
- Redact content from PDFs with `redact()` method on text lines, images, paths, and form fields

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript, plus a Model Context Protocol (MCP) server for AI assistants. This week introduces redaction support across all SDKs and text reflow for automatic text fitting.

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
