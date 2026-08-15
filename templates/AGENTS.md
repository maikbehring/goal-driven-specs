# Agent routing — Specs & Goals

Copy into the project `AGENTS.md` / `CLAUDE.md` (adapt names and Spec order).

```markdown
## Product goals (goal-driven specs)

**Goal 1 — {{GOAL1_TITLE}} (active)**  
Mini-vision: {{GOAL1_SUMMARY}}  
Order: **01 → 02 → …**. How we know: … · … · ….  
See `docs/specs/GOALS.md` and `docs/specs/status.html`.

**Goal 2 — {{GOAL2_TITLE}} (next)**  
Mini-vision: {{GOAL2_SUMMARY}}  
Order: **NN → …**. Document early; do not build while Goal 1 KR3 is open unless overridden.

### Agent rules
- What next? → active Goal → first unfinished Key Result → next Spec for that KR.
- Spec ≠ implement: write Spec / feasibility only when asked; code only when asked to build.
- Objectives = mini-visions (no numbers); KRs = countable from→to in plain words.
- After Spec or Goal markdown changes: `npm run specs:html`.
- Expand scope only by updating the Spec first.
```
