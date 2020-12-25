#!/usr/bin/env sh
cd src/ && \
  mkdocs build && \
  git ca "mkdocs build" && \
  git push