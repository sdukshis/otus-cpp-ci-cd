#/bin/bash

CLANG_FORMAT="clang-format"
SCRIPT_DIR="$(dirname $0)"
OPTS="-i"

if [[ "$1" == "check" ]]; then
    OPTS="--Werror --dry-run"
fi

find "$SCRIPT_DIR" -not -path "*build/*" -and \( -name "*.h" -or -name "*.cpp" \) -print0 | \
xargs -0 $CLANG_FORMAT $OPTS

