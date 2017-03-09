# Link from .git/hooks/pre-commit
if ! sort -cu words; then
  echo "words not sorted"
  exit 1
fi
if ! sort -cu blacklist; then
  echo "blacklist not sorted"
  exit 1
fi
if [ ! -z "`comm -12 blacklist words`" ]; then
  echo "words and blacklist intersection not empty"
  exit 1
fi
if grep -vi '^[abcdefghijklmnopqrstuvwxyzäöüßàáâåçčéèêēīíïîłñōóõšūûú]*$' words; then
  echo "invalid characters in word list"
  exit 1
fi

