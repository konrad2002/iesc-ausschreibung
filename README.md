# Swimming Competition Invitation (Ausschreibung)

Ausschreibung des Internationalen Erzgebirgsschwimmcups

This is a LaTeX project for creating multilingual swimming competition invitations in German, Czech, and English.

## 🏊 Project Structure

```
├── ausschreibung.tex            # Main document (generates single PDF)
├── compile-all.sh               # Compilation script
├── config/
│   └── variables.tex            # All variables (dates, fees, etc.)
├── styles/
│   └── setup.tex                # Formatting, colors, fonts
├── content/
│   ├── de/                      # German content
│   │   ├── titlepage.tex
│   │   ├── general-info.tex
│   │   ├── event-details.tex
│   │   ├── categories.tex
│   │   ├── registration.tex
│   │   └── rules.tex
│   ├── cs/                      # Czech content
│   │   ├── titlepage.tex
│   │   ├── general-info.tex
│   │   ├── event-details.tex
│   │   ├── categories.tex
│   │   ├── registration.tex
│   │   └── rules.tex
│   ├── en/                      # English content
│   │   ├── titlepage.tex
│   │   ├── general-info.tex
│   │   ├── event-details.tex
│   │   ├── categories.tex
│   │   ├── registration.tex
│   │   └── rules.tex
│   └── common/                  # Shared content (all languages)
│       ├── schedule.tex
│       └── contact.tex
└── README.md
```

**Output:** Single PDF file `ausschreibung.pdf` containing all three languages, ready for InDesign import.

## 🚀 Quick Start

### 1. Annual Updates

**To update the document for a new year, only edit one file:**

Open `config/variables.tex` and update:
- Event year and dates
- Registration deadlines
- Fees
- Organizer information
- Age groups
The single PDF with all three language sect
All three language versions will automatically use these updated values!

### 2. Compile the Documents

#### Requirements
- XeLaTeX or LuaLaTeX (for Verdana font support)
- Verdana font installed on your system

#### Compilation Commands

**Using the compile script (recommended):**
```bash
./compile-all.sh
```

**Or compile manually:**
```bash
xelatex ausschreibung.tex
```

This generates a single `ausschreibung.pdf` file containing:
1. German section
2. Czech section
3. English section
4. Common/shared pages (schedule, contact)

#### Using VS Code LaTeX Workshop Extension

If you have the LaTeX Workshop extension installed, the project is configured to use XeLaTeX automatically. Simply:
- Open `ausschreibung.tex`
- Save the file (`Cmd+S`) - this will trigger automatic compilation
- Or click "Build LaTeX project" in the sidebar

**Important:** This project requires XeLaTeX (not pdfLaTeX) due to the Verdana font and multilingual support.

## 📝 Customization

### Colors and Fonts

Edit `styles/setup.tex` to change:
- Main color (currently #000090)
- Font (currently Verdana)
- Page layout
- Section formatting
- Headers and footers

### Content Updates

**Language-specific content:**
- German: Edit files in `content/de/`
- Czech: Edit files in `content/cs/`
- English: Edit files in `content/en/`

**Shared content (schedule, contact):**
- Edit files in `content/common/`

### Adding a Logo

Place your logo file (e.g., `logo.png`) in the root directory and it will automatically be included on the title pages. If you don't have a logo, simply comment out the `\includegraphics` line in the titlepage files.

## 🎨 Design Features

- **Color scheme:** Dark blue (#000090) as primary color
- **Font:** Verdana throughout the document
- **Multilingual:** German, Czech, and English versions
- **Centralized variables:** Update dates and information in one place
- **Professional layout:** Clean, modern design suitable for official invitations

## 💡 Tips

1. **Version Control:** Use Git to track changes to your invitation over the years
2. **Backup:** Keep a copy of `config/variables.tex` from each year
3. **Testing:** After updating variables, compile all three versions to ensure consistency
4. **Font Alternatives:** If Verdana is not available, the template includes alternative font suggestions in `styles/setup.tex`

## 📅 Yearly Workflow

1. Copy last year's `config/variables.tex` as a backup
2. Update dates in `config/variables.tex` for the new year
3. Review and update fees if necessary
4. Update athe document: `./compile-all.sh`
6. Review the generated `ausschreibung.pdf`
7. Import the PDF into InDesign for final layout
7. Export to InDesign if needed

## 🔧 Troubleshooting

**Font not found error:**
- Install Verdana on your system, or
- Uncomment one of the alternative font options in `styles/setup.tex`

**Compilation errors:**
- Make sure you're using XeLaTeX or LuaLaTeX, not pdfLaTeX
- Check that all required LaTeX packages are installed

**Missing content:**
- Verify that all `\input{}` paths in the main documents are correct
- Ensure all referenced `.tex` files exist

## 📧 Support

For questions or issues, contact: info@schwimmclub-wien.at

---

**Last updated:** January 2026
