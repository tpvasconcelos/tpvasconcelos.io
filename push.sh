#!/usr/bin/env sh
cd docs/ && \
  mkdocs gh-deploy --config-file ../src/mkdocs.yml --remote-branch master