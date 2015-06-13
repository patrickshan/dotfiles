vim-config
==========

vim configuration

Install
=======

* clone this repo

* create symlink from ${HOME}/.vim to this directory

* vim will automatically install all the plugins during its first run

* Use :NeoBundleUpdate to update/install plugins

Shortcuts
=========

Most of these shortcuts are used in normal mode by default

|Key combination  | Description
|:--------------- | :---------------------------
|&lt;Leader&gt;c        | :PymodeLint &lt;CR&gt;
|&lt;Leader&gt;w        | Ctrl+w switch between views
|&lt;Leader&gt;u        | switch upper level between views
|&lt;Leader&gt;d        | switch lower level between views
|&lt;Leader&gt;W        | save file
|&lt;Leader&gt;v        | visual mode blockwise
|&lt;Leader&gt;&lt;Leader&gt; | visual mode linewise

Reference
=========

* dircolors is used to fix GNU dircolors for solarized which is from [/seebi/dircolors-solarized](https://github.com/seebi/dircolors-solarized)

* NeoBundle a vim plugins manager [Shougo/neobundle.vim](https://github.com/Shougo/neobundle.vim)

* YouCompleteMe a vim code-completion engine [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
