---
name: goal-driven-specs
description: >-
  Bootstrap and run goal-driven, spec-driven product work for AI-built apps:
  mini-vision Objectives, 3 measurable Key Results, numbered Specs, STATUS,
  and HTML board/viewer. Use when starting docs/specs, choosing what to build
  next, writing Specs from briefs, checking feasibility before code, updating
  progress after ship, or teaching an agent to stay Goal-scoped.
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
| “Done” is fuzzy | Exactly 3 measurable Key Results |
| Status lives only in chat | `STATUS.md` + `status.html` |
| Brief → code immediately | Spec ≠ implement (unless user asks to build) |

**Install for a team:** clone into `.cursor/skills/goal-driven-specs/` so every clone gets the same workflow. Personal install: `~/.cursor/skills/goal-driven-specs/`. Source: https://github.com/maikbehring/goal-driven-specs

## When to use

- Greenfield or existing repo: “set up Specs / Goals”
- “What should we build next?”
- Long product brief → Spec (and optional feasibility) before code
- After a feature ships → tick AC / KR / STATUS / HTML
- Move Specs between Goals or free a Spec number

## Day-1 bootstrap (new or existing app)

**Agent:** run the bootstrap script (or copy templates), then fill placeholders with the user — do not invent fake product Goals without asking.

```bash
# From the target project root
SKILL="${GOAL_DRIVEN_SPECS_SKILL:-$HOME/.cursor/skills/goal-driven-specs}"
# If the skill lives in the repo:
# SKILL="$(pwd)/.cursor/skills/goal-driven-specs"
bash "$SKILL/scripts/bootstrap-specs.sh"
```

Then with the user:

1. **Product name** + language for docs (match the product; English templates are defaults).
2. **Goal 1 Objective** + **exactly 3 Key Results** (shippable outcomes, not themes).
3. **Goal 2** (optional but recommended): Objective + 3 KRs — document early, implement later.
4. First Specs (`01-…`, `02-…`) mapped to KRs in `GOALS.md`.
5. Paste [templates/AGENTS.md](templates/AGENTS.md) into `AGENTS.md` / `CLAUDE.md` (Goal order for agents).
6. `npm run specs:html` → open `docs/specs/status.html`.

Minimal viable set: `GOALS.md` + one Spec + `STATUS.md` + `status.html`. Add README/viewer as soon as there are ≥2 Specs.

## Core model

| Artifact | Path | Role |
|----------|------|------|
| Goals (OKR) | `docs/specs/GOALS.md` | Objective + **3 KRs** + Spec→KR order |
| Status | `docs/specs/STATUS.md` | Spec + KR progress; plain-language gaps |
| Index | `docs/specs/README.md` | Next Spec + short KR line |
| Specs | `docs/specs/NN-slug.md` | One shippable slice + AC |
| Board | `docs/specs/status.html` | Human-readable Goals/KRs/Specs |
| Reader | `docs/specs/view.html` | Read Specs without raw markdown |
| Embed | `docs/specs/specs-data.js` | Generated — never hand-edit |
| Builder | `scripts/build-spec-viewer.mjs` | `npm run specs:html` |

**Statuses (canonical):** `done` | `partial` | `open`  
German projects may use `offen` as an alias for `open` (board filters accept both).  
**partial** always states in simple language what works and what is missing.  
**Goal done** = all 3 KRs checked (not “enough Specs are done”).

## Principles

1. One Spec at a time (unless a hard dependency forces otherwise).
2. Code only against **Acceptance Criteria**; grow scope → update Spec first.
3. Sync **frontmatter + STATUS + README + status.html + GOALS (KRs)** together.
4. Sequence: **active Goal → first unfinished KR → Spec order** (P1–P4 are secondary).
5. After markdown changes under `docs/specs/`: `npm run specs:html`.
6. **Spec ≠ implement.** “Write Spec / check feasibility” → docs + audit only. “Build / implement Spec” → code.
7. Spec numbers are permanent IDs — never overwrite `NN-*.md`.
8. Exactly **3 Key Results** per Goal — no parallel “done when” checklist.
9. Match the **project’s language** for Specs/Goals; keep this skill’s instructions in English so any team can follow them.

## Goal pattern (OKR)

```markdown
## Goal N — Title (active | next)

**Objective:** Qualitative — the world after success. **No numbers.**

### Key Results
1. [ ] **KR1 — Label:** [Metric] from [baseline] → [target] (how measured).
2. [ ] **KR2 — Label:** …
3. [ ] **KR3 — Label:** …

### Initiatives (Specs)
| # | Spec | Moves |
| 1 | [01-…](./01-….md) | KR1 |
```

