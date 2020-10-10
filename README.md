vimrc
============
ONE-STEP INSTALL
----------------

Use curl:

     curl -o - https://raw.githubusercontent.com/bennettip/vimrc/master/auto-install.sh | sh

or wget:

     wget -O - https://raw.githubusercontent.com/bennettip/vimrc/master/auto-install.sh | sh

Basic vimrc only:

     curl -o - https://raw.githubusercontent.com/bennettip/vimrc/master/auto-install-basic.sh | sh

or wget:

     wget -O - https://raw.githubusercontent.com/bennettip/vimrc/master/auto-install-basic.sh | sh

MANUALLY INSTALL
----------------

1. Check out from github

        git clone git://github.com/bennettip/vimrc.git ~/.vim
        cd ~/.vim
        git submodule update --init

2. Install ~/.vimrc and ~/.gvimrc

        ./install-vimrc.sh

MANUALLY INSTALL ON WINDOWS
---------------------------

1. Check out from github

        cd C:\Program Files\Vim   (or your installed path to Vim)
        rmdir /s vimfiles         (This deletes your old vim configurations. If you want to keep it, use move instead of rmdir.)
        git clone git://github.com/bennettip/vimrc.git vimfiles
        git submodule update --init

2. Install vimrc. Add the following line at the end of C:\Program Files\Vim\vimrc.

        source $VIM/vimfiles/vimrc



INSTALL & UPGRADE PLUGIN BUNDLES
--------------------------------

All plugins were checked out as git submodules,
which can be upgraded with `git pull`. For example, to upgrade NERDTree

     cd ~/.vim/bundle/nerdtree
     git pull

To install a new plugin as a git submoudle, type the following commands.

     cd ~/.vim
     git submodule add [GIT-REPOSITORY-URL] pack/[PLUGIN-NAME]/start/[PLUGIN-NAME]

HOW TO USE
----------

see the "USEFUL SHORTCUTS" section in vimrc to learn my shortcuts.

PLUGINS
-------

* [Nerd Tree](https://github.com/scrooloose/nerdtree): tree explorer plugin for navigating the filesystem.

  Useful commands:
    `:Bookmark [name]` - bookmark any directory as name
    `:NERDTree [name]` - open the bookmark [name] in Nerd Tree

* [vim-visual-multi](https://github.com/mg979/vim-visual-multi): multiple cursors plutin for Vim.

* [vim-surround](https://github.com/tpope/vim-surround): deal with pairs of surroundings.

* [matchit](https://www.vim.org/scripts/script.php?script_id=39): extended % matching for HTML, LaTeX, and many other languages.

* [xmledit](https://github.com/sukima/xmledit): XML/HTML tags will be completed automatically.

* [snipMate](https://github.com/garbas/vim-snipmate): TextMate-style snippets for Vim

  `:help snipMate` to see more info.

* [VisIncr](https://www.vim.org/scripts/script.php?script_id=670): produce increasing/decreasing columns of numbers, dates, or daynames.

* [Cute Error Marker](https://www.vim.org/scripts/script.php?script_id=2653): showing error and warning icons on line.

   MacVim users need to enable "Use experimental renderer" to see
   graphical icons.

* [vim-latex](https://github.com/vim-latex/vim-latex): LaTeX support.

* [JavaComplete](https://www.vim.org/scripts/script.php?script_id=1785): Java Omni-completion.

* [EasyMotion](https://github.com/Lokaltog/vim-easymotion): an easy way to jump to a word.

  Useful commands:
    `<Leader><Leader>w` forward EasyMotion
    `<Leader><Leader>b` backward EasyMotion

* [TagBar](https://majutsushi.github.com/tagbar): browsing the tags of source files ordered by classes.

  Useful commands:
    `F7` toggles the TagBar

* [indent-motion](https://github.com/tmhedberg/indent-motion): Vim motions to the start and end of the current indentation-delimited block

  Useful commands:
    `<Leader>]` move to the end of the current indentation-delimited block (very useful in Python and CoffeeScript)
    `<Leader>[` move to the beginning of the current indentation-delimited block (very useful in Python and CoffeeScript)

* [Emmet-vim](https://github.com/mattn/emmet-vim): expanding abbreviations like emmet.

  Useful commands:
    `<ctrl-y>,` expand emmet abbreviation.

* [ack.vim](https://github.com/mileszs/ack.vim): run ag/ack (a better grep) from vim, and shows the results in a split window.

  `:Ack [options] {pattern} [{directory}]`

* [Git Gutter](https://github.com/airblade/vim-gitgutter): show a git diff in the sign column. It shows whether lines have been added, modified, or removed.

* [Asynchronous Lint Engine](https://github.com/dense-analysis/ale): check syntax in Vim asynchronously and fix files.

* [vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty): React syntax highlighting and indenting plugin for vim.

* [Node.vim](https://github.com/moll/vim-node): tools to make Vim superb for developing with Node.js.

* [fugitive.vim](https://github.com/tpope/vim-fugitive): a Git wrapper plugin for Vim.

* [fzf.vim](https://github.com/junegunn/fzf.vim): a fzf wrapper plugin for Vim.

* [vim-python-pep8-indent](https://github.com/Vimjas/vim-python-pep8-indent): modifies Vim's indentation behavior to comply with PEP 8.

Language specific supports
--------------------------

* LaTeX: Read `:help latex-suite.txt`
* Restructured Text: `ctrl-u 1~5` inserts Part/Chapter/Section headers
* HTML/XML: End tags are automatically completed after typing a begin tag. (Typing > twice pushes the end tag to a new line.)

Other good references
---------------------

* https://github.com/amix/vimrc
* https://spf13.com/post/perfect-vimrc-vim-config-file
