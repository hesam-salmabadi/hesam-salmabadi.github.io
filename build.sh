#!/bin/bash
# Build the CV PDF from the LaTeX source
# Usage: bash build.sh [output_name]
# Example: bash build.sh CV_Hesam_DataScience_2026

OUTPUT=${1:-cv_hesam_salmabadi}
TEX=cv_hesam_salmabadi.tex

cd "$(dirname "$0")"

echo "Compiling $TEX -> $OUTPUT.pdf ..."
xelatex -interaction=nonstopmode -jobname="$OUTPUT" "$TEX"
xelatex -interaction=nonstopmode -jobname="$OUTPUT" "$TEX"  # second pass for refs

# Clean up auxiliary files
rm -f "$OUTPUT".aux "$OUTPUT".log "$OUTPUT".out

echo "Done: cv_template/$OUTPUT.pdf"
