---
name: goal-driven-specs
description: >-
  Bootstrap and run goal-driven, spec-driven product work for AI-built apps:
  outsider-inspiring mini-vision Objectives, 3–4 outcome Key Results (OKR
  checklist), numbered Specs, STATUS, HTML board (list + Kanban), and optional
  noindex conversation pages. Use when starting docs/specs, choosing what to
  build next, writing Specs from briefs, reviewing OKR quality, checking
  feasibility before code, updating progress after ship, or teaching an agent
  to stay Goal-scoped.
---

# Goal-driven Specs (for AI-built apps)

Playbook so **humans and coding agents** ship the right thing in the right order.

Works for consumer apps, SaaS, internal tools, and AI features — not tied to one product.

## Why this works with AI agents

AI agents over-build, jump to Goal 2, and lose “what next?” without a short source of truth.

| Problem | This system |
|---------|-------------|
| Agent invents scope | Specs + Acceptance Criteria |
| Agent picks random P1 infra | Active Goal → unfinished KR → Spec order |
| “Done” is fuzzy | 3–4 countable Key Results + measure before tick |
| Status lives only in chat | `STATUS.md` + `status.html` |
| Brief → code immediately | Spec ≠ implement (unless user asks to build) |
| Goals nobody remembers | Mini-vision + KRs a stranger understands |
| Task-OKRs / milestone-OKRs | [okr-checklist.md](okr-checklist.md) peer review |

**Install:** https://github.com/maikbehring/goal-driven-specs → `.cursor/skills/goal-driven-specs/` (repo) or `~/.cursor/skills/` (personal).

## When to use

- Greenfield or existing repo: “set up Specs / Goals”
- “What should we build next?”
- Long product brief → Spec (and optional feasibility) before code
- After a feature ships → tick AC / KR / STATUS / HTML
- Rewrite Goals so Objectives are mini-visions and KRs are **outcomes** (not tasks)
- Peer-review OKR wording with the checklist
- Move Specs between Goals or free a Spec number

## Day-1 bootstrap (new or existing app)

**Agent:** run the bootstrap script (or copy templates), then fill placeholders **with the user** — do not invent fake product Goals.

```bash
SKILL="${GOAL_DRIVEN_SPECS_SKILL:-$HOME/.cursor/skills/goal-driven-specs}"
# In-repo: SKILL="$(pwd)/.cursor/skills/goal-driven-specs"
bash "$SKILL/scripts/bootstrap-specs.sh"
```

Then with the user:

1. **Product name** + language for docs (match the product; English templates are defaults — rewrite Goals in the product language).
2. **Goal 1 Mini-Vision** + **3–4 Key Results** (outcomes; prefer 3, max 4) — run [okr-checklist.md](okr-checklist.md).
3. **Goal 2** (recommended): Mini-Vision + 3–4 KRs — document early, implement later.
4. **Goal 3** (optional draft): Mini-Vision + 3–4 KRs as **potential** — do not build yet.
5. First Specs mapped to KRs as **build steps** (not as the KR text).
6. Paste [templates/AGENTS.md](templates/AGENTS.md) into `AGENTS.md` / `CLAUDE.md`.
7. `npm run specs:html` → open `docs/specs/status.html`.

Minimal set: `GOALS.md` + one Spec + `STATUS.md` + `status.html`.

## Core model

| Artifact | Path | Role |
|----------|------|------|
| Goals | `docs/specs/GOALS.md` | Mini-Vision + **3–4 KRs** + Spec build steps |
| OKR checklist | skill [okr-checklist.md](okr-checklist.md) | Peer review: Objective + KR quality |
| Status | `docs/specs/STATUS.md` | Spec + KR progress; plain-language gaps |
| Index | `docs/specs/README.md` | Next Spec + short KR line |
| Specs | `docs/specs/NN-slug.md` | One shippable slice + AC |
| Board | `docs/specs/status.html` | Mini-visions, “how we know”, Spec filters |
| Reader | `docs/specs/view.html` | Read Specs without raw markdown |
| Embed | `docs/specs/specs-data.js` | Generated — never hand-edit |
| Builder | `scripts/build-spec-viewer.mjs` | `npm run specs:html` |

**Statuses:** `done` \| `partial` \| `open` (`offen` alias OK).  
**partial** always explains the gap in simple words.  
**Goal done** = every KR measured at **≥70% of target** (or user accepts the period) — not “enough Specs are done”.

## Principles

