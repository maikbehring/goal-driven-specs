# goal-driven-specs

Cursor skill for **goal-driven + spec-driven** product work with AI coding agents.

Ship the right thing in the right order: **mini-vision Objectives**, **3–4 outcome Key Results**, numbered Specs, STATUS, and a readable HTML board — with an [OKR quality checklist](okr-checklist.md).

Works for consumer apps, SaaS, internal tools, and AI features.

## Install

**In a project (recommended for teams):**

```bash
mkdir -p .cursor/skills
git clone https://github.com/maikbehring/goal-driven-specs.git .cursor/skills/goal-driven-specs
```

**Personal (all your Cursor projects):**

```bash
git clone https://github.com/maikbehring/goal-driven-specs.git ~/.cursor/skills/goal-driven-specs
```

## Bootstrap `docs/specs/` in an app

```bash
cd /path/to/your-app
bash ~/.cursor/skills/goal-driven-specs/scripts/bootstrap-specs.sh
# or, if installed in-repo:
# bash .cursor/skills/goal-driven-specs/scripts/bootstrap-specs.sh
```

Then:

1. Replace `{{PRODUCT}}` / Goal / KR placeholders  
2. Paste [templates/AGENTS.md](templates/AGENTS.md) into your `AGENTS.md`  
3. Run `npm run specs:html` and open `docs/specs/status.html` (list or `#kanban`).

`specs:html` refreshes the Spec **reader** (`specs-data.js`). After a ship, also edit the **board** cards in `status.html`.

## Ask the agent

- “Bootstrap goal-driven specs for this app”
- “What should we build next?”
- “Turn this brief into a Spec under Goal 1”
- “Check feasibility — don’t implement yet”
- “Mark Spec 03 done and sync STATUS / KRs”
- “Add a Kanban view to the spec board”
- “Publish the conversation aid as static HTML, noindex, no cookies”

## What’s inside

| Path | Role |
|------|------|
| [SKILL.md](SKILL.md) | Agent playbook |
| [examples.md](examples.md) | Sample Goals / KRs (outcomes, not tasks) |
| [okr-checklist.md](okr-checklist.md) | Peer review: good/bad Objectives & KRs |
| [reference.md](reference.md) | Sync, renumber, move Spec |
| [templates/](templates/) | GOALS, STATUS, Spec, HTML board (**list + Kanban**), viewer, AGENTS snippet |
| [scripts/](scripts/) | Bootstrap + `specs:html` builder |

## Idea in one breath

**Mini-Vision** = inspiring **end state** a stranger wants (no numbers, no jargon).  
**How we know** = 3–4 success drivers (metric + target); ≥70% = good; Specs = how, not the KR.  
**Specs** = build steps for the team — not the goals themselves.  
**Outsider test:** if someone outside the project doesn’t get it, rewrite.

## License

MIT — see [LICENSE](LICENSE).
