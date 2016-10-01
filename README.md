# DGVim
My .vimrc for customizing the [Vim] text editor.

##Installation
####1. Get [DGVim]

**Using [Git]:** Clone DGVim from this Github repository to the folder `~/.vim/DGVim` and create a symlink from `~/.vimrc` to the .vimrc

    $ git clone https://github.com/dgund/DGVim.git ~/.vim/DGVim
    $ ln -s ~/.vim/DGVim/.vimrc ~/.vimrc
    
**Manually:** Download the source as a ZIP and move the contained files to a new folder `~/.vim/DGVim` and create a symlink to the .vimrc

    $ ln -s ~/.vim/DGVim/.vimrc ~/.vimrc
    
**Manually without symlink:** Download the source as a ZIP and move the contained .vimrc to `~/.vimrc`

####2. Get Vundle

DGVim uses [Vundle] as a plugin manager. Vundle will install the rest of the plugins, but first it must be downloaded.

    $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

####3. Install Plugins

Now that the .vimrc and Vundle have been downloaded, use Vundle to install the rest of the plugins. In Vim,

    :PluginInstall

The default plugins are:
- [fugitive.vim] - provides a Git wrapper for Vim
- [matchit.zip] - provides extended % matching for HTML, LaTeX, and many other languages
- [NERD Tree] - provides a tree structure visualisation of files and directories
- [Solarized] colorscheme - provides a precision color scheme for vim
- [vim-airline] - provides a light status line / tabline
- [vim-airline-themes] - provides customizable themes for vim-airline

The included plugins can be easily changed by editing the .vimrc.

####4. Start using Vim and customize the .vimrc and plugins for an optimal experience!

[Vim]:http://www.vim.org
[DGVim]:https://github.com/dgund/DGVim
[Git]:http://git-scm.com
[Vundle]:https://github.com/gmarik/Vundle.vim
[fugitive.vim]:https://github.com/tpope/vim-fugitive
[matchit.zip]:https://github.com/vim-scripts/matchit.zip
[NERD Tree]:https://github.com/scrooloose/nerdtree
[Solarized]:http://ethanschoonover.com/solarized
[vim-airline]:https://github.com/bling/vim-airline
[vim-airline-themes]:https://github.com/vim-airline/vim-airline-themes
