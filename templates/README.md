# {{PRODUCT}} – Specs

Spec-driven + goal-driven product development (AI-friendly).

## Goal 1 — {{GOAL1_TITLE}} (active)

**Objective:** {{GOAL1_SUMMARY}}  
**KRs:** … · … · …  
Order: **01 → …** (see [GOALS.md](./GOALS.md))

**Next Spec:** [01 Example](./01-example.md)

## Goal 2 — {{GOAL2_TITLE}} (next)

**Objective:** {{GOAL2_SUMMARY}}  
**KRs:** … · … · …  
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
4. Update STATUS, README, Spec frontmatter, `status.html`, GOALS (**KR ticks** when the outcome is met).
5. Run `npm run specs:html`.
6. No scope expansion without a Spec update. Do not pull Goal 2 work forward while Goal 1 KR3 is open unless explicitly overridden.
