# Reference — Spec-driven PM

## Sync checklist (after any Spec / Goal change)

- [ ] Spec frontmatter `status` (+ AC checkboxes if implementing)
- [ ] `docs/specs/GOALS.md` — order table + KR ticks if outcome met
- [ ] `docs/specs/STATUS.md` — Spec row + KR table
- [ ] `docs/specs/README.md` — status column + **next Spec**
- [ ] `docs/specs/status.html` — **hand-edit** `specs[]`, Goal steps, Kanban, `kr-done`, “as of” date (`npm run specs:html` does **not** write this file)
- [ ] `AGENTS.md` / `CLAUDE.md` — Goal **order table** if sequence changed (Spec numbers stay)
- [ ] `npm run specs:html`

## Renumber / free a Spec number

1. `git mv docs/specs/15-old.md docs/specs/16-old.md` (or rename) and update frontmatter `id`.
2. Grep and fix: `GOALS.md`, `STATUS.md`, `README.md`, other Specs, `status.html`, `AGENTS.md`, setup docs.
3. Create the new Spec under the freed number.
4. `npm run specs:html`.

## Move a Spec between Goals

1. Update Spec `Entscheidungen` / Decisions: `Goal X #N · KRn`.
2. Reorder GOALS / STATUS / README; remapping which KR the Spec serves.
3. Swap `goal1` / `goal2` in `status.html` JS + Goal step lists; renumber sibling slots.
4. Re-evaluate KR checkboxes (a move can complete or reopen a KR).
5. `npm run specs:html`.

## Spec number vs build order

The filename `13-tarif.md` is a **permanent ID**. Goal 1 step **#11** may point at Spec 13. Never reuse a number to “fill a gap”.

`GOALS.md` / `AGENTS.md` **Order:** `01 → 02 → … → 13` is the sequence to *work*, not “Spec 13 is the 13th file you write.”

## Inserting a Spec into an existing chain

1. New Spec owns **only the delta** (one new rung, one new page, one new default).
2. Update `depends_on` and the nested tables on Specs that already owned the surface.
3. Do not rewrite the owning Spec from scratch in parallel.
4. Wire GOALS order, STATUS, README, `status.html`, `AGENTS.md`.
5. `npm run specs:html` **plus** hand-edit the board.

## Goal 2 markdown vs Goal 2 product

Conversation aids and Goal 2 Spec markdown may exist while Goal 1 is open. Goal 2 **apps** wait. Shipping the aid does not tick Goal-2 KRs (those need measured calls / keys / …).

## Publishing a static conversation page

See SKILL.md. Checklist: existing host, noindex, no cookies/trackers/webfonts, legal footer, leak grep, Spec updated first.

## Overlapping Specs

- State ownership in both Specs’ Decisions.
- Do not duplicate conflicting AC; link to the owning Spec.
- Keep the older Spec for remaining scope or mark `partial` with a clear gap.

## Status vocabulary

| Canonical | German alias (optional) |
|-----------|-------------------------|
| `done` | `done` / `fertig` in prose |
| `partial` | `partial` |
| `open` | `offen` |

Board JS should treat `open` and `offen` as the same filter bucket.

## Plain language (required)

- Label Objectives as **Mini-Vision** — inspiring, no numbers, no tool jargon.
- KRs under **How we know** — **one result each** (no and/or between two wins); human win first, count at the end.
- **Outsider test:** a stranger understands and feels inspired; if not, rewrite.
- **One-result test:** “A and B” in a KR → two KRs or drop one.
- Spec tables are **build steps for the team**, never the KR text.
- Prefer the product’s language for Goal docs; keep this skill’s agent docs in English.

## Feasibility verdicts

Use on architecture / auth / data / AI-provider Specs:

- `FEASIBLE`
- `FEASIBLE WITH CAVEATS` (list caveats; prefer phased delivery)
- `HARD` (do not force insecure shortcuts)

Do not implement a HARD Spec without an explicit user decision.
