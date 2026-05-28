#!/bin/bash
# Run from this folder: cd resumes && bash build.sh
# Requires xelatex (install via MacTeX or TeX Live)

FILE=$1

if [ -z "$FILE" ]; then
  echo "Usage: bash build.sh <filename_without_extension>"
  echo "Example: bash build.sh resume_innovate_geospatial_ds"
  exit 1
fi

xelatex "$FILE.tex" && xelatex "$FILE.tex"
echo "Done — output: $FILE.pdf"
