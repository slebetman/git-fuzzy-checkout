#! /bin/sh

SEARCH=$(printf '%s.*' $@)

BRANCH=$(git for-each-ref refs/heads --format='%(refname:short)'|grep -E "$SEARCH")

if [ "$BRANCH" == "" ];then
	echo "No branch found"
elif [ $(echo "$BRANCH"|wc -l) -eq 1 ];then
	git checkout $BRANCH
else
	echo "$BRANCH"
fi
