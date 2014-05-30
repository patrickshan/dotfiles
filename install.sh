#!/bin/bash

script_name=`readlink -f ${0}`
script_path=`dirname ${script_name}`

ln -s `readlink -f ${script_path}/dircolors` ${HOME}/.dircolors
ln -s `readlink -f ${script_path}/vimrc` ${HOME}/.vimrc
ln -s `readlink -f ${script_path}/vim` ${HOME}/.vim

echo "> Please change console profile to use solarized scheme <"
