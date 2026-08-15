---
name: goal-driven-specs
description: >-
  Bootstrap and run goal-driven, spec-driven product work for AI-built apps:
  outsider-inspiring mini-vision Objectives, 3 clear countable Key Results,
  numbered Specs, STATUS, and HTML board/viewer. Use when starting docs/specs,
  choosing what to build next, writing Specs from briefs, checking feasibility
  before code, updating progress after ship, or teaching an agent to stay
  Goal-scoped.
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
| “Done” is fuzzy | Exactly 3 countable Key Results |
| Status lives only in chat | `STATUS.md` + `status.html` |
| Brief → code immediately | Spec ≠ implement (unless user asks to build) |
| Goals nobody remembers | Mini-vision + KRs a child could understand |

**Install:** https://github.com/maikbehring/goal-driven-specs → `.cursor/skills/goal-driven-specs/` (repo) or `~/.cursor/skills/goal-driven-specs/` (personal).

## When to use

- Greenfield or existing repo: “set up Specs / Goals”
- “What should we build next?”
- Long product brief → Spec (and optional feasibility) before code
- After a feature ships → tick AC / KR / STATUS / HTML
- Rewrite Goals so Objectives are mini-visions and KRs are outcomes (not tasks)
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
2. **Goal 1 Mini-Vision** + **exactly 3 Key Results** (countable outcomes in plain words).
3. **Goal 2** (recommended): Mini-Vision + 3 KRs — document early, implement later.
4. First Specs mapped to KRs as **build steps** (not as the KR text).
5. Paste [templates/AGENTS.md](templates/AGENTS.md) into `AGENTS.md` / `CLAUDE.md`.
6. `npm run specs:html` → open `docs/specs/status.html`.

Minimal set: `GOALS.md` + one Spec + `STATUS.md` + `status.html`.

## Core model

| Artifact | Path | Role |
|----------|------|------|
| Goals | `docs/specs/GOALS.md` | Mini-Vision + **3 KRs** + Spec build steps |
| Status | `docs/specs/STATUS.md` | Spec + KR progress; plain-language gaps |
| Index | `docs/specs/README.md` | Next Spec + short KR line |
| Specs | `docs/specs/NN-slug.md` | One shippable slice + AC |
| Board | `docs/specs/status.html` | Mini-visions, “how we know”, Spec filters |
| Reader | `docs/specs/view.html` | Read Specs without raw markdown |
| Embed | `docs/specs/specs-data.js` | Generated — never hand-edit |
| Builder | `scripts/build-spec-viewer.mjs` | `npm run specs:html` |

**Statuses:** `done` \| `partial` \| `open` (`offen` alias OK).  
**partial** always explains the gap in simple words.  
**Goal done** = all 3 KRs measured and met — not “enough Specs are done”.

## Principles

1. One Spec at a time (unless a hard dependency forces otherwise).
2. Code only against **Acceptance Criteria**; grow scope → update Spec first.
3. Sync **frontmatter + STATUS + README + status.html + GOALS (KRs)** together.
4. Sequence: **active Goal → first unfinished KR → Spec order**.
5. After `docs/specs/` markdown changes: `npm run specs:html`.
6. **Spec ≠ implement.** Write Spec / feasibility only when asked; code only when asked to build.
7. Spec numbers are permanent IDs — never overwrite `NN-*.md`.
8. Exactly **3 Key Results** per Goal — no parallel “done when” list.
9. Match the **project’s language** for Specs/Goals; keep this skill’s instructions in English.
10. **Outsider test:** Someone who never heard of the product should understand Mini-Vision and every KR — and feel inspired. If they need a glossary (Expo Go, OTP, Spec IDs, “Bon”), rewrite.
11. **No jargon in Goals.** Product/tech words belong in Specs and build-step tables, not in Mini-Vision or KR prose.

## Goal pattern (OKR)

```markdown
## Goal N — Warm short title (active | next)

**Mini-Vision:**
One inspiring picture of the future. No numbers. No product jargon.
A stranger should get it in one breath.

### How we know / Woran merken wir’s?
1. [ ] **Short emotional label.**
   One or two plain sentences. End with something you can count or clearly yes/no.
2. [ ] …
3. [ ] …

### Build steps (for the team only)
| # | Spec | Helps |
```

