# From Academia to Industry

[![Build and Deploy Presentation](https://github.com/IndrajeetPatil/academia-to-industry/actions/workflows/build-presentation.yaml/badge.svg)](https://github.com/IndrajeetPatil/academia-to-industry/actions/workflows/build-presentation.yaml)

**A Practical Guide for Making the Transition**

This presentation provides a comprehensive framework for academics seeking to transition into industry careers. Whether you're a PhD student, postdoc, or established researcher, this guide offers practical strategies, actionable frameworks, and real-world insights to help you navigate your career transition successfully.

The slides can be seen here:<br>
<https://www.indrapatil.com/academia-to-industry/>

## Development

This project uses Python 3.14 (see `.python-version`) with [uv](https://docs.astral.sh/uv/) for dependency management, [Quarto](https://quarto.org/) for rendering slides, and [just](https://github.com/casey/just) as a command runner.

### Prerequisites

```bash
# Install just (macOS)
brew install just
```

### Setup

```bash
just install
```

### Just Commands

```bash
just help     # Show all available commands
just install  # Install Python dependencies and the a11y extension
just update   # Update Python dependencies
just render   # Render slides to HTML
just preview  # Start a live preview with auto-reload
just open     # Alias for preview (live-reload dev server over localhost)
just clean    # Remove generated files and caches
just check    # Check the Quarto and Python setup
just axe      # Preview with an appended accessibility report
just          # Install dependencies and start live-reload preview
```

`just axe --no-browser --port 8891` forwards preview options for automated checks.

`just axe` activates `_quarto-a11y.yml`, which appends an axe-core accessibility report slide. Normal rendering keeps the checker and its report out of the published deck. Quarto commands run through `uv run` to sync the environment and discover the project Python interpreter.

### Accessibility

`just install` and the shared CI workflow install the latest
[`quarto-revealjs-a11y`](https://github.com/mcanouil/quarto-revealjs-a11y) directly
from upstream with `quarto add mcanouil/quarto-revealjs-a11y --no-prompt`.
The extension handles browser zoom, slide isolation, focus indicators, link
underlines, reduced motion, and screen-reader announcements.

Run `just install` again after `just clean`, which removes installed extensions.

The `accessibility.html` helper still handles scrollable code, slide-menu focus,
and vertical-slide semantics. Tab ordering and arrow-key navigation remain for this deck's tabsets.
The extension's slide-menu patch and accessibility settings panel are disabled
as in the reference deck: version 0.2.3 introduces ARIA and contrast failures in
those components.

Use `just axe` to inspect slides, fragments, and menu panels in presentation and
scroll views. Normal builds omit the axe checker.

## Feedback

Feedback and suggestions are welcome in [the issue tracker](https://github.com/IndrajeetPatil/academia-to-industry/issues).
