---
version: alpha
name: From Academia to Industry
description: >-
  Field notebook editorial presentation design: warm paper canvas, deep navy
  ink, editorial coral, amber gold, and deep teal accents, Fraunces serif
  headings with triple gradient underlines, and structured cards.
colors:
  primary: "#102a43"
  secondary: "#ee5d3f"
  bg-canvas: "#f4f0e7"
  bg-canvas-deep: "#ebe4d6"
  bg-card: "#fffdf8"
  text: "#102a43"
  muted: "#486581"
  coral: "#ee5d3f"
  coral-soft: "#ffe1d8"
  teal: "#087f78"
  teal-soft: "#d8f0ea"
  blue: "#3157c8"
  blue-soft: "#e2e9ff"
  gold: "#e2a72e"
  gold-soft: "#fff0bf"
  red: "#c63c4b"
  red-soft: "#ffe0e4"
  border: "rgba(16, 42, 67, 0.2)"
  shadow: "rgba(16, 42, 67, 0.12)"
typography:
  display:
    fontFamily: Fraunces, Georgia, serif
    fontSize: 2.7em
    fontWeight: 800
  heading:
    fontFamily: Fraunces, Georgia, serif
    fontSize: 1.5em
    fontWeight: 700
  body:
    fontFamily: Manrope, Avenir Next, sans-serif
    fontSize: 34px
    fontWeight: 500
  mono:
    fontFamily: IBM Plex Mono, SFMono-Regular, Consolas, monospace
rounded:
  sm: 4px
  md: 11px
  lg: 12px
  pill: 999px
components:
  page:
    backgroundColor: "{colors.bg-canvas}"
    textColor: "{colors.text}"
  card:
    backgroundColor: "{colors.bg-card}"
    border: "1px solid {colors.border}"
    shadow: "6px 6px 0 {colors.shadow}"
    rounded: "{rounded.md}"
  card-teal:
    background: "linear-gradient(180deg, {colors.teal-soft}, {colors.bg-card})"
    border: "1px solid {colors.border}"
    rounded: "{rounded.md}"
  card-blue:
    background: "linear-gradient(180deg, {colors.blue-soft}, {colors.bg-card})"
    border: "1px solid {colors.border}"
    rounded: "{rounded.md}"
  card-red:
    background: "linear-gradient(180deg, {colors.red-soft}, {colors.bg-card})"
    border: "1px solid {colors.border}"
    rounded: "{rounded.md}"
  card-gold:
    background: "linear-gradient(180deg, {colors.gold-soft}, {colors.bg-card})"
    border: "1px solid {colors.border}"
    rounded: "{rounded.md}"
---

# DESIGN.md

The visual design specification of the From Academia to Industry presentation deck.

## Overview

The visual identity is modeled on an archival "field notebook": a warm, tactile paper canvas (`#f4f0e7`) with subtle ambient radial gradients and a 30px technical grid, deep navy ink (`#102a43`), soft slate metadata (`#486581`), and a rich editorial tri-color accent palette composed of coral (`#ee5d3f`), gold (`#e2a72e`), and teal (`#087f78`).

The presentation format is Quarto RevealJS (`theme: simple`). Custom styles are defined in `style.css` and mirrored in the front matter above.

## Colours

- **Canvas & Ink:**
  - `bg-canvas` (`#f4f0e7`): Warm paper canvas background.
  - `bg-canvas-deep` (`#ebe4d6`): Darker paper tint for section contrasts.
  - `bg-card` (`#fffdf8`): Clean cream backing for cards, callouts, and data sheets.
  - `text` / `field-ink` (`#102a43`): Deep navy ink for headings, primary text, and high-contrast emphasis.
  - `muted` / `field-ink-soft` (`#486581`): Soft navy slate for secondary descriptions, metadata, and timestamps.
- **Editorial Accents:**
  - `coral` (`#ee5d3f`) & `coral-soft` (`#ffe1d8`): Primary editorial accent, section markers, bullet markers, and hover highlights.
  - `gold` (`#e2a72e`) & `gold-soft` (`#fff0bf`): Transitional highlights and middle gradient stops.
  - `teal` (`#087f78`) & `teal-soft` (`#d8f0ea`): Success indicators, positive takeaways, and right gradient stops.
  - `blue` (`#3157c8`) & `blue-soft` (`#e2e9ff`): Links, code tags, and informational cards.
  - `red` (`#c63c4b`) & `red-soft` (`#ffe0e4`): Cautionary warnings and challenges.
- **Title Slide Underline:**
  - Every `h2` heading features a 5px rounded underline filled with the gradient: `linear-gradient(90deg, #ee5d3f 0 46%, #e2a72e 46% 70%, #087f78 70% 100%)`.

## Typography

- **Headings:** `Fraunces` variable serif (`weight: 700-800`), providing literary weight and clear editorial hierarchy.
- **Body:** `Manrope` sans-serif (`weight: 500`), clean and legible at 34px base slide scale.
- **Code & Metadata:** `IBM Plex Mono` for code snippets, slide footers, and table headers.

## Layout & Components

- **Cover Slide:** Editorial two-column grid pairing a large Fraunces title with a tilted, framed polaroid-style visual art card (`transform: rotate(1.5deg)` with a hard 13px coral shadow).
- **Section Headers:** Full-bleed deep navy canvas (`#102a43`) with diagonal coral banner accents and large semi-transparent section numerals.
- **Cards & Callouts:** Cream card containers with 1px border (`rgba(16, 42, 67, 0.2)`), 11px border radius, and hard offset shadows (`6px 6px 0 rgba(16, 42, 67, 0.12)`).
- **Agenda Grid:** Two-column numbered cards (`01`, `02`, `03`, `04`) with monospace coral numerals.

## Do's and Don'ts

- **Do** retain `theme: simple` in `index.qmd` front matter.
- **Do** reuse the established CSS variables (`--field-coral`, `--field-teal`, etc.) rather than introducing raw hex values.
- **Do** maintain the 11px border-radius and hard offset box-shadow aesthetic for new cards.
- **Don't** introduce high-saturation neon colors or pure black text that breaks the warm field-notebook palette.
