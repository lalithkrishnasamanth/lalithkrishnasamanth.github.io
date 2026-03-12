# lalithkrishnasamanth.github.io

Personal website and blog of **Lalith Krishna Samanth**, built with
[Jekyll](https://jekyllrb.com/) and the
[Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) theme,
hosted on [GitHub Pages](https://pages.github.com/).

---

## Writing a new blog post (the fast way)

```bash
./scripts/new-post.sh "Your Post Title"
```

This creates a properly-named, date-stamped Markdown file in `_posts/`
using the template at `_drafts/TEMPLATE.md`.

Then:
1. Open the new file and write your post
2. Update `categories`, `tags`, and `excerpt` in the front matter
3. Commit and push:
   ```bash
   git add _posts/<your-file>.md
   git commit -m "Add post: Your Post Title"
   git push
   ```

GitHub Pages rebuilds the site automatically — the post will be live in ~30 seconds.

---

## Writing a new blog post (manual)

1. Create a file in `_posts/` named `YYYY-MM-DD-your-slug.md`
   (the date prefix is required by Jekyll)
2. Start the file with front matter (copy from `_drafts/TEMPLATE.md`)
3. Write in Markdown. LaTeX math is supported with MathJax:
   - Inline: `$E = mc^2$`
   - Block: `$$ \nabla \cdot E = \rho/\varepsilon_0 $$`
4. Commit and push

---

## Site structure

| File / folder | Purpose |
|---|---|
| `_config.yml` | Site settings, author info, theme |
| `_data/navigation.yml` | Top-nav links |
| `index.md` | Home page (uses `layout: home`) |
| `about.md` | About page |
| `research.md` | Research overview |
| `publications.md` | Publications list |
| `blog.md` | Blog archive (lists all posts) |
| `contact.md` | Contact info |
| `_posts/` | Published blog posts |
| `_drafts/` | Unpublished drafts (not built by default) |
| `scripts/new-post.sh` | Helper to create a new post |
| `assets/img/lalith.png` | Profile photo |

---

## Adding your profile photo

Place a square image at `assets/img/lalith.png`.
Recommended size: 500 × 500 px or larger (it will be cropped to a circle).

---

## Local preview

```bash
bundle install
bundle exec jekyll serve --drafts
```

Then open `http://localhost:4000`.

---

## Theme & customization

The site uses [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/).
Skin can be changed in `_config.yml` → `minimal_mistakes_skin`:
`default` | `air` | `aqua` | `contrast` | `dark` | `dirt` | `mint` | `neon` | `plum` | `sunrise`
