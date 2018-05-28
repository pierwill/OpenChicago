# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = OpenChicagoDocs
SOURCEDIR     = .
BUILDDIR      = docs/

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: docs
docs: ## Build project documentation in live reload for editing
# Spins up livereload environment for editing; blocks.
	rm -rf _build && sphinx-autobuild . _build/html -p 8001

.PHONY: html
html: ## Build project documentation in live reload for editing
# Spins up livereload environment for editing; blocks.
	rm -rf docs/ && sphinx-build "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) \
	&& touch docs/CNAME && echo "openchicago.pierwill.com" > docs/CNAME \
	&& touch docs/.nojekyll
