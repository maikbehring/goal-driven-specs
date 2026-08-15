# Reference — Spec-driven PM

## Sync checklist (after any Spec / Goal change)

- [ ] Spec frontmatter `status` (+ AC checkboxes if implementing)
- [ ] `docs/specs/GOALS.md` — order table + KR ticks if outcome met
- [ ] `docs/specs/STATUS.md` — Spec row + KR table
- [ ] `docs/specs/README.md` — status column + **next Spec**
- [ ] `docs/specs/status.html` — specs[] entry, Goal steps, `kr-done` classes
- [ ] `AGENTS.md` / `CLAUDE.md` — Goal order if it changed
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
- KRs under **How we know** / **Woran merken wir’s?** — human win first, count at the end.
- **Outsider test:** a stranger understands and feels inspired; if not, rewrite.
- Spec tables are **build steps for the team**, never the KR text.
- Prefer the product’s language for Goal docs; keep this skill’s agent docs in English.

## Feasibility verdicts

Use on architecture / auth / data / AI-provider Specs:

- `FEASIBLE`
- `FEASIBLE WITH CAVEATS` (list caveats; prefer phased delivery)
- `HARD` (do not force insecure shortcuts)

Do not implement a HARD Spec without an explicit user decision.
