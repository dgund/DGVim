# DGVim
My .vimrc for customizing the [Vim](https://www.vim.org) text editor.

## Installation
### 1. Get [DGVim](https://github.com/dgund/DGVim)

Clone DGVim from this Github repository to the folder `~/.vim/DGVim` and create a symlink from `~/.vimrc` to the .vimrc

    $ git clone https://github.com/dgund/DGVim.git ~/.vim/DGVim
    $ ln -s ~/.vim/DGVim/.vimrc ~/.vimrc

### 2. Get Vundle

DGVim uses [Vundle](https://github.com/gmarik/Vundle.vim) as a plugin manager. Vundle will install the rest of the plugins, but first it must be downloaded.

    $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

### 3. Install Plugins

Now that the .vimrc and Vundle have been downloaded, use Vundle to install the rest of the plugins. In Vim,

    :PluginInstall

The default plugins are:
- [fugitive.vim](https://github.com/tpope/vim-fugitive) - provides a Git wrapper for Vim
- [matchit.zip](https://github.com/vim-scripts/matchit.zip) - provides extended % matching for HTML, LaTeX, and many other languages
- [NERD Tree](https://github.com/scrooloose/nerdtree) - provides a tree structure visualisation of files and directories
- [Solarized](http://ethanschoonover.com/solarized) colorscheme - provides a precision color scheme for vim
- [vim-airline](https://github.com/bling/vim-airline) - provides a light status line / tabline
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) - provides customizable themes for vim-airline

The included plugins can be easily changed by editing the .vimrc.

### 4. Start using Vim and customize the .vimrc and plugins for an optimal experience!
