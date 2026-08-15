# goal-driven-specs

Cursor skill for **goal-driven + spec-driven** product work with AI coding agents.

Ship the right thing in the right order: **mini-vision Objectives**, **3 measurable Key Results**, numbered Specs, STATUS, and a readable HTML board.

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
3. Run `npm run specs:html` and open `docs/specs/status.html`

## Ask the agent

- “Bootstrap goal-driven specs for this app”
- “What should we build next?”
- “Turn this brief into a Spec under Goal 1”
- “Check feasibility — don’t implement yet”
- “Mark Spec 03 done and sync STATUS / KRs”

## What’s inside

| Path | Role |
|------|------|
| [SKILL.md](SKILL.md) | Agent playbook |
| [examples.md](examples.md) | Sample Goals / KRs (outcomes, not tasks) |
| [reference.md](reference.md) | Sync, renumber, move Spec |
| [templates/](templates/) | GOALS, STATUS, Spec, HTML board/viewer, AGENTS snippet |
| [scripts/](scripts/) | Bootstrap + `specs:html` builder |

## Idea in one breath

**Objective** = mini-vision (simple enough for a child; no numbers).  
**Key Results** = how we know (metric from baseline → target).  
**Specs** = build steps that *might* move the numbers — not the goals themselves.

## License

MIT — see [LICENSE](LICENSE).
