#!/bin/bash

# Link from .git/hooks/pre-commit

function fatal {
  echo $1
  exit 1
}
[[ "$(locale charmap)" == "UTF-8" ]] || fatal "script requires a UTF-8 locale"
! grep -q $'\r' words || fatal "words contains non-Unix line endings"
! grep -q $'\r' blacklist || fatal "blacklist contains non-Unix line endings"
! grep -q '^$' words || fatal "words contains empty lines"
! grep -q '^$' blacklist || fatal "blacklist contains empty lines"
sort -cu words || fatal "words not sorted"
sort -cu blacklist || fatal "blacklist not sorted"
test -z "`comm -12 blacklist words`" || fatal "words and blacklist overlap"
! grep -vi '^[abcdefghijklmnopqrstuvwxyzäöüßàáâåçčéèêēëīíïîłñōóõœšūûú]*$' words \
  || fatal "invalid characters in word list"

