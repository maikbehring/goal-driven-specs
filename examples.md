# Examples — Goal / KR sets (outcomes, not tasks)

Copy the **shape**. Every KR uses **baseline → target**. Specs are initiatives, not KRs.

## Consumer mobile (solo → share)

**Goal 1 — Replace the old solo workflow (active)**  
**Objective:** The app feels so good alone that you stop tracking trip spend in chat or notes.  
**KRs:**
1. Closed solo trips with balances matching expectation (±0.01): **0 → ≥1**
2. Identity prompts before first saved expense (fresh install): **≥1 → 0**
3. On a trip with ≥8 expenses, share of your expenses captured in-app (not WhatsApp): **~0% → 100%**, and “would bring partner” score: **→ ≥8/10**

**Goal 2 — Testers recommend the shared wallet (next)**  
**Objective:** Real Android testers treat the app as their shared trip wallet and want to use it again.  
**KRs:**
1. People who open the app after installing outside Expo Go: **0 → 5**
2. Shared trips where ≥2 people each add ≥1 expense and see the other’s within 5 minutes: **0 → ≥1**
3. Testers scoring ≥4/5 on “would use on next trip”: **0 → ≥4** (of 5 asked)

## B2B SaaS (dogfood → partners)

**Goal 1 — Team drops the spreadsheet (active)**  
**Objective:** Your team runs the weekly workflow here instead of the spreadsheet.  
**KRs:**
1. Weekly active teammates on the core workflow: **0 → ≥N**
2. Time to complete the core job (median): **Xm → ≤Ym**
3. “Use this, not the sheet” internal votes: **0 → ≥N**

**Goal 2 — Design partners get value in week one (next)**  
**Objective:** External teams get clear value without a sales engineer.  
**KRs:**
1. Partner workspaces that finish onboarding unaided: **0 → 3**
2. Partners that complete the core job in ≤7 days: **0 → 3**
3. Written “would continue / would pay” from partners: **0 → 3**

## AI feature

**Goal 1 — Prefer the assistant over the manual path (active)**  
**Objective:** People choose the AI path because it is faster and trustworthy.  
**KRs:**
1. Sessions where AI completes the job without manual redo: **X% → Y%**
2. p95 latency for the happy path: **As → ≤Bs**
3. Dogfood “prefer AI vs manual” score: **→ ≥8/10**

**Goal 2 — Safe to scale (next)**  
**Objective:** The feature can run broadly without support meltdown.  
**KRs:**
1. Eval regression failures on the gate: **N → 0**
2. Support tickets per 1k AI sessions: **X → ≤Y**
3. PII/abuse policy violations found in audit sample: **N → 0**

## Task → Outcome rewrite cheat sheet

| Task-shaped (bad KR) | Outcome-shaped (good KR) |
|----------------------|--------------------------|
| Ship Spec 15 / enable Anonymous Auth | OTP prompts before first value: **≥1 → 0** |
| Build APK / EAS profile | Opens after non–Expo Go install: **0 → 5** |
| Implement realtime sync | Mutual expense visibility ≤5 min on shared trips: **0 → ≥1** |
| Add polish / fix bugs | Share of expenses kept in-app on a real trip: **→ 100%** |
| Ask 5 people if they like it | “Use again” ≥4/5: **0 → ≥4** of 5 |
