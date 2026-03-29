# Making Local Changes in Your Community Repository (Non-Technical Guide)

This guide is for people who are not developers but want to learn how to safely edit files in the `talonhub/community` repository on their own computer.

You will learn:
- how to pick a branch name and create a temporary branch
- how to edit a file and add lines 14–17 as an example
- how to save your changes and commit them locally

> This guide does NOT include how to open a pull request or merge into `main`. It only covers local work on your own branch.

---

## 1. Starting point: open a terminal and check repository status

1. Open your terminal or Command Prompt.
2. Go to your repository folder. For example:

```bash
cd "c:\Users\MPhil\AppData\Roaming\talon\user\community"
```

Or in PowerShell:

```powershell
Set-Location "C:\Users\MPhil\AppData\Roaming\talon\user\community"
```

3. Confirm you are in the repository folder:

```bash
git status
```

Or in PowerShell:

```powershell
git status
```

If everything is clean you will see "nothing to commit, working tree clean" or maybe some existing changes. That’s fine.

---

## 2. Create a temporary branch (exact steps)

Run these commands exactly as written:

```bash
# Make sure we are on main (or the default base branch)
git checkout main

# Update local main first (optional but recommended)
git pull

# Create a temporary branch with a descriptive name
git checkout -b my-local-edit
```

Now you are on a new branch called `my-local-edit`. Local commits will stay on this branch.

You can check with `git branch` and see `* my-local-edit`.

---

## 2.5 Set your Git username (optional but common)

If you want commits to show your name, set your Git username exactly like this:

```bash
git config --global user.name "<Username>"
```

```powershell
git config --global user.name "<Username>"
```

Verify it:

```bash
git config --global user.name
```

or in PowerShell:

```powershell
git config --global user.name
```

> Note: If you are using Visual Studio Code, you can also use its built-in Source Control UI to set your Git user name and manage branches. Many nontechnical users find the UI easier than the terminal.

---

## 3. Edit a file and add lines 14–17 (example)

1. Open any file you want to change (a text editor works well).
2. For this example, put these changes into a file called `example.txt`.

Imagine the file currently has at least 13 lines. Add the following new content at lines 14–17:

```txt
14. Example step 1: describe what this change is for.
15. Example step 2: explain why this helps the community.
16. Example step 3: note that these are local changes, not published yet.
17. Example step 4: remind the user to commit on the temporary branch.
```

### What lines 14–17 do

- They are optional explanatory lines in the file.
- Each line documents one part of your change so a human reader understands intent.
- In a real repository, this could be a prompt, setting, or user message.
- The goal is clarity and safe local editing.

> In a real editing situation, the exact meaning depends on the file. Here we use a simple text example so the pattern is clear for nontechnical users.

---

## 4. Check and stage your changed file(s)

1. Confirm the change is visible to Git:

```bash
git status
```

2. Stage the changed file(s):

```bash
git add example.txt
```

3. Confirm staged files:

```bash
git status
```

---

## 5. Commit locally with a helpful message

1. Commit your changes:

```bash
git commit -m "Add local example text line 14-17 in example.txt"
```

2. Confirm commit is saved on your temporary branch:

```bash
git log --oneline --max-count=3
```

You should see your new commit on top.

---

## 6. Continue making more local edits or stop for now

- Keep working on `my-local-edit`; repeat edit, add, commit.
- When done, you can switch back to main:

```bash
git checkout main
```

- Your `my-local-edit` branch remains with local commits.


## 7. Optional: get a summary of what changed

```bash
git diff --stat my-local-edit
```

or while on your branch:

```bash
git diff --stat
```

---

## 8. If you want to discard the temporary branch later

If you decide you do not need your local work, delete the branch (only safe if it is not checked out):

```bash
git checkout main

git branch -D my-local-edit
```

---

## Quick glossary (nontechnical)

- *Repository*: the project folder with files tracked by Git.
- *Branch*: a &#34;working copy&#34; path; you can experiment without changing the main history.
- *Stage*: pick changed files to include in your next commit.
- *Commit*: save a snapshot of work locally.

---

Happy editing! You are now able to make local changes safely in a branch and save them in Git.