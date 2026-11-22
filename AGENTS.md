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

- **Typography.** `Plus Jakarta Sans` for headings and display titles, `Manrope`
  for body text, and `IBM Plex Mono` for code snippets, metadata, and slide
  numbers. All fonts are bundled locally as WOFF2 files in `media/fonts/` with
  their OFL licences for offline presentation without Google Fonts requests.

- **Callouts and admonitions.** Quarto callouts are restyled through `style.css`
  to match the archival field-notebook card aesthetic: 11px border radius, 6px
  offset shadow, cream card background, 5px solid left accent stripe matching
  the palette, tinted header in bold Plus Jakarta Sans, and palette-matched SVG
  mask icons using `currentColor`. Do not use default Quarto/Bootstrap styling.

- **Illustrations and canvas sizing.** Standalone infographics are 16:9 WebP
  assets (`1376x768`) that maximize the slide canvas (`max-height: 560px`,
  `width: 100%`) without overflow, ensuring high visual clarity. Register all
  new visual assets under `resources:` in `_quarto.yml`.

- **No emoji clutter.** Do not use decorative emojis in slide titles, headings,
  callouts, card headers, or bullet points; maintain a clean, mature editorial
  aesthetic.

- **No repetition on the same slide.** Avoid repeating information or phrasing
  twice on the same slide: do not echo the slide title in child card headers,
  duplicate headings already rendered within embedded infographics, or restate
  column takeaways in bottom summary banners.

- **Sources.** Every factual claim has a source citation at the bottom of its
  slide in a small-font centred div. Keep this pattern.

- **Spelling and punctuation.** Use British spelling in prose (colour, licence,
  catalogue, artefact, customising) and the Oxford comma in lists of three or
  more. Leave code, identifiers, file names, URLs, quotations, and proper names
  (`license` in YAML, `color` in `style.css`) as they are.

- **Spoken notes.** The read-aloud control speaks the `.notes` content. Write
  complete, audience-facing narration; keep staging cues, private reminders,
  and delivery checklists outside these blocks.

- **Accessibility.** Images must have `fig-alt` text; raw HTML widgets use
  `role="img"` and `aria-label`.

- **Icons.** Icons are HTML spans backed by only the required SVG path data in
  `style.css`; no icon font or Quarto icon extension. When adding one, add only
  its mask data, preserve the source licence attribution, and keep an
  accessible label where the icon conveys meaning.

- **No code execution.** The deck has no executable code chunks; code blocks
  are display-only. Do not add executable chunks unless the deck genuinely
  needs computed output.

- **Python dependencies.** The deck declares `jupyter: python3`; the virtualenv
  only satisfies Quarto's engine. Depend only on `ipykernel`, `nbclient`, and
  `pyyaml`. Do not add the `jupyter` metapackage: it pulls in JupyterLab and
  Notebook and only attracts irrelevant security alerts.

- **Discoverability files.** Update `meta-tags.html` when the title,
  description, or social card changes, and `llms.txt` / `llms-full.txt` (and
  their `.well-known/` mirrors) when the content changes significantly.

## Pull requests

Follow these rules without relying on any instructions outside this
repository:

- Write every commit message and PR title as a Conventional Commit,
  `type(scope): description`, lowercase and imperative, with an allowed type
  (`build`, `chore`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`,
  `revert`, `style`, `test`). Keep the PR title and body in sync with the
  net diff.

- Open every PR ready for review with `gh pr create`, never as a draft.

- Never add agent or tool attribution to commits, PRs, or comments.

- When a PR needs visual evidence (such as slide layout or styling changes),
  use the shared `pr-screenshot` skill to post verified screenshots. Verify the
  uploaded images render in the comment.

- After opening or pushing, wait for hosted CI to finish. Inspect failed jobs,
  fix the cause, run the local checks, push, and repeat. Skipped, queued, or
  failing required checks are not success.

- If an automatic AI review (Codex, for the owner) runs on the PR, wait for
  its result instead of requesting one. Fix merited findings, reply to and
  resolve addressed threads, and continue until the review approves the
  current head with no unresolved findings. Never write `@codex` anywhere in
  a PR, even in backticks: it cancels the automatic review. Say "a Codex
  review request" instead.

- If Codex reports exhausted usage, take no workaround action: leave the PR
  open, do not merge, and report the review limit. CI work can still finish.
  Once usage refreshes, comment `@codex review` once; this is the only case
  that needs the comment.

- Once CI is green and the review gate is met, squash-merge with the owner's
  authenticated `gh` credentials, then verify the merged state. Recheck the
  head, threads, and checks immediately before merging, and never bypass
  branch protections.

- Update a PR branch from `main` only to resolve conflicts or pick up a change
  the PR depends on, never just to bring it up to date.

- Report local validation, hosted CI, review, and merge state separately. If
  an external blocker stops completion, leave the PR open and say so.

# CI/CD

- `.github/workflows/build-presentation.yaml` calls a reusable workflow from
  `IndrajeetPatil/workflows`: pushes to `main` build and deploy to GitHub
  Pages, pull requests build without deploying. Do not inline or modify that
  workflow here.
- Reference `IndrajeetPatil/workflows` reusable workflows as `@main`, never a
  commit SHA. The owner maintains them and is the only person who can
  contribute to this repository, so there is no external-contributor risk, and
  `@main` keeps it on the latest version. Code scanners (CodeQL
  `actions/unpinned-tag`, zizmor `unpinned-uses`) flag this by design: do not
  report it or propose a pin; dismiss such alerts as "won't fix" with this
  reason.
