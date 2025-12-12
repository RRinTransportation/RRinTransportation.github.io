# RERITE - REproducible Research In Transportation Engineering

This repository is a continuation from the previous GitHub project, which you can find [here](https://github.com/RERITEWorkingGroup/RERITE_website).

## About This Site

This website is built with [Quarto](https://quarto.org/), a scientific and technical publishing system. This makes content editing much easier - you edit simple markdown files (`.qmd`) instead of complex HTML.

## How to Edit Content

### Quick Start

1. **Edit the `.qmd` files** in the root directory:
   - `index.qmd` - Homepage
   - `about.qmd` - About page (vision and mission)
   - `team.qmd` - Steering committee members
   - `activities.qmd` - Past and current activities
   - `getinvolved.qmd` - How to get involved

2. **Render the site**:
   ```bash
   quarto render
   ```
   This generates the HTML files in the `docs/` folder.

3. **Commit and push**:
   ```bash
   git add .
   git commit -m "Update content"
   git push
   ```

### Installing Quarto

If you don't have Quarto installed:
- Visit https://quarto.org/docs/get-started/
- Download and install for your operating system

### Preview Changes Locally

```bash
quarto preview
```

This will open a browser with a live preview that updates as you edit.

## Styling

Custom styles are in `docs/styles.css`. The website uses:
- **Fonts**: Cormorant (headings) and Karla (body text)
- **Colors**: Velasca Mediterranean palette (sea blue #2B7A9B, sandy beige #E8D7C3)

## How the Site is Deployed

1. Go to **Settings** > **Pages** in your repository.
2. Under **Source**, select **Deploy from a branch**.
3. Set the branch to `main` and the folder to `/docs`.
4. GitHub Pages automatically serves the HTML files from `docs/`.

## Folder Structure

```
RRinTransportation.github.io/
├── docs/                    # Generated HTML (published by GitHub Pages)
│   ├── site_libs/          # Bootstrap, JavaScript libraries
│   ├── images/             # Images organized by event
│   │   ├── TRB2024/
│   │   ├── ITSC2024/
│   │   ├── CPS2025/
│   │   └── logo_png.png
│   ├── index.html          # Generated from index.qmd
│   ├── about.html          # Generated from about.qmd
│   ├── team.html           # Generated from team.qmd
│   ├── activities.html     # Generated from activities.qmd
│   ├── getinvolved.html    # Generated from getinvolved.qmd
│   ├── styles.css          # Custom CSS
│   └── CNAME
├── index.qmd               # Homepage source (edit this!)
├── about.qmd               # About page source (edit this!)
├── team.qmd                # Team page source (edit this!)
├── activities.qmd          # Activities page source (edit this!)
├── getinvolved.qmd         # Get Involved page source (edit this!)
├── _quarto.yml             # Quarto configuration
├── LICENSE
└── README.md
```

## Tips for Editing

- **Adding images**: Place images in `docs/images/` and reference them as `docs/images/yourimage.jpg`
- **Adding links**: Use standard markdown syntax `[text](url)`
- **Adding team members**: Just add a new bullet point in `team.qmd`
- **Adding activities**: Add a new section with `###` heading in `activities.qmd`

## Need Help?

- [Quarto Documentation](https://quarto.org/docs/guide/)
- [Markdown Basics](https://quarto.org/docs/authoring/markdown-basics.html)