# World Models in Physical AI — NeurIPS 2026 Workshop website

A single-page, static website for the workshop. No build step, no dependencies — just `index.html`. Ready to host on GitHub Pages.

## Preview locally
Double-click `index.html`, or run a tiny local server from this folder:

```bash
python3 -m http.server 8000
# then open http://localhost:8000
```

## Deploy on GitHub Pages
1. Create a repo (e.g. `worldmodels-physicalai` or `<org>.github.io`).
2. Commit `index.html` and `.nojekyll` to the `main` branch.
3. In the repo: **Settings → Pages → Build and deployment → Source: Deploy from a branch**, branch `main`, folder `/ (root)`.
4. Your site goes live at `https://<user>.github.io/<repo>/`.
5. (Optional) For a custom domain, add a `CNAME` file containing the domain and configure DNS.

The included `.nojekyll` file tells GitHub Pages to serve the files as-is (no Jekyll processing).

## How to update content
The site is two static pages: `index.html` (the main page) and `cfp.html` (the full call for papers). Both share the same inline CSS/design system and are organized by clearly labelled `<!-- SECTION -->` comments.

- **Call for papers** — the full text lives in `cfp.html`. The main page shows a short summary + a "Read the full call for papers" button in the `id="cfp"` section of `index.html`. Keep the summary (page limit, deadlines, non-archival/OpenReview) in sync with `cfp.html`.
- **Important dates** — search for `id="dates"`. Edit the `.tl` timeline rows; add `key` to a row's class to highlight it (cyan node).
- **Schedule** — search for `id="schedule"`. Edit `.slot` rows; the small colored `.tag` labels are Invited / Debate / Panel / Challenge / Break.
- **Speakers / Organizers** — search for `id="speakers"` / `id="organizers"`. Each person is one `.person` block.

## Speaker & organizer photos
All ten headshots (speakers and organizers) are linked locally from the `photos/` folder, with an automatic fallback: if a local file isn't there yet, the site loads the person's live URL; if that also fails, it shows a clean initials monogram — so it never breaks.

To populate `photos/` (recommended before publishing), run once from the site root:

```bash
bash photos/download_photos.sh
```

This downloads every headshot into `photos/` with the filenames the site expects. Then reload — they load locally (self-hosted).

Note on Max Jiang: his photo doesn't hotlink (his site doesn't serve it over HTTPS), so it shows initials until you run the script — which fetches it over HTTP and saves it locally so it displays.

## Please double-check before publishing
A few details were pulled from public sources and are worth confirming:

- **German Ros — title.** Shown as *Principal Scientist, NVIDIA* (from the workshop proposal). His current homepage lists *Director, Simulation Ecosystem Development, NVIDIA*. Pick whichever he prefers.
- **Danijar Hafner — affiliation.** Shown as *Google DeepMind* (matches his homepage). There was a mid-2026 report suggesting a possible move; confirm before publishing.
- **Despoina Paschalidou** is listed on her page as *Senior* Research Scientist (site shows "Research Scientist" per the proposal — bump if you like).
- **Jose M. Alvarez photo** comes from a conference page and may not load; if so, the initials monogram shows automatically. Drop in a preferred headshot when handy.
- **Jenny Schmalfuss photo** is the University of Stuttgart staff photo. Swap in an NVIDIA headshot/profile link if you have one.
- **Workshop date** shows *December 12 or 13, 2026*; set the exact single day once NeurIPS confirms the workshop schedule.
- **OpenReview link** — the "Submit on OpenReview" buttons (in `cfp.html`, the `index.html` CFP section, and the footer) point to the workshop's submission portal: `https://openreview.net/group?id=NeurIPS.cc/2026/Workshop/WM_PAI`.

## Design
Editorial / frontier direction: near-black hero with a subtle vector-field backdrop and electric-cyan + violet accents, light content sections below, `Space Grotesk` display type over `Inter` body. Fully responsive with a mobile menu.
