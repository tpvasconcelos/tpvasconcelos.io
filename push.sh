#!/usr/bin/env sh
cd src/ && \
  mkdocs build && \
  printf "tomasvasconcelos.com" > ../docs/CNAME
  git ca "mkdocs build" && \
  git push