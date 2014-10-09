#!/bin/bash

script_name=`readlink -f ${0}`
script_path=`dirname ${script_name}`

run_time=`date +%Y%m%d%H%M`

if [ -e ${HOME}/.dircolors ]
then
    mv -v ${HOME}/.dircolors ${HOME}/.dircolors.bak.${run_time}
fi
ln -s `readlink -f ${script_path}/dircolors` ${HOME}/.dircolors

if [ -e ${HOME}/.vim ] 
then
    mv -v ${HOME}/.vim ${HOME}/.vim.bak.${run_time}
fi
ln -s `readlink -f ${script_path}/vim` ${HOME}/.vim

if [ -e ${HOME}/.i3 ] 
then
    mv -v ${HOME}/.i3 ${HOME}/.i3.bak.${run_time}
fi
ln -s `readlink -f ${script_path}/i3` ${HOME}/.i3

echo "> Please change console profile to use solarized scheme <"
