# Git public sync action

This action automatically merges branches prefixed with name "dogfood/" into the "dogfood-automerge" branch or the branch specified as input.

## Inputs

### `target-repo`

**Required** The target repository, where the public part of a private repo will be synced


## Example usage

```
uses: SonarSource/gh-action_git-octopus@master
env:
  GITHUB_TOKEN: ${{ secrets.GH_TOKEN }}
with:
  target-repo: 'slang'
```
