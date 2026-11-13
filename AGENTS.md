# AGENTS.md

A single-page [Quarto](https://quarto.org/) presentation rendered to
[RevealJS](https://revealjs.com/) slides and deployed as a static site via
GitHub Pages. Recipes live in the `justfile`; `just render` must succeed after
every change.

## Key conventions

- **Single-file deck.** All slides live in `index.qmd`; do not split it. Follow
  the layout patterns of neighbouring slides.
- **Design specification.** The visual design follows [DESIGN.md](DESIGN.md);
  respect it when creating or modifying slides, components, styling, colours,
  and typography. Keep the theme `simple` and the format `revealjs`; restyle
  through `style.css`. Inline `style` backgrounds on fenced divs reuse colours
  already defined in `DESIGN.md` and `index.qmd`; do not invent new ones. New
  widgets follow the naming patterns already in `style.css`.
- **Sources.** Every factual claim has a source citation at the bottom of its
  slide in a small-font centred div. Keep this pattern.
- **Spelling and punctuation.** Use British spelling in prose (colour, licence,
  catalogue, artefact) and the Oxford comma in lists of three or more. Leave
  code, identifiers, file names, URLs, quotations, and proper names (`license`
  in YAML, `.well-known/api-catalog`) as they are.
- **Spoken notes.** The read-aloud control speaks the `.notes` content. Write
  complete, audience-facing narration; keep staging cues, private reminders,
  and delivery checklists outside these blocks.
- **Accessibility.** Images must have `fig-alt` text; raw HTML widgets use
  `role="img"` and `aria-label`. Read
  [`.agents/skills/check-accessibility/SKILL.md`](.agents/skills/check-accessibility/SKILL.md)
  before changing markup, styles, widgets, menus or the a11y setup, and for
  any accessibility audit.
- **Icons.** Icons are HTML spans backed by only the required SVG path data in
  `style.css`; no icon font or Quarto icon extension. When adding one, add only
  its mask data, preserve the source licence attribution, and keep an
  accessible label where the icon conveys meaning.
- **Mermaid.** Keep diagrams as Mermaid source; do not replace them with
  pre-rendered SVGs to shrink the bundle.
- **No code execution.** The deck has no executable code chunks; code blocks
  are display-only. Do not add executable chunks unless the deck genuinely
  needs computed output.
- **Python dependencies.** The deck declares `jupyter: python3`; the virtualenv
  only satisfies Quarto's engine. Depend only on `ipykernel`, `nbclient` and
  `pyyaml`. Do not add the `jupyter` metapackage: it pulls in JupyterLab and
  Notebook and only attracts irrelevant security alerts.
- **Discoverability files.** Update `meta-tags.html` when the title,
  description, or social card changes, and `llms.txt` / `llms-full.txt` (and
  their `.well-known/` mirrors) when the content changes significantly.

## CI/CD

- `.github/workflows/build-presentation.yaml` calls a reusable workflow from
  `IndrajeetPatil/workflows`: pushes to `main` build and deploy to GitHub
  Pages, pull requests build without deploying. Do not inline or modify that
  workflow here.
- Reference reusable workflows as `@main`, never a commit SHA: they are
  first-party, and a pinned SHA goes stale unnoticed.
