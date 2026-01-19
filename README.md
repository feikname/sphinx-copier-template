# Copier Sphinx documentation template

This is a Sphinx template configured to use markdown, some MyST
extensions, and some Makefile/justfile goodies, tailored to my
specific preferences.

## How to use

If you don't want auto venv

```bash
copier copy gh:feikname/sphinx-copier-template --skip-tasks your-project-folder
```

If you want auto venv:

```bash
copier copy gh:feikname/sphinx-copier-template --trust your-project-folder
```

## How to install copier (pipx)

```bash
pipx install copier
```
