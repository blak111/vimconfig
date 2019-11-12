#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

mv "$DIR" "${HOME}/.vim"
ln -s "${HOME}/.vim/.vimrc" "${HOME}/.vimrc"
