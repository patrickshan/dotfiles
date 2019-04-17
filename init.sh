#!/bin/bash


run_time=`date +%Y%m%d%H%M`
os_name=`uname -s`

if [[ '${os_name}' == 'Darwin' ]]; then
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
    # adding a dot in the beginning
    destname=.${3:-$confname}

    if [[ -e ${HOME}/$destname ]]
    then
        mv -v ${HOME}/$destname ${HOME}/$destname.bak.${run_time}
    fi
    ln -sf ${script_path}/$sourcename ${HOME}/$destname
}

updatelink 'dircolors' 'dircolors-solarized/dircolors.256dark'

updatelink 'zshrc'

updatelink 'vim'

updatelink 'i3' 'i3' 'config/i3'

updatelink 'screenrc'

updatelink 'gitconfig'

updatelink 'mplayer'

if [[ ${os_name} == 'Darwin' ]]; then
    updatelink 'Brewfile'
    updatelink 'git.subconfig' 'git.subconfig.mac'
elif [[ ${os_name} == 'Linux' ]]; then
    updatelink 'git.subconfig' 'git.subconfig.linux'
fi

git submodule update --init --recursive

echo "> Please change console profile to use solarized scheme <"
