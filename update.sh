#!/bin/bash
export GIT_COMMITTER_DATE="1970-01-01T00:00:00.000Z"
git checkout --orphan tmp \
  && git add . \
  && git commit --date "1970-01-01T00:00:00.000Z" -m "update" \
  && git branch -D main \
  && git branch -m main \
  && lucky_commit \
  && git push -f
