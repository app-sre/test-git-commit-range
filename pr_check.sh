#!/bin/bash

set -x

echo GIT_PREVIOUS_COMMIT=$GIT_PREVIOUS_COMMIT
echo GIT_COMMIT=$GIT_COMMIT

COMMIT_RANGE="$GIT_PREVIOUS_COMMIT...$GIT_COMMIT"
MANUAL_COMMIT_RANGE="$(git merge-base HEAD remotes/origin/master)...$(git rev-parse HEAD)"

echo "COMMIT_RANGE=$COMMIT_RANGE"
echo "MANUAL_COMMIT_RANGE=$MANUAL_COMMIT_RANGE"


git diff --name-only "$COMMIT_RANGE"
git diff --name-only "$MANUAL_COMMIT_RANGE"
