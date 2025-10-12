---
title: GitHub Copilot CLI - Getting Started
---

# GitHub Copilot CLI - Getting Started

This guide will help you set up and use the GitHub Copilot CLI on Windows with PowerShell, including easy-to-copy aliases and example commands.

## 1. Set Up Aliases in PowerShell

To make Copilot CLI easier to use, add these aliases to your PowerShell profile. This will let you use short commands like `pilot`, `shell`, and `githelp`.

### Open your PowerShell profile for editing:

```powershell
notepad $PROFILE
```

If you see a prompt that the file does not exist, choose to create it.

### Add these lines to the end of your profile file:

```powershell
# Copilot CLI aliases
Set-Alias pilot github-copilot-cli
Set-Alias shell "github-copilot-cli what-the-shell"
Set-Alias githelp "github-copilot-cli git-assist"
Set-Alias ghhelp "github-copilot-cli gh-assist"
```

### Save and close Notepad, then restart PowerShell.

You can now use the following commands in any new PowerShell window:

## 2. Example Commands

### Get a shell command suggestion
```powershell
shell "list all files in the current directory"
```

### Get a git command suggestion
```powershell
githelp "undo the last commit but keep the changes"
```

### Get a GitHub CLI command suggestion
```powershell
ghhelp "create a new issue in this repo"
```

### Use the full Copilot CLI (if you want to use subcommands directly)
```powershell
pilot what-the-shell "find all .py files recursively"
pilot git-assist "create a new branch and switch to it"
```

### Get help for a subcommand
```powershell
pilot help what-the-shell
```

## 3. Troubleshooting

- If an alias does not work, make sure you restarted PowerShell after editing your profile.
- If you get a 'not recognized' error, check that `github-copilot-cli` is installed and in your PATH.
- You can always use the full command `github-copilot-cli` if an alias fails.

---
Happy coding with Copilot CLI!