# QuickPull
# Pulls git repositories in the current directory
# Github: https://www.github.com/awesomelewis2007/quickpull
# Licence: GPL-3.0
# By: Lewis Evans

echo "Pull all repositories in the current directory? (y/n)"
read answer

if [ "$answer" == "y" ]; then
    for dir in */; do
        cd $dir
        git pull
        cd ..
    done
fi

for dir in */; do
    cd $dir
    git pull
    cd ..
done

echo "All repositories have been updated."
