#!/bin/bash
set -e
set -o pipefail

if [ "${GITHUB_REPOSITORY}" == "SonarSource/slang" ];then
  echo "No sync from public repository"
  exit 0
fi

echo "[user]" > ~/.gitconfig
echo "	email = sonartech@sonarsource.com" >> ~/.gitconfig
echo "  name = sonartech" >> ~/.gitconfig

git clone https://${GITHUB_TOKEN}@github.com/SonarSource/public-git-sync.git
cd public-git-sync

git clone https://${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git repo
cd repo

echo "Starting sync"
../sync_public_master.sh slang https://${GITHUB_TOKEN}@github.com/SonarSource/${GITHUB_TARGET_REPOSITORY}.git

echo "Starting push"
../commit_sync_public_master.sh ${GITHUB_TARGET_REPOSITORY}
