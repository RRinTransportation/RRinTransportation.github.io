# RERITE Working Group Website

This website is built with [Quarto](https://quarto.org/).

## Editing Content

All content is in simple `.qmd` (Quarto Markdown) files:

- `index.qmd` - Homepage
- `about.qmd` - About page with vision and mission
- `team.qmd` - Steering committee members
- `activities.qmd` - Past and current activities
- `getinvolved.qmd` - How to get involved

## Adding a New Post (Activity)

On this website, “posts” are individual activity pages stored in `activities/` and linked from the timeline on `activities.qmd`.

### 1) Create a new activity `.qmd` file

1. Create a new file under `activities/`.
2. Use the naming convention: `YYYY-MM-DD-short-slug.qmd`.

Example: `activities/2026-03-15-my-event.qmd`

Template:

```markdown
---
title: "My Event Title"
date: 2026-03-15
categories: [workshop, tutorial]
---

One or two sentences describing the activity.

## Details

- Location:
- Organizers:
- Materials: [Link](https://example.com)

## Gallery

![Descriptive caption](../images/MyFolder/my-photo.jpg){width=900 fig-align=center}
```

Notes:
- Use `../images/...` paths inside `activities/*.qmd` (because activity pages are one folder down).
- Add images under `images/` (recommended in a subfolder like `images/ITSC2026/`).

### 2) Add the post to the Activities timeline

Open `activities.qmd` and add a new timeline card that links to your post.

There are two sections:
- **Ongoing & Future** (open marker `○`)
- **Past Activities** (filled marker `●`)

Copy/paste one of the existing blocks and update:
- the visible month/year label (`<span class="post-date">...`)
- the title and link target (`activities/YYYY-MM-DD-your-slug.qmd`)
- the short summary text
- the “Read Full Post” link

Minimal example (paste into the appropriate section):

```html
<div class="timeline-post">
<div class="post-timeline-marker">●</div>
<div class="post-card">
<div class="post-card-header">
<span class="post-status past">Past</span>
<span class="post-date">Mar 2026</span>
</div>

### [My Event Title](activities/2026-03-15-my-event.qmd)

One or two sentences describing the activity.

[Read Full Post →](activities/2026-03-15-my-event.qmd){.read-more}
</div>
</div>
```

Tip: keep the timeline cards short; put full details (and images) on the activity page.

### 3) Preview locally

```bash
quarto preview
```

### 4) Render and publish

This repo publishes via GitHub Pages from the `docs/` folder.

```bash
quarto render
```

Then commit and push:
- the new `activities/*.qmd` file
- any new `images/...` assets
- the updated `activities.qmd`
- the generated HTML in `docs/` (including `docs/activities/...`)

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

## Contributors
[Junyi Ji](https://www.jijunyi.com) - Website design and implementatio