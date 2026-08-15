# Spec status overview

As of: {{DATE}}.  
**Board:** [status.html](./status.html) · **Goals:** [GOALS.md](./GOALS.md)

## Goal 1 — {{GOAL1_TITLE}} (active)

**Objective:** {{GOAL1_SUMMARY}}

| KR | Key Result | Status |
|----|------------|--------|
| 1 | … | open |
| 2 | … | open |
| 3 | … | open |

| # | Spec | Status |
|---|------|--------|
| 1 | [01 Example](./01-example.md) | open |

→ Details: [GOALS.md](./GOALS.md)

## Goal 2 — {{GOAL2_TITLE}} (next)

**Objective:** {{GOAL2_SUMMARY}}

| KR | Key Result | Status |
|----|------------|--------|
| 1 | … | open |
| 2 | … | open |
| 3 | … | open |

| # | Spec | Status |
|---|------|--------|
| 1 | [02 Example](./02-example.md) | open |

→ Details: [GOALS.md](./GOALS.md)

## Legend

| Status | Meaning |
|--------|---------|
| `done` | Finished |
| `partial` | Usable but incomplete — explain the gap in plain language |
| `open` | Not built yet (`offen` allowed as alias) |

## Overview

| Spec | Prio | Status | What works | What’s missing (plain language) |
|------|------|--------|------------|----------------------------------|
| [01 Example](./01-example.md) | P1 | **open** | — | … |

## Maintenance

1. Set frontmatter `status`; tick AC when done.  
2. Sync this file + README + `status.html` + GOALS (**Key Results**, HTML `kr-done`).  
3. Keep manual ops under “what’s missing” — KR stays open until truly done.  
4. `npm run specs:html`.
