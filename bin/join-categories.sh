#!/bin/sh

BASEPATH="portage/base"
DIRNAME="`basename $1`"
FILENAME="${DIRNAME/.base/}"
DST="$BASEPATH/$FILENAME"

echo -n > "$DST"
find "$BASEPATH"/"$DIRNAME"/* -type f -exec cat {} \; >> "$DST"


