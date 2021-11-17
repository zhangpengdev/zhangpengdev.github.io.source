# /bin/bash

echo "Switch branch to main ..."
git checkout main

echo "Check pull"
git pull

echo "Begin push"
git add .
git commit -a -m "commit_$(date)"
git push
