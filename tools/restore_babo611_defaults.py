#!/usr/bin/env python
"""
Restore Papyrus parameter default values in a decompiled Babo Dialogue 6.11 script tree.

Champollion (both 1.0.1 and 1.3.2) strips default values from function/event parameter
DEFINITIONS (e.g. `Bool brape = false` -> `Bool brape`). That breaks recompilation
wherever a caller omits an argument that used to have a default. This script copies the
defaults back in by matching function signatures (by name + arg position) against a
reference tree that still has them.

Usage:
    python restore_babo611_defaults.py <decompiled_6.11_dir> <defaults_reference_dir> <output_dir>

  decompiled_6.11_dir   : Champollion output of babo611/scripts/*.pex
  defaults_reference_dir: a source tree that still has defaults. The 6.00 baseline works:
                          `git archive <first-commit> Source/ | tar -x -C ref` then point here.
  output_dir            : where the defaults-restored tree is written (use as a Pyro import;
                          this repo expects it at dependencies\\babo611\\source).

After running, also add a compile-only stub for the one function 6.11 calls but never
defines (Champollion is faithful here — the stock pex has the latent call):
add `Function MinusRescueCount(Int num)\\nEndFunction` to baboslaverescuescript.psc.
"""
import os, re, shutil, sys

DECL = re.compile(
    r'^(?P<pre>\s*(?:[A-Za-z0-9_\[\]]+\s+)?(?:Function|Event)\s+)'
    r'(?P<name>[A-Za-z0-9_]+)\s*\((?P<params>.*?)\)(?P<post>.*)$', re.I)

def split_params(s):
    return [p.strip() for p in s.split(',')] if s.strip() else []

def param_default(p):
    if '=' in p:
        left, right = p.split('=', 1)
        return left.strip(), right.strip()
    return p.strip(), None

def parse_defaults(path):
    out = {}
    try:
        txt = open(path, encoding='utf-8', errors='ignore').read()
    except OSError:
        return out
    for line in txt.splitlines():
        m = DECL.match(line)
        if m:
            out[m.group('name').lower()] = [param_default(p)[1] for p in split_params(m.group('params'))]
    return out

def main():
    if len(sys.argv) != 4:
        print(__doc__); sys.exit(1)
    dec, ref, out = sys.argv[1:4]
    refmap = {}
    for fn in os.listdir(ref):
        if fn.lower().endswith('.psc'):
            refmap[fn[:-4].lower()] = parse_defaults(os.path.join(ref, fn))
    if os.path.exists(out):
        shutil.rmtree(out)
    os.makedirs(out)
    restored = files = 0
    for fn in os.listdir(dec):
        if not fn.lower().endswith('.psc'):
            continue
        rdefs = refmap.get(fn[:-4].lower(), {})
        changed = False
        lines = []
        for line in open(os.path.join(dec, fn), encoding='utf-8', errors='ignore').read().splitlines():
            m = DECL.match(line)
            if m:
                params = split_params(m.group('params'))
                base = rdefs.get(m.group('name').lower())
                if base is not None and len(base) == len(params):
                    newp = []
                    for i, p in enumerate(params):
                        bare, cur = param_default(p)
                        if cur is None and base[i] is not None:
                            newp.append(f"{bare} = {base[i]}"); restored += 1; changed = True
                        else:
                            newp.append(p)
                    line = f"{m.group('pre')}{m.group('name')}({', '.join(newp)}){m.group('post')}"
            lines.append(line)
        if changed:
            files += 1
        open(os.path.join(out, fn), 'w', encoding='utf-8').write("\n".join(lines))
    print(f"restored {restored} defaults across {files} files -> {out}")

if __name__ == "__main__":
    main()
