# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = OpenChicagoDocs
SOURCEDIR     = .
BUILDDIR      = _build
GH_PAGES_SOURCES = index.rst guide/ _static _templates/ conf.py Makefile


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

site:
	git checkout gh-pages
	rm -rf _build guide _static _sources _templates
	git checkout master $(GH_PAGES_SOURCES)
	git reset HEAD
	make html
	cp -r _build/html/* ./
	rm -rf _build index.rst conf.py Makefile
	echo "openchicago.pierwill.com" > CNAME
	touch .nojekyll
	git add -A
	git commit -m "Generate gh-pages for `git log master -1 --pretty=short --abbrev-commit`" && \
	git push origin gh-pages; git checkout master
