#!/bin/bash
# Usage: ./generate_moc.sh "Machine Learning" SVM "Decision Trees" "Neural Networks"

title="$1"
shift

echo "# MOC – $title"
echo ""
for topic in "$@"; do
  echo "## $topic"
  echo "- [[5_Resources/${topic// /_}]]"
  echo ""
done