#!/bin/bash
# Generate docuemtnation from template

if [ $# -lt 1 ]; then
echo "Usage: $0 <title>"
exit 1
fi

TITLE=$1
DATE=$(date +%Y-%m-%d)
AUTHOR="Your Name"
FILENAME=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr ' ' '-').md

#Create document from template
sed "s/{{title}}/$TITLE/g; s/{{date}}/$DATE/g; s/{{author}}/$AUTHOR/g" template.md > "docs/$FILENAME"

echo "Create: docs/$FILENAME"
git add "docs/$FILENAME"
git commit -m "Generated document: $TITLE"
