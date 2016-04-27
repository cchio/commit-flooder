#!/bin/bash
head -n 2 README.md > tmp.txt && mv tmp.txt README.md
RAND="$(openssl rand -base64 32)"
printf "$RAND" >> README.md
git add README.md
git commit -m "$RAND commit"
git push