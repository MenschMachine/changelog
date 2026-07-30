# PDFDancer Changelog

*Last updated: July 30, 2026*

Follow along with the latest improvements to PDFDancer. We ship updates frequently to make
editing, inspecting, and automating PDF workflows feel first-class for developers.

## Week of July 25-30, 2026

### Python SDK (v3.0.2)

**Structured Text Extraction**
- Analyze the complete document or one page as semantic reading units
- Receive classified text blocks with reading order, source-element provenance, page-space bounds, and relationships
- Use `analyze_reading_units()` at document scope or `pdf.page(page_number).analyze_reading_units()` at page scope

### TypeScript SDK (v3.0.1)

**Structured Text Extraction**
- Analyze the complete document or one page as semantic reading units
- Receive classified text blocks with reading order, source-element provenance, page-space bounds, and relationships
- Use `analyzeReadingUnits()` at document scope or `pdf.page(pageNumber).analyzeReadingUnits()` at page scope

### Java SDK (v3.0.1)

**Structured Text Extraction**
- Analyze the complete document or one page as semantic reading units
- Receive typed reading-unit records with reading order, source-element provenance, page-space bounds, and relationships
- Use `analyzeReadingUnits()` at document or page scope

**File Saving**
- Saving to a bare filename such as `output.pdf` no longer fails when the path has no parent directory
- Missing parent directories are created when a nested output path is used

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week adds structured text extraction through semantic reading units across all three SDKs.

## API v3 and Platform Updates (April 3 - July 24, 2026)

PDFDancer v3 introduces a new editing model across Java, Python, and TypeScript. Text changes are
expressed as explicit requests, layout behavior is selected per operation, and every text operation returns
detailed diagnostics for verifying the result before saving.

### SDK v3

Java SDK 3.0.0, Python SDK 3.0.1, and TypeScript SDK 3.0.0 provide the same editing model with
language-appropriate naming.

**New Text Editing Model**
- Replace, insert, delete, and style text with literal or regular-expression selectors at document or page scope
- Keep unaffected text source-anchored or recompose affected text with explicit layout profiles and per-operation hyphenation control
- Select text runs by their current font, size, color, spacing, content, or glyph mapping, then restyle the matches
- Apply font, size, color, and spacing changes during replacement, or replace selected text with an image

**Detailed Operation Diagnostics**
- Inspect matches, applied changes, affected pages, source and result text, requested and applied layout, generated elements, and structured diagnostic details

### Platform Updates

**Text Editing and Reflow**
- Compose edited text across multi-column prose, lists, headings, tables, code, explicit whitespace, hyphenation, and justified text

**Page and Document Operations**
- Delete a contiguous range of pages in one operation
- Create pages with the requested size and orientation
- Keep images at their intended page position during transformations and replacements

### Migrating from API v1

- Replace paragraph and text-line selection followed by edit builders with v3 text request objects
- Use one-based page numbers across all v3 SDKs
- Use Java 17 or newer, Python 3.10 or newer, or Node.js 20 or newer; the TypeScript SDK targets Node.js
- Keep redaction on API v1 until a v3 replacement is available; text deletion is not redaction
- Compose template workflows from individual v3 requests and compare the output with representative v1 documents