1. One Spec at a time (unless a hard dependency forces otherwise).
2. Code only against **Acceptance Criteria**; grow scope → update Spec first.
3. Sync **frontmatter + STATUS + README + status.html + GOALS (KRs)** together.
4. Sequence: **active Goal → first unfinished KR → Spec order** (the order table, not the filename number).
5. After `docs/specs/` markdown changes: `npm run specs:html` **and** hand-edit `status.html` cards / Goal steps (the builder does not write the board).
6. **Spec ≠ implement.** Write Spec / feasibility only when asked; code only when asked to build.
7. Spec numbers are permanent IDs — never overwrite `NN-*.md`. Build-step `#11` may be `13-foo.md`.
8. **3–4 Key Results** per Goal (prefer 3, never more than 4) — no parallel “done when” list, no “Ergänzung” KRs outside the set.
9. Match the **project’s language** for Specs/Goals; keep this skill’s instructions in English.
10. **Outsider test:** Someone who never heard of the product should understand Mini-Vision and every KR — and feel inspired. If they need a glossary (Expo Go, OTP, Spec IDs, “Bon”), rewrite.
11. **Outcome, not Output:** Drill metaphor — building the drill (input) ≠ hole (output) ≠ picture on the wall (outcome). KRs measure the wall picture.
12. **One KR = one result.** No joining two outcomes with “and” / “or” / “+”. If you need both, that is two KRs (or drop one). Thresholds like “score at least 4 of 5” are one result.
13. Before shipping a new/changed OKR set, run [okr-checklist.md](okr-checklist.md).

## Goal pattern (OKR)

```markdown
## Goal N — Warm short title (active | next)

**Mini-Vision:**
One inspiring closed future picture. No numbers. No product jargon.
A stranger should get it in one breath.

### How we know / Woran merken wir’s?
1. [ ] **Short emotional label.**
   Human win in 1–2 sentences. End with metric + expected value.
2. [ ] …
3. [ ] …
4. [ ] …   # optional 4th success driver

### Build steps (for the team only)
| # | Spec | Helps |
```

| | Mini-Vision (Objective) | Key Result |
|---|-------------|------------|
| Audience | Anyone (not only the team) | Anyone can score it |
| Style | Inspiring **end state**; **no numbers** | Human win first, then metric + target |
| Feel | “I want that” | “I know if we got there” |
| Level | Outcome picture | Success **driver** toward that picture |
| Anti-pattern | Evergreen, “improve X”, plan phases | Milestones, Spec IDs, task lists, “and”-compounds |

**Outsider test (required):** Read Mini-Vision + KRs aloud to someone outside the project. If they ask “what is X?”, rewrite X away.

**Wodtke test:** *How would we know?* Change **in the world** — not a finished task list.

**Causal chain:** Objective = desired end state → KRs = few results that most raise the odds it happens → Specs = bets on *how* (changeable).

Good: “You save the first expense without signing up.”  
Bad: “OTP prompts before first Bon: ≥1 → 0” (true, but cold and insider-only).  
Bad: “Concept → layout → code” (milestones / inputs).

Specs / flags / SQL = **build steps**. If the count doesn’t move, change the step — don’t turn the step into the KR.

### Writing inspiring, clear KRs

| Do | Don't |
|----|--------|
| One **single** countable outcome | Two outcomes joined by and / or / “+” |
| Lead with the human win, then metric + target | Lead with metric soup or Spec IDs |
| Words a non-user understands | Expo Go, OTP, p95, Spec 15 |
| Success **drivers** (raise odds of Objective) | Milestone chains / “Phase 2 done” |
| Independent KRs where possible | KR2 impossible unless KR1 done |
| Tick only after measuring (≥70% = good) | Tick because code merged |
| Stretch but believable | Guaranteed checkbox after one PR |

Full peer-review tables: [okr-checklist.md](okr-checklist.md).  
Worked examples: [examples.md](examples.md).

**Goal 2** = arrive · share clearly · “again please”.  
**Goal 3** (optional draft) = strangers find it · strangers use it · it sustains (e.g. payers) — document early, build only after Goal 2.

## Add or refine a Goal

1. Warm title + **Mini-Vision** (closed future state, outsider-inspiring, no numbers, no jargon).
2. **3–4 KRs** (prefer 3): human win + metric + expected value; run checklist.
3. Spec table as **build steps for the team** only.
4. Mirror STATUS / README / `status.html` (`kr-done` only after measurement).
5. `npm run specs:html`.

If KRs are task-shaped, jargon-heavy, milestone lists, or Objectives are metric-heavy → rewrite before adding Specs.

## Add a Spec

1. Next free `NN`. Taken number → renumber occupant first ([reference.md](reference.md)).
2. Create from [templates/spec.md](templates/spec.md).
3. Frontmatter: `id`, `title`, `priority`, `status`, `depends_on`.
4. Required: goal, current state, requirements/flow, AC, out of scope, touched areas.
5. Architecture / auth / data / AI: **Feasibility** (+ optional phases) before code.
6. Decisions: `Goal X #N · KRn` + overlap ownership.
7. Wire README, STATUS, `status.html`, GOALS build-step table.
8. `npm run specs:html`.

**Long brief:** one Spec (or two shippable slices). Feasibility → audit + stop. Build → AC → sync (tick KR only if measured).

