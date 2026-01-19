# {{ project_name }} documentation

This is a Sphinx template configured to use markdown, some MyST
extensions, and some Makefile/justfile goodies.

## Setup (Linux)

```bash
python -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
```

## Setup (Windows)

```bash
python -m venv .venv
.venv\Scripts\activate
pip install -r requirements.txt
```

## How to preview your changes (build html)

You wil need to complete the build prerequisites section first.
If you haven't completed it yet, please go back there.

Once you edit a sphinx project, you need to generate a build for it.

You can do it by going inside the project folder and running:

```bash
make html
```

Then open `build/html/index.html` (or do `make open`) and see your
changes.

## Fix funny state

Sometimes `make html` can leave builds in a funny state, if that
happens, run:

```bash
make clean && make html
```

## Live HTML (auto rebuild)

There's also a convenience target for live HTML that calls
sphinx-autobuild:

```bash
make livehtml
```

## Justfile support

If you plan on using the justfile instead of the Makefiles:

```bash
pipx install rust-just
```

## Intersphinx

Sphinx allows projects to cross-reference each other. To see the
available references in any of the subprojects and do:

```bash
python -m sphinx.ext.intersphinx build/html/objects.inv
```

You can check for broken links (again, inside a project folder) with:

```bash
sphinx-build -b linkcheck . _build/linkcheck
```

To link to sections of another project you can use any of the following
ways, both work:

```text
{doc}`Or even <hpc_team:key_people/index>`

{external+hpc_team:ref}`hpc-key-people`
```
