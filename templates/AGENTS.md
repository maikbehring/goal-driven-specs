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
Order: **NN → …**. Document early (markdown / conversation aid OK). **Do not build the Goal 2 app** while Goal 1 KRs are open unless overridden.

### Agent rules
- What next? → active Goal → first unfinished Key Result → next Spec for that KR.
- Spec ≠ implement: write Spec / feasibility only when asked; code only when asked to build.
- Spec file number is a permanent ID, not the build-step index.
- Spec AC done ≠ Goal KR done — measure the KR count.
- Objectives = mini-visions (no numbers, no “improve X”); KRs = outcome drivers (metric + target), max 4, no milestones.
- Peer-review OKRs with the skill’s `okr-checklist.md` (Input → Output → Outcome).
- After Spec or Goal markdown changes: `npm run specs:html` **and** update `status.html` cards (builder does not write the board).
- Expand scope only by updating the Spec first.
- Public conversation pages: existing host, noindex, no cookies/trackers, company legal footer.
```
