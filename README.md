# From Academia to Industry

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
just install  # Install Quarto extensions and Python dependencies
just update   # Update Quarto extensions and Python dependencies
just render   # Render slides to HTML
just preview  # Start a live preview with auto-reload
just open     # Open rendered slides in the default browser
just clean    # Remove generated files and caches
just check    # Check the Quarto and Python setup
just          # Install dependencies, render, and open slides
```

## Feedback

Feedback and suggestions are welcome in [the issue tracker](https://github.com/IndrajeetPatil/academia-to-industry/issues).
