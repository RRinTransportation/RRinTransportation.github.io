# RERITE Working Group Website

This website is built with [Quarto](https://quarto.org/).

## Editing Content

All content is in simple `.qmd` (Quarto Markdown) files:

- `index.qmd` - Homepage
- `about.qmd` - About page with vision and mission
- `team.qmd` - Steering committee members
- `activities.qmd` - Past and current activities
- `getinvolved.qmd` - How to get involved

### To Edit Content

1. Edit the `.qmd` files directly (they're just markdown)
2. Run `quarto render` to compile them to HTML
3. The HTML files are generated in the `docs/` folder
4. Commit and push both the `.qmd` files and the `docs/` folder to GitHub

### Quick Start

```bash
# Install Quarto (if you haven't)
# Visit https://quarto.org/docs/get-started/

# Render the website
quarto render

# Or render and preview
quarto preview
```

## Styling

Custom styles are in `docs/styles.css`. The website uses:
- Cormorant font for headings
- Karla font for body text
- Velasca Mediterranean color palette

## GitHub Pages

The site is published from the `docs/` folder on GitHub Pages.
