# Babo Dialogue Patch — Project Notes for Claude

**Script-only stabilization patch** (guards / crash fixes) for **Babo Dialogue 6.11**
(an adult LoversLab dialogue/scenario mod). Pure **Papyrus** (`.psc` -> `.pex`).
**No ESP, no BSA of its own** — it ships *loose* `.pex` that override only the
scripts it actually fixes, load-ordered after the base mod.

Current release: **6.1.1.3** (git tag + GitHub release). Version lives in the ppj
`@ModName` and the release-zip name — there is no `meta.ini`/`fomod` here.

## The one rule that matters most: only override scripts you genuinely fix

Earlier releases targeted 6.00 and shipped ~900 scripts, most of them *unmodified
6.00 copies* that overwrote and reverted 6.11's own scripts (e.g. the kidnap-outpost
exit door went dead because stock 6.00 `BaboKidnapDoorActivateScript` lacks 6.11's
escape logic). The repo is now trimmed to **only the 35 scripts the patch genuinely
fixes**, each verified interface-compatible with 6.11.

- **Never add a script to `Source/` unless the patch actually changes its behavior.**
  A stock copy in the overlay silently reverts whatever 6.11 did to that script.
- Scripts 6.11 **heavily rewrote** are intentionally NOT overridden (the 6.00 guards
  no longer map): `BaboKidnapEvenScript`, `BaboReputationMasterScript`,
  `BaboRieklingThirskDuelRefScript`. Don't reintroduce them.
- When you must touch a base script that isn't yet in `Source/`, prefer editing an
  existing already-patched script over adding a new override.

## Git commits
Do **not** add a `Co-Authored-By:` trailer or "Generated with Claude Code" line —
commits should read as solely the user's (their convention across all their Skyrim
mods). Summary + body only. Commit/push only when asked.

## Build (single script / all scripts)

Compiled with the Skyrim SE Papyrus compiler. Project file: `skyrimse.ppj` — its
`<Imports>` list (59 folders) is the **entire** type-resolution universe; a bare
import list fails because Babo scripts transitively pull in SexLab/DD/SOS/JContainers
types you never touched. **Always pass the full ppj import list.**

Pyro is the user's normal toolchain but is **not on Claude's PATH** — compile
directly with `PapyrusCompiler.exe`. Working recompile (PowerShell, from repo root):

```powershell
$root     = "c:\Playground\Skyrim\mods\BaboDialoguePatch"
$compiler = "C:\SteamLibrary\steamapps\common\Skyrim Special Edition\Papyrus Compiler\PapyrusCompiler.exe"
$skyrim   = "C:\SteamLibrary\steamapps\common\Skyrim Special Edition\Data\Source\Scripts"
$ppj = Get-Content "$root\skyrimse.ppj" -Raw
$imports = foreach ($m in [regex]::Matches($ppj,'<Import>(.*?)</Import>')) {
  $p = $m.Groups[1].Value.Trim()
  if     ($p -eq '@ImportsFolder') { "$root\Source" }
  elseif ($p -eq '@SkyrimScripts') { $skyrim }
  elseif ($p.StartsWith('.\'))     { Join-Path $root $p.Substring(2) }
  else   { $p }
}
Push-Location "$root\Source"
# one script:  & $compiler "BaboSexControllerManager" ...
# all 35:      & $compiler "$root\Source" -all ...
& $compiler "BaboSexControllerManager" -f="TESV_Papyrus_Flags.flg" -i="$(($imports -join ';'))" -o="$root\scripts"
Pop-Location
```

- `@ImportsFolder` (`.\source` -> `Source/`) is listed **first** in the ppj so the 35
  patched scripts shadow their 6.11 counterparts during name resolution.
- Output `.pex` -> `scripts/`; sources live in `Source/`. Confirm `0 error(s), 0 warning(s)`.
- `TESV_Papyrus_Flags.flg` resolves via the vanilla `@SkyrimScripts` import path.

