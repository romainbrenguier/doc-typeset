#!/bin/sh

pandoc $1 -t latex -o CV-from-docx.tex
sed -i "s/.c.[{]@[{][}]ll@[{][}][}]/{R@{~~~}p{12cm}}/" CV-from-docx.tex
#sed -i "s/[{]@[{][}]lll@[{][}][}]/{p{10cm}@{~~~}p{5cm}@{~~~}p{5cm}}/" CV-from-docx.tex
pdflatex \\nonstopmode\\input CV-template.tex
cp CV-template.pdf $1.pdf
echo "output pdf copied to" $1".pdf"

