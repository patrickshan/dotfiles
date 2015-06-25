#!/bin/bash

script_name=`readlink -f ${0}`
script_path=`dirname ${script_name}`

run_time=`date +%Y%m%d%H%M`

function updatelink {
    $confname = $1
    $sourcename = $2
    if [[ $sourcename == '' ]]
    then
        $sourcename=$confname
    fi

    if [[ -e ${HOME}/.$confname ]]
    then
        mv -v ${HOME}/.$confname ${HOME}/.$confname.bak.${run_time}
    fi
    ln -s `readlink -f ${script_path}/$sourcename` ${HOME}/.$confname
}

updatelink 'dircolors' 'dircolors-solarized/dircolors.256dark'

updatelink 'zshrc'

updatelink 'vim'

updatelink 'i3'

updatelink 'screenrc'

updatelink 'ackrc'

echo "> Please change console profile to use solarized scheme <"
