# Useful Git commands

## Stage files

```bash
# Stage files for commit ( or '.' for all files on the directory)
git add <name_of_file>

# Unstage specific file 
git reset -- <name_of_file>

# Unstage files 
git reset

# Git add parts of file (patch) (check interactive staging reference for commands)
git add -p <file_name>
```

References:
[Interactive Staging](https://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging)

## Commit files

```bash
# Commit message
git commit -m "<commit_message>"

# Commit message while specifying the author (useful for multiple authors on same computer)
git -c user.name="<name_of_author>" -c user.email="email_of_author" commit -m "<commit_message>"
```

## Branch

```bash
# List branches
git branch

# Checkout (switch) to branch
git checkout <name_of_branch>

# Checkout only a certain file to current branch
git checkout <name_of_branch> <name_of_file>

# Create a branch and checkout to the new branch (while keeping current changes)
git checkout -b <name_of_new_branch>
```

## Rebase

```bash
# Amend previous commit
git commit --amend

# Amend author of previous commit
git commit --amend --author="<name_of_author> <email_of_author>"

# Make changes to older commits
git rebase -i <hash from commit previous to the one to make changes>

# On the editor, replace pick with edit for the commits where changes are necessary.
# Then, perform changes, for example:
git commit --amend --author="<name_of_author> <email_of_author>"

# When done, continue to the next commit (if there is one)
git rebase --continue

# To push, must force push
git push -f
```

## Stash

```bash
# Save changes to stash
git stash

# Apply changes saved on the stash (keep changes on stack)
git stash apply

# Apply changes and remove them from the stash
git stash pop

# Show changes stashed (with their id)
git stash list

# Show files modified on most recent stash
git stash show

# Show changes to files saved on stash (git diff on stash)
git stash show -p

# Show changes to files saved on stash for a certain stash
git stash show -p <stash_id>
```

Sources:
[Interactive rebase](https://stackoverflow.com/questions/3042437/how-to-change-the-commit-author-for-one-specific-commit)
