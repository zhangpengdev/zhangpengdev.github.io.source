# /bin/bash

git checkout Production
git merge main
git add .
git commit -a -m "commit_$(date)"
git push
