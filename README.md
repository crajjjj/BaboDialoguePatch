# Babo Dialogue 6.11 stabilization patch

Script-only stabilization patch (guards / crash fixes) for **Babo Dialogue 6.11**.
No ESP — it overrides only the scripts it actually changes.

Earlier releases targeted 6.00 and shipped ~900 scripts, most of them unmodified 6.00
copies that overwrote and reverted 6.11's own scripts (e.g. the kidnap-outpost exit door
went dead because the stock 6.00 `BaboKidnapDoorActivateScript` lacks 6.11's
`GoCustomstate` / `BaboKidnapScenarioe` escape logic). This repo is trimmed to **only the
35 scripts the patch genuinely fixes**, each verified interface-compatible with 6.11, so it
no longer reverts anything.

## Install
1. Install Babo Dialogue **6.11**.
2. Let this patch's `scripts/*.pex` load **after** 6.11 (loose, or repacked into the BSA).

## Repo layout
- `Source/` — the 35 patched script sources (tracked). 3 are 6.11-based with guards
  re-applied (`BaboSexControllerManager`, `BaboDiaMonitorScript`, `BaboQuestDebugTestConfig`);
  32 are the author's originals that 6.11 left interface-compatible.
- `scripts/` — build output (35 `.pex`), untracked.
- `dependencies/babo611/source/` — the 6.11 base script tree (decompiled, param-defaults
  restored), **import-only** for type resolution. Untracked / local — regenerate as below.
- `tools/restore_babo611_defaults.py` — regenerates the import tree.
- `skyrimse.ppj` — Pyro project. `@ImportsFolder` (Source) is listed first so the 35 patched
  scripts win name resolution over their 6.11 counterparts.

## Building the release
Build `skyrimse.ppj` with Pyro (outputs `Build/BaboDialogue611patch.zip`).

If `dependencies/babo611/source/` is missing (fresh clone), regenerate it:
1. Extract `babo611/scripts/*.pex` (BSA) and decompile with Champollion → `babo611Source/`.
2. Get a defaults reference (the 6.00 baseline still has them):
   `git archive <first-commit> Source/ | tar -x -C ref600`
3. `python tools/restore_babo611_defaults.py babo611Source ref600/Source dependencies/babo611/source`
4. Append a compile-only stub to `dependencies/babo611/source/baboslaverescuescript.psc`:
   `Function MinusRescueCount(Int num)` / `EndFunction` (6.11's SexController calls it but the
   base script never defines it — a latent stock bug, harmless at runtime).

## Not shipped (base 6.11 provides these)
`BaboKidnapEvenScript`, `BaboReputationMasterScript`, `BaboRieklingThirskDuelRefScript`
(heavily rewritten in 6.11 — the 6.00 guards no longer map), and
`BaboDiaQuestT` / `BaboSpawnNPCTrigger` / `TIF__08173183` / `QF_BaboFollowerCLQ08_08310CEF`
(removed in 6.11 / from the patch).

## Status
Compilation and interface-compatibility with 6.11 are verified. **Not yet play-tested.**
