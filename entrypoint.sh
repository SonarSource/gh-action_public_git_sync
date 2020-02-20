#!/bin/bash
set -e
set -o pipefail

if [[ "${GITHUB_REPOSITORY}" == "SonarSource/slang" || "${GITHUB_REPOSITORY}" == "SonarSource/sonarqube" ]];then
  echo "No sync from public repository"
  exit 0
fi

if [ -z "${GITHUB_TARGET_REPOSITORY}" ];then
  echo "You didn't provide a target repository"
  exit 0
fi

if [ -z "${BRANCH_NAME}" ];then
  echo "You didn't provide a branch name"
  exit 0
fi

echo "[user]" > ~/.gitconfig
echo "	email = sonartech@sonarsource.com" >> ~/.gitconfig
echo "  name = sonartech" >> ~/.gitconfig

git clone https://${GITHUB_TOKEN}@github.com/SonarSource/public-git-sync.git
cd public-git-sync
git checkout 
ls
git clone https://${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git repo
cd repo
ls
echo "Starting sync"
pwd
../sync_public_branch.sh ${GITHUB_REPOSITORY} https://${GITHUB_TOKEN}@github.com/SonarSource/${GITHUB_TARGET_REPOSITORY}.git ${BRANCH_NAME}

echo "Starting push"
../commit_sync_public_branch.sh ${GITHUB_TARGET_REPOSITORY} ${BRANCH_NAME}
