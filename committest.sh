#!/bin/bash
if [ git status -s == ""]; then
  git add ./;
  git commit -m "Adding test results.";
  git push origin HEAD:master;
fi
