## Girror is a tiny script to mirror repositories manually.


## Installation ⬇️

```console
brew tap Huseyinnurbaki/girror
brew install girror
```

## How-to ⚙️

```console
girror <source_repository> <remote-connection-name> <destination_repository>
```

## Use Case 🤔

Your codebase is community edition of Gitlab & imported a repository from github. 
After a while, there are newer commits, branches & tags pushed to github & you need to have the latest changes. Also you do not have the privililage to mirror the repository from the panel.


```console
girror git@github.com:<repository>.git gitlab git@gitlab.xyz.com:<repository>.git
```

## Bear in mind 🐻🧠

- This is a one-way update, which means if there are any changes made in common branches between source and destination repositories, destination repoistory will be overwritten. This is the same beahviour with any mirroring approach.
- Newer branches in the destination repository will be preserved.

### Troubleshooting 🔫

- Force push must be allowed.

### To-Do 📌

- run "cd .." if the operation succeeds.
