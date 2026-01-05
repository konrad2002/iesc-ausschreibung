# IESC Ausschreibung (Multilingual Swim Meet Invitation)

This repository contains a XeLaTeX template for producing a tri-lingual swim meet invitation (German, Czech, English) in a single PDF. All event-specific data lives in one place, so annual updates require minimal edits.

## Repository layout
- [ausschreibung.tex](ausschreibung.tex) main driver that assembles common pages plus each language block.
- [config/variables.tex](config/variables.tex) yearly event data (dates, fees, awards, banking info, labels).
- [styles/setup.tex](styles/setup.tex) fonts, colors, geometry, hyperlink styles, and helper commands.
- [content/common](content/common) schedule and limits shared across languages.
- [content/de](content/de), [content/cs](content/cs), [content/en](content/en) language-specific text sections.
- [images](images) assets such as flags referenced by the layout.
- [compile-all.sh](compile-all.sh) convenience script to compile the combined PDF.

## Requirements
- XeLaTeX (recommended) or LuaLaTeX with `fontspec` support.
- Verdana installed on the system (or adjust the font block in [styles/setup.tex](styles/setup.tex)).
- Standard LaTeX packages listed in [styles/setup.tex](styles/setup.tex) (geometry, xcolor, titlesec, fancyhdr, hyperref, tabularx, etc.).

## Quick start
```bash
# from the repository root
chmod +x compile-all.sh   # first run only
./compile-all.sh          # builds ausschreibung.pdf with all languages
```

If you prefer a manual build:
```bash
xelatex -interaction=nonstopmode ausschreibung.tex
xelatex -interaction=nonstopmode ausschreibung.tex   # second pass for references
```

The output file is `ausschreibung.pdf`, ready for distribution or InDesign import.

## Customization
- Update event data in [config/variables.tex](config/variables.tex): year, dates, fees, awards, bank details, and schedule labels.
- Edit shared schedule/limits in [content/common](content/common).
- Adjust language-specific pages in [content/de](content/de), [content/cs](content/cs), and [content/en](content/en).
- Tweak typography, colors, margins, and helper commands in [styles/setup.tex](styles/setup.tex) if the visual identity changes.
- Replace or add assets in [images](images) (e.g., flags) referenced by the `\flagtopright{...}` helper.

## Tips and troubleshooting
- Always run two passes of XeLaTeX when building manually so cross-references settle.
- If compilation fails, inspect `ausschreibung.log` for missing fonts or packages; install the reported LaTeX packages via your TeX distribution.
- `latexmk -xelatex -interaction=nonstopmode ausschreibung.tex` is a convenient alternative that handles repeated runs automatically.
