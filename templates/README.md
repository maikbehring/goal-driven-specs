# {{PRODUCT}} – Specs

Goal-driven + spec-driven product development (AI-friendly).

## Goal 1 — {{GOAL1_TITLE}} (active)

**Mini-Vision:** {{GOAL1_SUMMARY}}  
**How we know:** … · … · …  
Order: **01 → …** (see [GOALS.md](./GOALS.md))

**Next Spec:** [01 Example](./01-example.md)

## Goal 2 — {{GOAL2_TITLE}} (next)

**Mini-Vision:** {{GOAL2_SUMMARY}}  
**How we know:** … · … · …  
Order: **NN → …**

**Progress:** [STATUS.md](./STATUS.md) · [status.html](./status.html) · [Goals](./view.html?spec=GOALS.md)

## All Specs

| Prio | Spec | Status |
|------|------|--------|
| P1 | [01 Example](./01-example.md) | open · Goal 1 #1 |

## Workflow

1. Pick next Spec under the **active Goal** (first unfinished **KR**, then Spec order).
2. Read Spec; add Decisions / Feasibility if needed.
3. Implement against Acceptance Criteria **only when asked to build**.
4. Update STATUS, README, Spec frontmatter, `status.html`, GOALS (**measure** before ticking KRs).
5. Run `npm run specs:html`.
6. No scope expansion without a Spec update. Do not pull Goal 2 work forward while Goal 1 KR3 is open unless overridden.
