#!/usr/bin/env bash
set -euo pipefail

# Print help text only. The caller decides the stream and exit code.
usage() {
    cat <<EOF
        Usage: $0 <project-name>

        Create a new data project with a standard folder layout.
        Example:
        $0 market_etl
EOF
}

# Wrong number of arguments: stderr, exit 1
if [[ $# -ne 1 ]]; then
    echo "Error: expected exactly one argument, got $#" >&2
    usage >&2
    exit 1
fi


project_name="$1"

# Validating the name
if [[ "$project_name" == -* ]]; then
    echo "Error: project name cannot start with a dash" >&2
    exit 1
fi

if [[ "$project_name" == */* ]]; then
    echo "Error: project name cannot contain slashes" >&2
    exit 1
fi

echo "Project: $project_name successfully created at $(date '+%Y-%m-%d %H:%M:%S')"

#Enviroment check
if [[ "$(command -v python3)" ]] >/dev/null 2>&1 ; then
    echo "Python 3 is installed: $(python3 --version)"
else
    echo "Python 3 is NOT installed."
    echo " Install python : sudo apt update && sudo apt install -y python3"
    exit 1
fi
