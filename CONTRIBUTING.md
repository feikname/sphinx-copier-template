# Editing guide

This is in now way comprehensive, just a few tips

## Table of Contents (toctree)

We use `toctree` directives to define the navigation structure. They look like this:

```text
:::{toctree}
:maxdepth: 2
:caption: "Contents:"

onboarding/index
glossary
:::
```

Each of the entries after the caption is the name of a markdown file, minus
the `.md` extension.
