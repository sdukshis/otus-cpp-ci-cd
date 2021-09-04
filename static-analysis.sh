#/bin/bash

CLANG_TIDY="clang-tidy"
SCRIPT_DIR="$(dirname $0)"

find "$SCRIPT_DIR" -not -path "*build/*" -and \
                   -not -path "*test_package/*" -and \
                   -not -path "*tests/*" -and \
                   \( -name "*.h" -or -name "*.cpp" \) -print0 | \
xargs -0 $CLANG_TIDY $@

