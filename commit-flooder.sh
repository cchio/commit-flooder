#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
git --git-dir=$DIR/.git --work-tree=$DIR checkout $DIR/hash.txt
git --git-dir=$DIR/.git --work-tree=$DIR pull
rm $DIR/hash.txt
RAND="$(openssl rand -base64 32)"
printf "$RAND" >> $DIR/hash.txt
git --git-dir=$DIR/.git --work-tree=$DIR add $DIR/hash.txt
git --git-dir=$DIR/.git --work-tree=$DIR commit -m "$RAND commit"
git --git-dir=$DIR/.git --work-tree=$DIR push
