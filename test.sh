#! /bin/sh

echo foo >foo
git add foo
git commit -m 'Add foo in master'

git checkout -b test
echo bar >bar
git add bar
git commit -m 'Add bar in test branch'

git checkout master
git rm --cached foo
git commit -m 'Test rm'

git checkout -f test # `-f` because `foo` is untracked in `master` and tracked in `test`
ls

git checkout master
ls # Oops, where is foo?!
