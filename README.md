# Git public sync action

This action automatically syncs private repository branches with public ones.

## Example usage

```
uses: SonarSource/gh-action_public_git_sync@master
env:
  GITHUB_TOKEN: ${{ secrets.GH_TOKEN }}
  GITHUB_TARGET_REPOSITORY: slang
  BRANCH_NAME: master
```
