#!/usr/bin/env Rscript

# Render the Quarto presentation
library(quarto)

# Render the presentation
quarto_render("index.qmd")

# Copy slides.html to index.html if it exists
if (file.exists("index.html")) {
  message("✓ Presentation rendered successfully")
  message("✓ View at: file://", normalizePath("index.html"))
} else {
  message("✗ Rendering failed")
}