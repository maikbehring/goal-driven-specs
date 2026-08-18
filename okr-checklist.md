# OKR quality checklist (peer review)

Use when writing or reviewing Objectives (mini-visions) and Key Results.  
Adapted for product work with AI agents: keep language **outsider-clear**; Specs stay **build steps**, never the KR text.

## Drill metaphor (Input → Output → Outcome)

| Level | Example | In this system |
|-------|---------|----------------|
| **Input** | Build a drill | Specs, PRs, flags, SQL |
| **Output** | A hole exists | Feature shipped, screen exists |
| **Outcome** | Picture hangs on the wall | User win you can measure |

Core question at period end: **What did it really bring?**  
Then: **Which at most four core results most raise the odds that the Objective comes true?**  
How you get there is flexible — if one path fails, pick another path to the **same** Key Result (agile OKRs).

## Good Objective (Mini-Vision)

| ✓ Check | Rule |
|---------|------|
| □ | Describes a **closed future state** (clear yes/no at period end) |
| □ | **Self-achievable** with the team’s resources |
| □ | **No evergreen** / “ongoing forever” goals |
| □ | **Motivating** — a concrete picture in the head |
| □ | Understandable on this and lower levels (outsider test) |
| □ | Pays into strategy / parent OKR set |
| □ | **No metrics** in the Objective (no revenue, no counts) |
| □ | No pointers to business/project plans (“Phase 1 done”, “hit Q3 plan”) |
| □ | Max **5** Objectives (this skill: usually **1 active + 1 next + optional 1 potential**) |

## Good Key Result

| ✓ Check | Rule |
|---------|------|
| □ | **Measurable**: clear metric + expected value (target) |
| □ | **≥70% of target** = “good” for the period; 100% = stretch hit |
| □ | Describes a **success driver** (raises odds the Objective is true) — not a vague “were we successful?” indicator |
| □ | **Independent** of other KRs where possible (failing KR1 should not auto-fail KR2) |
| □ | **3–4** most relevant drivers (this skill default: prefer **3**, allow **4**; never more than 4) |
| □ | **No milestones** (no ordered project steps) |
| □ | **MECE-ish**: cover the Objective’s main dimensions — no big gaps, no big overlaps |
| □ | Points at a measurable **result**, not “plan completed” |
| □ | **One result only** — no “and/or/+” joining two wins |

## Red-flag wording

| Signal | Why it’s weak | Fix |
|--------|---------------|-----|
| Objective: *steigern / senken / verbessern / optimieren / effizienter* | Process vibe, not an end state | Paint the finished picture |
| **Und** / **and** in O or KR | Two claims → endless debate if only one lands | Split or drop one |
| **Durch** / **um zu** / **by** / **in order to** | Mixes Objective and KR in one sentence | Separate levels |
| Milestone list in a KR | Inputs/tasks, not period-end result | One outcome metric (e.g. “1 000 visitors learn about X”) |
| Metric soup | Hard to interpret | One primary metric; optional qualifier only if the team shares one definition |
| Spec IDs, Expo, OTP, “Bon” in KR | Insider / output | Plain human win + count |

### Milestones ≠ Key Results

Bad (website project milestones):

1. Concept  
2. Layout approved  
3. Copy written  
4. Site coded  

Good (one outcome KR):

> **1 000 visitors** inform themselves about topic X on the new site.

If “the big site” won’t finish in one period: shrink scope so **some** users already get value and you learn — don’t fake progress with milestone KRs.

## Peer-review ritual (5 minutes)

1. Read Objective aloud — outsider test.  
2. Ask: Input, Output, or **Outcome**? Rewrite if Input/Output.  
3. Run Objective checklist.  
4. For each KR: metric + target? One result? Driver not milestone? Independent?  
5. Drop any 5th KR; merge overlaps (MECE).  
6. Map Specs only in the **build-steps** table — never inside the KR sentence.

## Scoring for agents

- Tick a KR only after **measuring** against the target (not because code merged).  
- **≥70% of target** → treat as “good / on track” in STATUS notes.  
- **Goal done** for moving to the next Goal: every KR at **≥70%**, or the user explicitly accepts the period.  
- Prefer rewriting weak OKRs **before** adding Specs.
