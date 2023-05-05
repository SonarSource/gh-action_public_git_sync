# Git public sync action (no longer maintained)

> WARN:
> This action is no longer maintained. As a replacement, some projects are using [SonarSource/public-git-sync](https://github.com/SonarSource/public-git-sync) instead.

This action automatically syncs private repository branches with public ones.

## Example usage

```
uses: SonarSource/gh-action_public_git_sync@master
env:
  GITHUB_TOKEN: ${{ secrets.GH_TOKEN }}
  GITHUB_TARGET_REPOSITORY: slang
  BRANCH_NAME: master
```
