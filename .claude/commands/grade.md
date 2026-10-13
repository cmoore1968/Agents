---
description: Grade a piece honestly with a letter grade and specific fixes
argument-hint: "[file path or pasted text, plus its purpose and audience]"
---

# Grade it

Target: $ARGUMENTS

## Load first

Read `Safe/aboutme.md`, `Safe/myvoice.md`, and `Safe/myrules.md`. If the target is a file path, read the whole file. If no target is given, ask for it and stop.

## Score against

1. **Accuracy.** Every figure, date, quote, and attribution checks out against the sources. Unverifiable claims count against the grade.
2. **Data conflicts.** Figures agree across the piece and its sources. Each conflict is a credibility hit. Name every one.
3. **Locked facts.** Sugar Hill facts match `myrules.md` exactly. No Mad Hatter or Sister Scoop references. No figures carried across ventures.
4. **Clarity of ask.** The reader knows the point in the first line and the action by the end.
5. **Voice.** Spartan: active voice, short sentences, no filler, no jargon, no hedges.
6. **Completeness.** No placeholders, TODOs, or gaps. Ready to go out.

## Grading rules

- Use the full scale, A to F. No inflation. A B- is a B-.
- An A means it ships today, unchanged.
- One factual error or unresolved data conflict caps the grade at C+ until fixed.

## Output

Match this shape:

> **Grade: B-**
>
> The AAFES and NEX figures conflict. That kills credibility. Everything else holds.
>
> **Fixes to reach A:**
>
> 1. Reconcile AAFES ($X) and NEX ($Y) on p.3. Name the source of truth.
> 2. Cut the second paragraph. It repeats the first.

- Grade on line one. Then a two-to-three-sentence verdict.
- Fixes ranked by impact. Each one names the exact spot and the exact change.
- No praise padding. Say what holds in one line.
