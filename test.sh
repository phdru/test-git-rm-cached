#! /bin/sh

echo a > a; git add .; git commit -m'a'
git checkout -b br
echo b > b; git add .; git commit -m'b'
git checkout master
echo c > c; git add .; git commit -m'c'
ls
git rm --cached c
git commit -m'rm c'
echo c > .gitignore; git add .gitignore; git commit -m.gitignore
ls
git checkout br
ls
git checkout master
ls

git checkout br
echo c > c; git add .; git commit -m'c'
ls
git checkout master
ls
