# Notes App — Design & Implementation Overview (Slidev)

A modern Slidev presentation that showcases the notes app’s features, design system, and technical decisions. Includes interactive components, code samples with syntax highlighting, and embedded diagrams.

Quick start:
- pnpm install
- pnpm dev
- open http://localhost:3030

Build and export:
- pnpm build         # static SPA in dist/
- pnpm export        # export to PDF (requires Puppeteer/Chromium in environment)

Edit slides in [slides.md](./slides.md). Styling is applied via Slidev’s CSS chaining pattern:
- slides.md frontmatter imports ./style.css
- style.css imports theme files (./theme/custom.css)

Tech stack:
- Slidev + Vue 3
- Shiki code highlighting
- Mermaid diagrams
