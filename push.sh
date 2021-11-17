# /bin/bash

git checkout main
git pull
git add .
git commit -a -m "commit_$(date)"
git push
