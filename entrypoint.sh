#!/bin/sh

set -e

git config --global user.name "Anc"
git config --global user.email "anc136k@gmail.com"

sh -c "hexo g -d"
