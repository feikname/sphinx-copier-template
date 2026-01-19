# Minimal justfile for Sphinx documentation

# Variables (override via env or CLI)
SPHINXOPTS := ""
SOURCEDIR := "source"
BUILDDIR := "build"

# Default recipe (like `make` with no args)
default *args:
    sphinx-build -M help "{{SOURCEDIR}}" "{{BUILDDIR}}" {{SPHINXOPTS}} {{args}}

# Show Sphinx help
help *args:
    sphinx-build -M help "{{SOURCEDIR}}" "{{BUILDDIR}}" {{SPHINXOPTS}} {{args}}

# Build HTML docs
html *args:
    sphinx-build -M html "{{SOURCEDIR}}" "{{BUILDDIR}}" {{SPHINXOPTS}} {{args}}

# Open built HTML docs
open:
    python -m webbrowser -t "{{BUILDDIR}}/html/index.html"

# Live-reload server (requires sphinx-autobuild)
livehtml *args:
    sphinx-autobuild "{{SOURCEDIR}}" "{{BUILDDIR}}/html" --open-browser {{SPHINXOPTS}} {{args}}

# Catch-all: forward unknown targets to sphinx-build -M
@_target target *args:
    sphinx-build -M {{target}} "{{SOURCEDIR}}" "{{BUILDDIR}}" {{SPHINXOPTS}} {{args}}
