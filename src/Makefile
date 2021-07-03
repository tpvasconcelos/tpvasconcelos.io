# ==============================================================
# ---  Help goal
# ==============================================================

.DEFAULT_GOAL := help

define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT

.PHONY: help
help:
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)


# ==============================================================
# ---  Variables
# ==============================================================

PYTHON ?= ../.venv/bin/python


# ==============================================================
# ---  Main goals
# ==============================================================

.PHONY: build
build: ## build mkdocs
	$(PYTHON) -m mkdocs build
	printf "tomasvasconcelos.com" > ../docs/CNAME


.PHONY: publish
publish: build ## build and publish mkdocs
	git add .
	git commit -m "mkdocs build"
	git push