| | Mini-Vision | Key Result |
|---|-------------|------------|
| Audience | Anyone (not only the team) | Anyone can score it |
| Style | Inspiring future picture; **no numbers** | Human win first, clear count / yes-no at the end |
| Feel | “I want that” | “I know if we got there” |
| Anti-pattern | Feature list, headcount, tool names | Tasks, Spec IDs, Expo/OTP/API slang |

**Outsider test (required):** Read Mini-Vision + 3 KRs aloud to someone outside the project. If they ask “what is X?”, rewrite X away.

**Wodtke test:** *How would we know?* Change **in the world** — not a finished task list.

Good: “You save the first expense without signing up or typing an email code.”  
Bad: “OTP prompts before first Bon: ≥1 → 0” (true, but cold and insider-only).

Specs / flags / SQL = **build steps**. If the count doesn’t move, change the step — don’t turn the step into the KR.

### Writing inspiring, clear KRs

| Do | Don't |
|----|--------|
| Lead with the human win, then the count | Lead with metric soup |
| Words a non-user understands | Expo Go, OTP, p95, Spec 15 |
| One idea per KR (split if “+” confuses) | Two unrelated checks jammed together |
| Tick only after measuring | Tick because code merged |
| Stretch but believable | Guaranteed checkbox after one PR |

**Goal 1 KR3** = real use / “I’d bring someone” — not “we decided”.  
**Goal 2** = arrive · share clearly · “again please”.

See [examples.md](examples.md).

## Add or refine a Goal

1. Warm title + **Mini-Vision** (outsider-inspiring, no numbers, no jargon).
2. Exactly 3 KRs: human win in 1–2 sentences + countable end.
3. Spec table as **build steps for the team** only.
4. Mirror STATUS / README / `status.html` (`kr-done` only after measurement).
5. `npm run specs:html`.

If KRs are task-shaped, jargon-heavy, or Objectives are metric-heavy → rewrite before adding Specs.

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

## Update progress (after implement)

1. Spec `status` + AC `[x]`.
2. STATUS + README next Spec.
3. `status.html` Spec card + Goal step ✓.
4. Tick KR only when the **count** was measured (and required ops are live).
5. `npm run specs:html`.

## HTML board / reader

**status.html:** product brand; Goal cards with **Mini-Vision** + 3 plain “how we know” KRs (`kr-done` when met); Spec order; filters; `view.html?spec=` links.

**view.html:** `specs-data.js`, GFM, rewrite internal `.md` links.

## Agent behavior (non-negotiable)

- “What next?” → unfinished KR under **active** Goal → next Spec for that KR.
- Do not implement Goal 2 while Goal 1 KR3 is open unless overridden.
- Creating/changing Goals → Mini-Vision + 3 KRs that pass the **outsider test**; rewrite jargon/task-KRs.
- Tick KR only after measuring (Spec done ≠ KR done).
- Prefer project language for Specs/Goals; remind about build steps that unlock a count (flags, SQL).
- Never leave `partial` without a simple-language gap.
- Commits only when the user asks.

## Anti-patterns

- Jargon or cold metric-speak in Mini-Vision / KRs (Expo Go, OTP, Spec IDs) — rewrite for outsiders.
- Two unrelated checks jammed with “+” so nobody understands the KR.
- Epic Specs — split to one focused session against AC.
- Task-KRs (“ship Spec”, “launch APK”) or numbers inside the Mini-Vision.
- Implementing from chat without updating the Spec.
- Marking KR done because code merged, without measuring.
- P-priority overriding Goal → KR → Spec in `AGENTS.md`.

## Templates & scripts

- [templates/](templates/) — README, STATUS, GOALS, spec, status.html, view.html, AGENTS.md
- [scripts/bootstrap-specs.sh](scripts/bootstrap-specs.sh)
- [scripts/build-spec-viewer.mjs](scripts/build-spec-viewer.mjs)
- [examples.md](examples.md) · [reference.md](reference.md)