See the [v3 migration guide](https://docs.pdfdancer.com/v3/migrating-from-v1/) for operation-by-operation guidance.

---

**What's PDFDancer?** PDFDancer is a PDF editing platform with SDKs for Java, Python, and TypeScript. PDFDancer v3 provides request-based text editing, explicit layout control, and detailed diagnostics for production PDF workflows.

## Week of March 28 - April 2, 2026

### Core Platform

**Text Reflow Improvements**
- New `findAndReplaceWithReflow` method automatically reflows replaced text using the new V2 engine — text fits within original bounds more reliably
- NONE reflow strategy added to preserve line structure without any reflowing
- Better reflow for justified text with improved indent and line spacing detection

**Paragraph & Column Detection**
- Improved detection of three-column and multi-column layouts
- Section headings that were detached from their paragraphs are now repaired automatically
- Better column band detection for complex document layouts

**Word Detection**
- Improved word boundary detection for better text selection and extraction

**Text Identity**
- Stable text element IDs across sessions — paragraph references remain consistent when re-opening the same document

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week brings improved text reflow, better multi-column detection, and stable paragraph IDs.

## Week of March 21-27, 2026

### Core Platform

**Text Reflow V2**
- New reflow engine with text alignment detection (left, right, centered, justified)
- Improved font substitution for replaced text — better character spacing and glyph matching
- Multi-column-aware reflow that respects document structure
- Handles text overflow and edge cases more gracefully

**Recursive Element Replacement**
- Replace text elements in nested PDF structures (Form XObjects and layered content)

### Java SDK (v0.2.15)

**New Features**
- Read and write fill and stroke colors on vector paths, with alpha channel support

### Python SDK (v0.3.13)

**New Features**
- Read and write fill and stroke colors on vector paths, with alpha channel support

### TypeScript SDK (v2.0.16)

**New Features**
- Read and write fill and stroke colors on vector paths, with alpha channel support

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week introduces a new text reflow engine and path color read/write across all SDKs.

## Week of March 13-20, 2026

### Core Platform

**PDF/A Conformance Preservation**
- PDF/A documents retain their conformance after processing — ICC color profiles, output intents, XMP metadata, and MarkInfo structures are preserved
- Font conformance validation ensures embedded fonts meet PDF/A requirements
- Option to opt out of PDF/A preservation if you need to modify conformance-sensitive content

**Font Improvements**
- Font name is now resolved from the embedded TTF file metadata for more accurate identification

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week adds PDF/A conformance preservation so processed documents remain standards-compliant.

## Week of March 6-12, 2026

### Core Platform

**Clear Clipping**
- Remove clipping regions from text lines, paths, and other elements — reveal content that was previously hidden by clipping paths
- Works across multiple content streams on a page

### Java SDK (v0.2.14)

**New Features**
- `clearClipping()` on text lines and paths to remove clipping regions

### Python SDK (v0.3.12)

**New Features**
- `clear_clipping()` on text lines and paths to remove clipping regions

### TypeScript SDK (v2.0.15)

**New Features**
- `clearClipping()` on text lines and paths to remove clipping regions

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week adds the ability to remove clipping from PDF elements across all SDKs.

## Week of February 27 - March 5, 2026

### Core Platform

**Vector Path Groups**
- Group related vector paths and transform them as a unit — scale, rotate, and resize groups of paths together
- Ungroup path groups to work with individual paths again
- Get bounding box for a group of paths

**Find & Replace**
- Find and replace text that spans multiple lines

### Java SDK (v0.2.13)

**New Features**
- Path group management: create groups, scale, rotate, and resize them via API

### Python SDK (v0.3.11)

**New Features**
- Path grouping and transformation: group paths and apply scale, rotate, and resize operations

### TypeScript SDK (v2.0.14)

**New Features**
- Path grouping: group related paths and transform them together

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week adds vector path grouping across all SDKs for working with complex graphics as a unit.

## Week of February 20-26, 2026

### Core Platform

**Text Fragment Editing**
- Edit individual text fragments within a line — change font, size, or color on specific parts of a text line
- Get styled spans from text lines and paragraphs to inspect how text is formatted
- Split text lines into fragments by attribute for granular control

**Font Swap**
- Replace fonts in PDFs while preserving text positioning
- Kerning control for swapped fonts

**Template Replacement**
- Replace template placeholders with images
- Improved placeholder positioning accuracy

**Text Rendering**
- Better width calculation for Type0 (CID) fonts

### Java SDK (v0.2.7)

**New Features**
- Replace template placeholders with images

### Python SDK (v0.3.9)

**New Features**
- Replace template placeholders with images

### TypeScript SDK (v2.0.8)

**New Features**
- Replace template placeholders with images

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week adds text fragment editing for granular style control, font swapping, and image replacement in templates.

## Week of February 16-20, 2026

### Core Platform

**Text Rendering**
- Fixed character and word spacing calculations for more accurate text positioning

**Template Replacement**
- Default reflow preset changed to NONE for more predictable template replacement behavior
- Better error handling when template placeholders are missing

**Images**
- Fixed image dimensions when adding images to new pages

### Java SDK (v0.2.6)

**New Features**
- Fill a rectangular region of an image with a solid color using `fillRegion()`

### Python SDK (v0.3.8)

**New Features**
- Fill a rectangular region of an image with a solid color using `fill_region()`

### TypeScript SDK (v2.0.7)

**New Features**
- Fill a rectangular region of an image with a solid color using `fillRegion()`

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week adds image fill region support and fixes text spacing accuracy.

## Week of February 9-15, 2026

### Core Platform

**PDF Outlines & Bookmarks**
- Support for PDF outlines (bookmarks/table of contents) — preserved during processing

**Text Processing**
- Detect and extract invisible text in PDF paragraphs
- Improved word spacing in text width calculations
- Fixed form field widget handling for documents with shared widgets

**Element Ordering**
- Z-order index management for PDF elements — control the stacking order of text, images, and paths

### Java SDK

**New Features**
- Access text line font encoding and text content via `TextLineReference`

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week adds PDF outline support, invisible text detection, and element z-order control.

## Week of February 2-8, 2026

### Core Platform

**Font Management**
- Upload and manage custom fonts for use in template replacements and text editing
- Automatic cleanup of stale font resources

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week adds custom font management for template replacements.

## Week of January 26-31, 2026

### Core Platform

**Text & Paragraph Detection**
- Better paragraph detection for documents with watermarks and varying font sizes
- Support for rotated text elements

**Image Manipulation**
- Scale images while preserving transformations
- Better position preservation when transforming images
- Replace images with automatic dimension handling

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week improves text handling for international documents and enhances image manipulation.

## Week of January 12-18, 2026

### Java SDK (v0.2.5)

**New Features**
- Fluent template replacement API with builder pattern for easier configuration

### Python SDK (v0.3.7)

**New Features**
- Configure font and color for template replacements

### TypeScript SDK (v2.0.6)

**New Features**
- Fluent template replacement API with builder pattern

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week brings improved template replacement APIs across all SDKs.

## Week of January 5-11, 2026

### Core Platform

**Template Replacement**
- Replace placeholder text in PDFs with dynamic content
- Support for multiple template replacements in a single operation
- Automatic text reflow for replaced content

**Text & Paragraph Detection**
- Improved paragraph detection with adaptive line height reference
- Better handling of multi-column documents

**Word Detection**
- Enhanced word detection for better text selection
- Support for complex text spacing with TJ operator expansion

**Font Handling**
- Improved font encoding and text rendering
- Better handling of embedded fonts
- Deduplicate font streams across multi-page PDFs

### Java SDK (v0.2.4)

**New Features**
- Template replacement API: `applyReplacements()` to replace placeholder text with dynamic content

### Python SDK (v0.3.6)

**New Features**
- Template replacement: `apply_replacements()` to replace text templates

### TypeScript SDK (v2.0.5)

**New Features**
- Template replacement API with models for dynamic content

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week introduces template replacement for dynamic content generation and improves text detection.

## Week of December 29, 2025 - January 4, 2026

### Core Platform

**Text Reflow**
- Automatic text reflow for template replacements
- Better text fitting for replaced content

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week adds text reflow capabilities for better template replacement results.

## Week of December 22-28, 2025

### Java SDK (v0.2.3)

**Configuration**
- Support for both `PDFDANCER_API_TOKEN` and `PDFDANCER_TOKEN` environment variables

### Python SDK (v0.3.4)

**Configuration**
- Support for `PDFDANCER_API_TOKEN` environment variable

### TypeScript SDK (v2.0.4)

**Configuration**
- Support for `PDFDANCER_API_TOKEN` environment variable with fallback to `PDFDANCER_TOKEN`

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week adds support for the new `PDFDANCER_API_TOKEN` environment variable across all SDKs.

## Week of December 15-21, 2025

### Java SDK (v0.2.3)

**New Features**
- Image manipulation: get center position with `getCenter()` method

### Python SDK (v0.3.5)

**New Features**
- Image manipulation capabilities

### TypeScript SDK (v2.0.3)

**New Features**
- Image transformation features

---

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week introduces image manipulation capabilities across all SDKs.

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

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week brings improved font handling including TrueType and Type 3 support, plus regex pattern matching for text selection.

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

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week brings PDF layer support, improved annotation handling, and comprehensive image editing capabilities.

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

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week introduces redaction support across all SDKs and text reflow for automatic text fitting.

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

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week brings a major API version update with 1-based page numbering across all SDKs and a new find-and-replace feature.

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

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week brought text editing improvements and the new PathBuilder API for creating vector graphics.

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

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript. This week focused on reliability with automatic retries and rate limiting.

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

**What's PDFDancer?** PDFDancer is a PDF manipulation platform with SDKs for Java, Python, and TypeScript.
