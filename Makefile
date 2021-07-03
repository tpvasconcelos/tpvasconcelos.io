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
PYTHON ?= .venv/bin/python


# ==============================================================
# ---  Main goals
# ==============================================================

.PHONY: init
init: clean-all ## initialise development environment
	python3.7 -m pip install --upgrade pip virtualenv
	python3.7 -m virtualenv -p python3.7 .venv
	$(PYTHON) -m pip install --upgrade pip
	$(PYTHON) -m pip install mkdocs==1.2.1 mkdocs-material==7.1.9


.PHONY: build
build: ## build mkdocs
	$(MAKE) -C src/ build


.PHONY: publish
publish: ## build and publish mkdocs
	$(MAKE) -C src/ publish


# ==============================================================
# ---  Clean
# ==============================================================

.PHONY: clean-all
clean-all: clean-pyc clean-venv ## remove all artifacts


.PHONY: clean-pyc
clean-pyc: ## remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +


.PHONY: clean-venv
clean-venv: ## remove venv artifacts
	rm -fr .venv
