# QuickPull
# Pulls git repositories in the current directory
# Github: https://www.github.com/awesomelewis2007/quickpull
# Licence: GNU General Public License v3.0
# By: Lewis Evans

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
