#!/bin/bash
# Usage: cd resumes && bash build.sh <filename_without_extension>
# Example: bash build.sh resume_innovate_geospatial_ds
# Requires xelatex — install via MacTeX (https://tug.org/mactex/)

FILE=$1

if [ -z "$FILE" ]; then
  echo "Usage: bash build.sh <filename_without_extension>"
  echo "Example: bash build.sh resume_innovate_geospatial_ds"
  exit 1
fi

xelatex "$FILE.tex" && xelatex "$FILE.tex"
echo "Done — output: $FILE.pdf"