**Insert into a chain:** a new Spec owns only the delta (e.g. one new package in an existing ladder). Update `depends_on` and the nested tables on Specs that already owned the surface — do not rewrite those Specs from scratch.

**Phase 0 docs:** Markdown (and a generated static HTML conversation aid, if asked) may ship before the Goal’s KRs move. That is still not permission to build the Goal 2 **app**.

## Update progress (after implement)

1. Spec `status` + AC `[x]`.
2. STATUS + README next Spec.
3. `status.html` Spec card **and** Kanban column + Goal step ✓ (`specs:html` does not do this).
4. Tick KR only when the **count** was measured against target (and required ops are live). Note ≥70% as “good” if useful.
5. `npm run specs:html`.

## HTML board / reader

**status.html:** product brand; Goal cards with **Mini-Vision** + plain “how we know” KRs (`kr-done` when met); Spec order; filters (All / Goal 1 / Goal 2 / status); **List + Kanban** (`#kanban` opens columns Open → Partial → Done); `view.html?spec=` links.

**view.html:** `specs-data.js`, GFM, rewrite internal `.md` links.

**Gotcha:** `npm run specs:html` only refreshes `specs-data.js` (the reader). The board’s `const specs = […]`, Goal step lists, Kanban cards, and “as of” date are **hand-maintained** in `status.html`. Sync both or the board lies.

## Goal 2: document early, build later

While Goal 1 KRs are still open, **do** (if the user asks):

- Write Goal 2 Specs as markdown
- Ship a **conversation aid** (one page a human opens in a call: models, plans, talking points)
- Optionally publish that aid as **static HTML** (see below)

**Do not** (unless overridden): Goal 2 apps, admin UIs, provisioning tools, anything that *is* the Goal 2 product.

A Spec that only *enables* a path (Sales *can* create a key) does not tick “N real customers did it”. **Spec AC done ≠ Goal KR done.**

## Publishing a conversation-aid page (optional)

When the user wants a Spec-derived page **on the internet** (not `file://`):

1. Prefer the **existing public host** — do not invent a second customer-facing hostname.
2. Markdown stays the source of truth; generate static HTML (no app, no backend).
3. **Do not index:** meta `noindex, nofollow, noarchive`, `X-Robots-Tag`, `robots.txt`.
4. **No cookie banner:** no cookies, no analytics, no third-party scripts, no webfonts from Google/CDNs — **system fonts**.
5. Footer: the company’s **privacy / imprint / terms** links.
6. Leak check: no vendor names, no internal IDs, no ops runbooks, no admin URLs.
7. This is scope — **update the Spec first**.

## Agent behavior (non-negotiable)

- “What next?” → unfinished KR under **active** Goal → next Spec for that KR.
- Do not implement Goal 2 **apps** while Goal 1 still has open KRs below “good” (≥70%) unless overridden. Goal 2 **markdown / conversation aids** may ship earlier when asked.
- Do not tick a Goal KR because a Spec’s ACs are done.
- Creating/changing Goals → Mini-Vision + 3–4 KRs that pass **outsider test** + [okr-checklist.md](okr-checklist.md).
- Tick KR only after measuring (Spec done ≠ KR done).
- Prefer project language for Specs/Goals; remind about build steps that unlock a count (flags, SQL).
- Never leave `partial` without a simple-language gap.
- Commits only when the user asks.

## Anti-patterns

- Two outcomes in one KR joined by and/or/+ — split or drop one.
- “Ergänzung” KRs outside the official 3–4 — fold in or drop (max 4).
- Jargon or cold metric-speak in Mini-Vision / KRs — rewrite for outsiders.
- Milestone KRs (concept → layout → ship) — one period-end outcome instead.
- Objective verbs like improve/optimize/increase without an end picture.
- Epic Specs — split to one focused session against AC.
- Task-KRs (“ship Spec”, “launch APK”) or numbers inside the Mini-Vision.
- Implementing from chat without updating the Spec.
- Marking KR done because code merged or a Spec is `done`, without measuring the KR count.
- P-priority overriding Goal → KR → Spec in `AGENTS.md`.
- Assuming `npm run specs:html` updated the Kanban/list board cards.
- Building a Goal 2 app because Goal 2 markdown was allowed.
- Reusing a Spec number or treating `13-foo.md` as “step 13”.
- Publishing a conversation page with analytics, Google Fonts, or a second public hostname.

## Templates & scripts

- [templates/](templates/) — README, STATUS, GOALS, spec, status.html, view.html, AGENTS.md
- [scripts/bootstrap-specs.sh](scripts/bootstrap-specs.sh)
- [scripts/build-spec-viewer.mjs](scripts/build-spec-viewer.mjs)
- [examples.md](examples.md) · [okr-checklist.md](okr-checklist.md) · [reference.md](reference.md)
