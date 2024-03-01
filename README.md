# Git Fuzzy Checkout

Checks out a branch by searching the branch name.

## This is a shell script

Yes, that's right. This is a simple /bin/sh script.

Yes, I'm using NPM to distribute it. Hey, they've always claimed that they're not a
Node package manager. NPM is simply the easiest way for me to distribute software.

## Usage:

> checkout some branch name

Will search for branches that match `some.*branch.*name` so the word order is
significant. If only one branch is found it will check out that branch otherwise
it will dump all matching branches.
