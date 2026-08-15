# Agent routing — Specs & Goals

Copy into the project `AGENTS.md` / `CLAUDE.md` (adapt names and Spec order).

```markdown
## Product goals (spec-driven)

**Goal 1 — {{GOAL1_TITLE}} (active):** {{GOAL1_SUMMARY}}
Order: **01 → 02 → …**. KRs: … · … · ….
See `docs/specs/GOALS.md` and `docs/specs/status.html`.

**Goal 2 — {{GOAL2_TITLE}} (next):** {{GOAL2_SUMMARY}}
Order: **NN → …**. Documented early; do not implement while Goal 1 KR3 is open unless explicitly overridden.

### Agent rules
- What next? → active Goal → first unfinished Key Result → next Spec in that KR.
- Spec ≠ implement: write Spec / feasibility only when asked; code only when asked to build.
- After Spec or Goal markdown changes: `npm run specs:html`.
- Expand scope only by updating the Spec first.
```