| | Objective | Key Result |
|---|-----------|------------|
| Answers | Where are we going? | How do we know we got there? |
| Style | Inspiring, qualitative, **no metrics** | **Metric from baseline → target** |
| Test | Describes a changed world | Still true if we swap the Spec/tactic |
| Anti-pattern | “Ship Spec 09” / headcount in the title | “Launch APK” / “Implement auth” / “Spec done” |

**Objective = mini-vision:** one short picture of the future a child could understand. No jargon, no numbers.  
**Key Results = “how we know”:** still baseline → target, but in plain words (“from 0 to at least 1”, not dense metric slang).  
Label the Objective as **Mini-Vision** in `GOALS.md` / HTML when it helps humans.

Specs / migrations / flags = **initiatives** that might move the number. If the number doesn’t move, change the initiative — don’t redefine the KR as the task.

### Writing good KRs

| Do | Don't |
|----|--------|
| One metric, baseline → target | Task verbs: launch, ship, implement, finish Spec |
| Outcome measurable if tactics change | “Spec 15 done” as the KR |
| Stretch but possible (~0.7 often success) | Guaranteed checkbox after one PR |
| Short measurement note (how you count) | Vague themes (“better UX”) |
| Tick only after **measuring** | Tick because code merged |

**Goal 1 KR3** = behavior change (replaced old workflow / readiness score), not “we decided”.  
**Goal 2** = reach · shared loop quality · proof of delight — counts live in KRs, not the Objective title.

See [examples.md](examples.md). Document Goal 2 early; implement after Goal 1 KR3 moves unless overridden.

## Add or refine a Goal

1. Title + **qualitative** Objective (no numbers).
2. Exactly 3 KRs as `metric: baseline → target` (+ how measured).
3. Spec table as **initiatives** tagged to KRs — never as the KR text.
4. Mirror STATUS / README / `status.html` (`kr-done` only after measurement).
5. `npm run specs:html`.

If existing KRs are task-shaped (“Spec done”, “APK shipped”), rewrite them to outcomes before adding more Specs.

## Add a Spec

1. Next free `NN` (`ls docs/specs/[0-9]*.md`). If user demands a taken number → renumber occupant first ([reference.md](reference.md)).
2. Create from [templates/spec.md](templates/spec.md).
3. Frontmatter: `id`, `title`, `priority`, `status`, `depends_on`.
4. Required: Goal, current state, requirements/flow, AC checkboxes, out of scope, touched areas.
5. Architecture / auth / data / AI providers: add **Feasibility** (+ optional phased delivery) before coding.
6. Decisions: `Goal X #N · KRn` + overlap ownership.
7. Wire README, STATUS, `status.html` specs array (`goal1`/`goal2`, plain-language gap), GOALS order.
8. `npm run specs:html`.

**Long brief:** one Spec (or two shippable slices). Feasibility asked → audit + stop. Build asked → implement AC → sync (tick KR only if the outcome is truly met).

## Update progress (after implement)

1. Spec `status` + AC `[x]`.
2. STATUS + README next Spec.
3. `status.html` Spec card + Goal step ✓.
4. Tick KR in GOALS + STATUS + `kr-done` in HTML **only when measurable outcome + manual ops are done**.
5. `npm run specs:html`.

## HTML board / reader

**status.html must have:** product brand, active + next Goal cards with 3 KRs each, Spec order links, counts/progress, filters (All | Goal 1 | Goal 2 | Done | Partial | Open), plain-language gaps, `view.html?spec=` links.

**view.html:** load `specs-data.js` (works with `file://`), render markdown, rewrite internal `.md` links to the viewer.

## Agent behavior (non-negotiable)

- “What next?” → unfinished KR under **active** Goal → next Spec in that KR.
- Do not implement Goal 2 while Goal 1 KR3 is open unless the user explicitly overrides.
- Creating/changing Goals → qualitative Objective + 3 KRs as **baseline → target**; rewrite task-KRs.
- Tick KR only after the metric is measured (Spec done ≠ KR done).
- Prefer project language for written Specs; remind about initiatives that unlock a metric (flags, SQL).

## Anti-patterns

- Specs that are epics — split until one focused session can finish against AC.
- Goals without KRs, or KRs that are tasks (“ship Spec”, “launch APK”).
- Numbers in the Objective; missing baseline/target on KRs.
- Implementing from chat without updating the Spec.
- Marking KR done because code merged, without measuring the outcome.
- P-priority table overriding Goal → KR → Spec order in `AGENTS.md`.

## Templates & scripts

- [templates/](templates/) — README, STATUS, GOALS, spec, status.html, view.html, AGENTS.md
- [scripts/bootstrap-specs.sh](scripts/bootstrap-specs.sh) — copy into a project
- [scripts/build-spec-viewer.mjs](scripts/build-spec-viewer.mjs) — regenerate `specs-data.js`
- [examples.md](examples.md) — sample Goal/KR sets
- [reference.md](reference.md) — renumber, move Spec, sync checklist
