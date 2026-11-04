#!/bin/sh
# Rebuild the three ATS PDFs from the HTML in this folder.
set -eu
cd "$(dirname "$0")/.."
python3 -m weasyprint resumes/steve-clark.html Steve_Clark_Resume.pdf
python3 -m weasyprint resumes/steve-clark-csm.html Steve_Clark_Resume_CSM.pdf
python3 -m weasyprint resumes/steve-clark-enablement.html Steve_Clark_Resume_Enablement.pdf
echo "Wrote Steve_Clark_Resume.pdf, Steve_Clark_Resume_CSM.pdf, Steve_Clark_Resume_Enablement.pdf"
