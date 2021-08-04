#/bin/bash

CLANG_TIDY="clang-tidy-12"
SCRIPT_DIR="$(dirname $0)"

find "$SCRIPT_DIR" -not -path "*build/*" -and \( -name "*.h" -or -name "*.cpp" \) -print0 | \
xargs -0 $CLANG_TIDY $@

