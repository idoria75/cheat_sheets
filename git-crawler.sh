#!/bin/bash

# Function to crawl inside git repositories (sub-directories) and return their current branches.
# Author: Will (https://unix.stackexchange.com/a/200126)

# Setup:
# save script to a file (e.g. nano git-crawler)
# sudo cp git-crawler /usr/local/bin/
# sudo chown $USER:$USER git-crawler
# sudo chmod +x git-crawler
# from any directory with git repos as sub-directories (e.g., catkin_ws/src), run: $ git-crawler

function git_branches()
{
    if [[ -z "$1" ]]; then
        echo "Usage: $FUNCNAME <dir>" >&2
        return 1
    fi

    if [[ ! -d "$1" ]]; then
        echo "Invalid dir specified: '${1}'"
        return 1
    fi

    # Subshell so we don't end up in a different dir than where we started.
    (
        cd "$1"
        for sub in *; do
            [[ -d "${sub}/.git" ]] || continue
            echo "$sub [$(cd "$sub"; git  branch | grep '^\*' | cut -d' ' -f2)]"
        done
    )
}

git_branches .