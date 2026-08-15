# Examples — Mini-visions + countable KRs

Copy the **shape**. Mini-Vision = no numbers. KRs = plain “from … to …”. Specs are build steps.

## Consumer mobile (solo → share)

**Goal 1 — Solo first (active)**  
**Mini-Vision:** On trips, your spending lives only in the app — as easy as sending a photo.  
**KRs:**
1. Solo trips start→finish where the split feels right: **0 → at least 1**
2. Asks for an email code before the first receipt (fresh start): **1+ → 0**
3. On a trip with ≥8 receipts: all *your* receipts in the app (not chat) + score “partner can try” **≥8/10**

**Goal 2 — Friends on Android (next)**  
**Mini-Vision:** Friends on Android share one trip wallet — and want to do it again.  
**KRs:**
1. People who open the app without Expo Go: **0 → 5**
2. Shared trips where 2 people each add ≥1 receipt and see the other within 5 minutes: **0 → at least 1**
3. Of 5 people asked, score ≥4/5 on “next trip again”: **0 → at least 4**

## B2B SaaS (dogfood → partners)

**Goal 1 — Drop the spreadsheet (active)**  
**Mini-Vision:** Your team runs the weekly job here instead of the spreadsheet.  
**KRs:**
1. Teammates using the core flow each week: **0 → ≥N**
2. Minutes to finish the core job (typical): **Xm → ≤Ym**
3. Votes for “use this, not the sheet”: **0 → ≥N**

**Goal 2 — Partners in week one (next)**  
**Mini-Vision:** Outside teams get clear value without a helper on the call.  
**KRs:**
1. Partner spaces that finish setup alone: **0 → 3**
2. Partners that finish the core job in ≤7 days: **0 → 3**
3. Written “would continue / would pay”: **0 → 3**

## AI feature

**Goal 1 — Prefer the assistant (active)**  
**Mini-Vision:** People pick the AI path because it is faster and they trust it.  
**KRs:**
1. Sessions where AI finishes the job without redo: **X% → Y%**
2. Slow cases (p95) on the happy path: **As → ≤Bs**
3. Dogfood score “prefer AI vs manual”: **→ ≥8/10**

**Goal 2 — Safe to scale (next)**  
**Mini-Vision:** The feature can run for many people without support melting down.  
**KRs:**
1. Eval gate failures: **N → 0**
2. Support tickets per 1k AI sessions: **X → ≤Y**
3. Policy problems in an audit sample: **N → 0**

## Task → plain outcome

| Task-shaped (bad) | Plain countable KR (good) |
|-------------------|---------------------------|
| Ship Spec 15 / enable Anonymous Auth | Email-code asks before first receipt: **1+ → 0** |
| Build APK | People who open after install (not Expo Go): **0 → 5** |
| Implement realtime | Two people see each other’s receipt in 5 min: **0 → ≥1** |
| Add polish | Share of your receipts kept in-app on a real trip: **→ 100%** |
| Ask 5 people if they like it | “Again next trip” ≥4/5: **0 → ≥4** of 5 |
