#!/bin/bash

# Link from .git/hooks/pre-commit

if grep -q $'\r' words; then
  echo "words contains non-Unix line endings"
  exit 1
fi
if grep -q $'\r' blacklist; then
  echo "blacklist contains non-Unix line endings"
  exit 1
fi
if grep -q '^$' words; then
  echo "words contains empty lines"
  exit 1
fi
if grep -q '^$' blacklist; then
  echo "blacklist contains empty lines"
  exit 1
fi
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
if grep -vi '^[abcdefghijklmnopqrstuvwxyzäöüßàáâåçčéèêēëīíïîłñōóõœšūûú]*$' words; then
  echo "invalid characters in word list"
  exit 1
fi

