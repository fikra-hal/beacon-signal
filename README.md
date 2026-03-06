# BEACONSignal

Geopolitical intelligence cascade dashboard with Claude AI.
Single-file HTML — no build step, no server, no dependencies except a browser.

---

## Setup (5 minutes)

### 1. Create the GitHub repository
```bash
git init
git add .
git commit -m "Initial BEACONSignal deploy"
git remote add origin https://github.com/YOUR_USERNAME/beacon-signal.git
git push -u origin main
```

### 2. Add your Anthropic API key as a secret
1. Go to your repo on GitHub → **Settings** → **Secrets and variables** → **Actions**
2. Click **New repository secret**
3. Name: `CLAUDE_API_KEY`
4. Value: your key from [console.anthropic.com](https://console.anthropic.com/)
5. Click **Add secret**

### 3. Enable GitHub Pages
1. Go to **Settings** → **Pages**
2. Source: **GitHub Actions**
3. Save

### 4. Trigger a deploy
Push any commit, or go to **Actions** → **Build & Deploy BEACONSignal** → **Run workflow**.

Your dashboard will be live at: `https://YOUR_USERNAME.github.io/beacon-signal/`

---

## Local use (no API key required)
Open `index.html` directly in a browser — it runs in simulation mode without a key.
To enable Claude AI locally, edit line ~1583 in `index.html` and replace `__CLAUDE_API_KEY__` with your key.

---

## AI Features
- **Chat** (bottom-right FAB) — Connected to Claude with full scenario context
- **✦ Generate Scenario** (toolbar) — Paste a news brief, Claude builds a new causal chain
- **⟳ Update Probabilities** (toolbar) — Feed SIGINT/OSINT, Claude reassesses node probabilities
- **⚠ Red Team** (toolbar) — Adversarial counter-strategy analysis

## Model
`claude-3-5-haiku-20241022` — swap in `index.html` to use any Claude model.
