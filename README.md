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

## Adding Images (Robust)

You can insert images with standard Markdown, and a filter will enhance them for responsiveness and performance.

Basic usage:

```markdown
![Workshop photo](images/workshop.jpg){width=720 fig-align=center}
```

Recommendations:
- Place images under `images/`.
- Provide meaningful captions or `alt` text.
- Use `{width=...}` to cap visual width while keeping aspect ratio.
- `fig-align=center` centers the image in its figure.

Performance features (automatic):
- `loading="lazy"` and `decoding="async"`
- Responsive class `img-responsive`
- Default `sizes="(max-width: 768px) 100vw, 768px"`

Advanced `srcset` example:

```markdown
![Workshop photo](images/workshop-768.jpg){
	srcset="images/workshop-480.jpg 480w, images/workshop-768.jpg 768w, images/workshop-1200.jpg 1200w",
	sizes="(max-width: 768px) 100vw, 768px",
	width=768,
	class=img-responsive img-rounded,
	alt="Participants collaborating at the workshop"
}
```

Tips:
- Prefer ~1200px max width for originals to keep pages light.
- Use `class=img-rounded` for rounded corners.


## Where to Put Images
- Store figures and images in `images/` at the project root.
- Reference them from content like `![Caption](images/my-figure.jpg){width=720}`.
- Keep filenames lowercase-with-dashes and add descriptive `alt` text.

## Recommended Image Sizes
- Standard content: up to ~1200px width.
- Thumbnails/grids: 200–400px width.
- Prefer compressed JPEG/WEBP for photos; PNG for graphics.

## Robust Image Markup
- Basic: `![Workshop](images/workshop.jpg){width=720 fig-align=center}`
- Advanced: add `srcset`/`sizes` for multiple resolutions.

The site auto-adds `loading="lazy"`, `decoding="async"`, and a responsive class via the image filter in `filters/image.lua`.
