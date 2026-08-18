# Examples — inspiring Mini-visions + outcome Key Results

Copy the **feel**. A stranger should understand and want it.  
**Rules:** each KR = **one** outcome · prefer **3**, max **4** · no milestones · see [okr-checklist.md](okr-checklist.md).

Scoring: target = 100% stretch; **≥70% of target** = good for the period.

## Consumer trip wallet (Reisaldo-shaped)

**Goal 1 — Strong alone (active)**  
**Mini-Vision:** On trips you always know who paid what — easy as a photo, no note chaos.  
*(Closed picture: after your solo trip, the wallet — not a scrap of paper — is how you know.)*

**How we know (success drivers):**
1. **The split feels fair.** At least **1** solo trip ends with a settlement that feels clear and fair. *(≥70% → that one trip happened)*
2. **Value before signup.** Fresh start: you save the **first** expense before the app asks you to sign up.
3. **It feels like a photo.** On a real trip you log at least **10** expenses **with the camera only**.
4. **You’d invite.** Self-score ≥**8**/10 on “Would I invite my partner now?”  
   *(Tip: score after a real trip — not after one PR.)*

*Dropped as KR (build-step only): offline queue — supports #3 on a real trip; don’t make it a second “and” claim.*

**Goal 2 — Together on the road (next)**  
**Mini-Vision:** Friends share one trip wallet on their phones — and look forward to using it again.  

**How we know:**
1. **Friends arrive.** **5** people open the app after a normal install (no developer tooling).
2. **Their spend shows up.** On at least **1** shared trip, another person’s expense is visible within **5** minutes.
3. **Next trip, please.** At least **4 of 5** asked say they’d use it on the next trip (score ≥**4**/5).

**Goal 3 — Far enough for strangers (potential)**  
**Mini-Vision:** People who don’t know you find the trip wallet and keep it for the next trip.  

**How we know:**
1. **Strangers find the way.** At least **50** installs from a public phone store.
2. **Strangers travel with it.** At least **10** shared trips outside your close circle.
3. **It carries itself.** At least **10** people pay for the app (purchase or subscription).

### Bad → good (same product)

| Bad | Why | Good |
|-----|-----|------|
| Ship Spec 09–12 | Milestone / input | Camera-only expenses ≥10 |
| Offline works **and** invite ≥8 | Two results + “and” | Pick one KR each |
| Improve capture UX | Objective verb, no end state | Mini-Vision paints the photo-easy trip |
| Concept → layout → code the wallet | Milestone chain | First expense before signup = 1 |

## B2B SaaS

**Goal 1 — Drop the spreadsheet (active)**  
**Mini-Vision:** Your team runs the weekly job here — the spreadsheet gathers dust.  

**How we know:**
1. At least **N** teammates finish the core flow every week.
2. A typical core-job run takes **≤ Y** minutes.
3. At least **N** teammates say “use this, not the sheet” (score ≥**4**/5).

**Goal 2 — Partners in week one (next)**  
**Mini-Vision:** Outside teams get clear value without hand-holding on a call.  

**How we know:**
1. **3** partner spaces finish setup alone.
2. **3** partners finish the core job within **7** days.
3. **3** written “would continue.”

## AI feature

**Goal 1 — Prefer the assistant (active)**  
**Mini-Vision:** People choose the AI path because it is faster and they trust it.  

**How we know:**
1. Share of sessions that finish with AI without a manual redo: **X% → Y%**.
2. Slow happy-path cases: **A → ≤ B** seconds.
3. Dogfood score “prefer AI vs typing it myself” ≥ **8**/10.

**Goal 2 — Safe for many (next)**  
**Mini-Vision:** Lots of people can use it without support drowning.  

**How we know:**
1. Quality gate failures: **N → 0**.
2. Support tickets per 1 000 AI sessions: **X → ≤ Y**.
3. Policy problems in an audit sample: **N → 0**.

## Compound → single result

| Two results (bad) | One result (good) |
|-------------------|-------------------|
| Install **and** open | People who **open** after a normal install |
| Ten camera expenses **and** invite ≥8 | Two KRs — or keep only the stronger driver |
| Each adds an expense **and** sees the other in 5 min | Other person’s expense visible within 5 min |
| “Would continue **or** would pay” | Pick one |
| Concept + layout + launch | Visitors informed about X ≥ 1 000 |

## B2B: conversation aid while Goal 1 is still open

**Goal 1** is “the customer tries the product for real.” **Goal 2** is “sales grants access without engineering.”

Allowed **before** Goal 1 KRs move: a **markdown** (and optional **static HTML**) page sales opens in the call — what’s live, which plan it maps to, what’s scarce. Not the Goal 2 **app**.

**How we know (Goal 2 KR, later):** Sales uses that page in **5** real customer calls — measure the calls, don’t tick because the markdown exists.

**Publish checklist (if they ask for a URL):** existing public host, `noindex`, no cookies/trackers/webfonts, company legal footer, no internal IDs.
