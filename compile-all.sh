#!/bin/bash

# ============================================================================
# Compile swimming competition invitation
# Single PDF with all languages (German, Czech, English)
# ============================================================================

echo "🏊 Compiling Swimming Competition Invitation..."
echo ""

echo "📄 Compiling ausschreibung.tex (all languages)..."
xelatex -interaction=nonstopmode ausschreibung.tex

if [ $? -eq 0 ]; then
    echo "✅ Document compiled successfully!"
    echo ""
    echo "📋 Running second pass for references..."
    xelatex -interaction=nonstopmode ausschreibung.tex > /dev/null 2>&1
    echo ""
    echo "🎉 Compilation complete!"
    echo ""
    echo "Generated file:"
    echo "  📄 ausschreibung.pdf (German + Czech + English)"
    echo ""
    echo "✨ Ready for InDesign import!"
else
    echo "❌ Error compiling document"
    echo "Check the .log file for details"
    exit 1
fi
