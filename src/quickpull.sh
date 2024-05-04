#!/bin/bash
# QuickPull
# Pulls git repositories in the current directory
# Github: https://www.github.com/0x4248/quickpull
# Licence: GNU General Public License v3.0
# By: 0x4248

echo "Pull all repositories in the current directory? (y/n)"
read answer

if [ "$answer" == "y" ]; then
    for dir in */; do
        cd $dir
        git fetch
        if [ $(git rev-parse HEAD) != $(git rev-parse @{u}) ]; then
            echo "Pulling $dir"
            git pull
        fi
        echo "Done pulling $dir"
        cd ..
    done
    echo "Done pulling all repositories"
fi
