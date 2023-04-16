# QuickPull
# Pulls git repositories in the current directory

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