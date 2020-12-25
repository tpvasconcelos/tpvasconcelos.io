#!/usr/bin/env sh
cd src/ && \
  mkdocs build && \
  echo -n "tomasvasconcelos.com" > ../docs/CNAME
  git ca "mkdocs build" && \
  git push