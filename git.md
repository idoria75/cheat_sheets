# Useful Git commands

## Staging files

```bash
# Stage files for commit ( or '.' for all files on the directory)
git add <name_of_file>

# Unstage specific file 
git reset -- <name_of_file>

# Unstage files 
git reset

# Git add parts of file (patch)
git add -p <file_name>
```

## Committing files

```bash
# Commit message
git commit -m "<commit_message>"

# Commit message while specifying the author (useful for multiple authors on same computer)
git -c user.name="<name_of_author>" -c user.email="email_of_author" commit -m "<commit_message>"

# Amend previous commit
git commit --amend

# Amend author of previous commit
git commit --amend --author="<name_of_author> <email_of_author>"
```

## Branching

```bash
# List branches
git branch

# Checkout (switch) to branch
git checkout <name_of_branch>

# Create a branch and checkout to the new branch (while keeping current changes)
git checkout -b <name_of_new_branch>
```
