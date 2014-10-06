vim-config
==========

My vim configuration

Install
=======

* clone this repo

```
git clone git@github.com:patrickshan/vim-config.git
```

* install essential links

```
./install.sh
```

* install ShowTrailingWhitespace:

```
vim vim/ShowTrailingWhitespace-1.01.vmb
:so %
```

* install vundle and all the plugins managed by vundle

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
```

* install YouCompleteMe library

```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```

Reference
=========

* dircolors is used to fix GNU dircolors for solarized which is from [/seebi/dircolors-solarized](https://github.com/seebi/dircolors-solarized)

* showtrailingwhitespace is using [ShowTrailingWhitespace by Ingo Karkat](http://vim.sourceforge.net/scripts/script.php?script_id=3966).

* vundle a vim plugins manager [gmarik/Vundle.vim](https://github.com/gmarik/Vundle.vim)

* YouCompleteMe a vim code-completion engine [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
