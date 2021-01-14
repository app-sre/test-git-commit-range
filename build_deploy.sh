#!/bin/bash

set -x

echo GIT_PREVIOUS_COMMIT=$GIT_PREVIOUS_COMMIT
echo GIT_COMMIT=$GIT_COMMIT

COMMIT_RANGE="$GIT_PREVIOUS_COMMIT...$GIT_COMMIT"

echo "COMMIT_RANGE=$COMMIT_RANGE"

echo "MANUAL_COMMIT_RANGE=$(git merge-base HEAD master)...$(git rev-parse HEAD)"

git diff --name-only "$COMMIT_RANGE"