### The import-only base tree (`dependencies/babo611/source/`)
The full decompiled 6.11 script tree, param-defaults restored, **import-only** for
type resolution. **Gitignored / local** — on a fresh clone it's absent and the whole
project fails to compile with `unable to locate script <Babo...>`. Regenerate per
`README.md` (decompile 6.11's pex with Champollion -> `restore_babo611_defaults.py`).
Same pattern for any other import-only dep (e.g. `dependencies/Acheron/`).

## Release

**Preferred:** the user's Pyro run on the ppj drops `Build/<@ModName>.zip`. If that
exists and is current, rename it to the versioned name.

**Fallback (Pyro absent for Claude):** build the zip **from the ppj `<ZipFiles>`
manifest** — read each `<Match In="dir">pattern</Match>` rather than hardcoding a
list, so manifest changes flow through. Entry prefix = the `In=` value verbatim
(slashes normalized); `Match In="scripts"` is top-level `*.pex` only, other folders
recurse. Build with PowerShell `System.IO.Compression`, forward-slash relative
entries, `CompressionLevel.SmallestSize`. Current manifest =
`source/*.psc` (35) + `scripts/*.pex` (35) + `SKSE/Acheron/Validation/*.yml` (1) = 71 entries.

**Versioning:** git tag is the release marker (per the global "don't double-bump"
rule — check `git tag -l "<ver>"` first). To bump, update `@ModName` in `skyrimse.ppj`
(the only place; also drives the zip name). Don't create the tag yourself unless the
user asks — the user asking for "a release" IS that ask. GitHub remote:
`crajjjj/BaboDialoguePatch`; releases via `gh release create <tag>` with the zip.

## Reading the base mod
Base scripts are compiled pex in the mod's BSA. To read one, decompile with
Champollion / houseCARL, or read the local `dependencies/babo611/source/` tree.
houseCARL (MCP) reads the live load order and Nexus directly; FormIDs are
`XXXXXX:Plugin.esp`. Deployed paths: base mod
`E:\nefaram\mods\BaboDialogue\BaboInteractiveDia.esp` (+`.bsa`); this patch
`E:\nefaram\mods\BaboDialogue 6.1.1.0 stability patch\` (loose pex + source).

## Defeat-framework coexistence (Acheron)
`BaboSexControllerManager` suspends **Acheron (Death Alternative)** while Babo drives
its own defeat scenes — `LosingControl`/`StuckControl` call
`Acheron.DisableProcessing(true)`, `RecoverControl` re-enables. Soft-dep guarded by
`Game.GetFormFromFile(0x801,"Acheron.esm")` (Acheron.esm is **ESL-flagged**, so
`GetModByName` would wrongly report absent — don't use it). A data-only backstop,
`SKSE/Acheron/Validation/BaboDialogue.yml`, adds Babo hostile/player factions to
Acheron's top-level `Faction:` ignore-list. See the README's Acheron section.

## Papyrus language gotchas (bite often here)
- No `break`/`continue`/for-loops/switch — only `if/elseif/else`, `while`, flags, early `return`.
- Locals are **function-scoped, not block-scoped** — same name in sibling `if` branches = compile error; hoist it.
- `array[i] += 5` does **not** compile — write `array[i] = array[i] + 5`. Arrays max 128, literal size.
- Reading a member off `None` yields `None` and logs `Assigning None to ::tempN` — **guard external casts** (`Foo f = q as Foo` then `If f`).
- A **script-level property** typed to an external mod's script resolves at *script load*; if that type is missing the whole script fails to load. A **global function call** (`SomeScript.Fn()`) resolves *lazily at call time* — that's why the Acheron hook calls `Acheron.DisableProcessing(...)` (global) rather than holding an `Acheron` property.
- CK-filled properties must **not** be deleted from a `.psc` even if unused — it breaks the form binding and the script won't load. Leave dead weight.
- Missing return paths are undefined behavior; the compiler won't catch them.

## Repo layout
```
Source/                 the 35 patched .psc (TRACKED) — edit here
scripts/                compiled .pex build output (gitignored)
skyrimse.ppj            Pyro project: import list + zip/BSA manifest + @ModName version
SKSE/Acheron/Validation/BaboDialogue.yml   Acheron coexistence backstop (tracked)
dependencies/           import-only .psc trees (gitignored; babo611 = the 6.11 base)
tools/restore_babo611_defaults.py          regenerates the babo611 import tree
Build/                  release zip target (gitignored)
README.md               what the patch is, what it ships, how to build
```
Gitignored: `/dependencies`, `/scripts`, `/Seq`, `/Interface`, `/SKSE/*` (except
`!/SKSE/Acheron`), `/Textures`, `/sound`, `Build/`.
