#!/bin/bash


run_time=`date +%Y%m%d%H%M`

if [[ `uname` == 'Darwin' ]]; then
    if ! which greadlink 2>&1 >/dev/null
    then
        echo "Please install coreutils first:\n\tbrew install coreutils"
        exit 2
    fi
    readlink_cmd='greadlink'
else
    readlink_cmd='readlink'
fi

script_name=`${readlink_cmd} -f ${0}`
script_path=`dirname ${script_name}`

function updatelink {
    confname=$1
    sourcename=${2:-$confname}

    if [[ -e ${HOME}/.$confname ]]
    then
        mv -v ${HOME}/.$confname ${HOME}/.$confname.bak.${run_time}
    fi
    ln -sf ${script_path}/$sourcename ${HOME}/.$confname
}

updatelink 'dircolors' 'dircolors-solarized/dircolors.256dark'

updatelink 'zshrc'

updatelink 'vim'

updatelink 'i3'

updatelink 'screenrc'

updatelink 'gitconfig'

updatelink 'mplayer'

if [[ `uname` == 'Darwin' ]]; then
    updatelink 'Brewfile'
fi

git submodule update --init --recursive

echo "> Please change console profile to use solarized scheme <"
