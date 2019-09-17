vimrc
============
ONE-STEP INSTALL
----------------

Use curl (for macOS):

     curl -o - https://raw.githubusercontent.com/bennettip/vimrc/master/auto-install.sh | sh

or wget (for most UNIX platforms):

     wget -O - https://raw.githubusercontent.com/bennettip/vimrc/master/auto-install.sh | sh
     
basic vimrc:

     wget -O - https://raw.githubusercontent.com/bennettip/vimrc/master/auto-install-basic.sh | sh

MANUALLY INSTALL
----------------

1. Check out from github

        git clone git://github.com/bennettip/vimrc.git ~/.vim
        cd ~/.vim
        git submodule update --init

2. Install ~/.vimrc and ~/.gvimrc

        ./install-vimrc.sh

3. (Optional, if you want Command-T) Compile the Command-T plugin

        cd .vim/bundle/command-t/ruby/command-t
        ruby extconf.rb
        make

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
which can be upgraded with `git pull`. For example, to upgrade Command-T 

     cd ~/.vim/bundle/command-t
     git pull

To install a new plugin as a git submoudle, type the following commands.

     cd ~/.vim
     git submodule add [GIT-REPOSITORY-URL] bundle/[PLUGIN-NAME]

HOW TO USE
----------

see the "USEFUL SHORTCUTS" section in vimrc to learn my shortcuts.

PLUGINS
-------

* [Pathogen](http://www.vim.org/scripts/script.php?script_id=2332): Pathogen let us install a plugin as a bundle in ~/.vim/bundle seprately.

* [Nerd Tree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for navigating the filesystem.

  Useful commands:   
    `:Bookmark [name]` - bookmark any directory as name   
    `:NERDTree [name]` - open the bookmark [name] in Nerd Tree   

* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): True Sublime Text style multiple selections for Vim.

* [vim-surround](https://github.com/tpope/vim-surround): deal with pairs of surroundings.

* [matchit](http://www.vim.org/scripts/script.php?script_id=39): extended % matching for HTML, LaTeX, and many other languages. 

* [xmledit](https://github.com/sukima/xmledit): XML/HTML tags will be completed automatically.

* [Command-T](https://github.com/wincent/Command-T): open and navigate between files with `cmd-t`.
  
* [snipMate](https://github.com/garbas/vim-snipmate): TextMate-style snippets for Vim

  `:help snipMate` to see more info.

* [YankRing](http://www.vim.org/scripts/script.php?script_id=1234): Maintains a history of previous yanks, changes and deletes 
  
  `:help yankring` to see more info.

* [VisIncr](http://www.vim.org/scripts/script.php?script_id=670): Produce increasing/decreasing columns of numbers, dates, or daynames.
  
* [Cute Error Marker](http://www.vim.org/scripts/script.php?script_id=2653): showing error and warning icons on line.
  
   MacVim users need to enable "Use experimental renderer" to see
   graphical icons.

* [vim-latex](https://github.com/vim-latex/vim-latex): Latex support.

* [JavaComplete](http://www.vim.org/scripts/script.php?script_id=1785): Java Omni-completion.

* [EasyMotion](https://github.com/Lokaltog/vim-easymotion): An easy way to jump to a word.

  Useful commands:   
    `,,w` forward EasyMotion   
    `,,b` backward EasyMotion   

* [TagBar](http://majutsushi.github.com/tagbar): browsing the tags of source files ordered by classes.

  Useful commands:    
    `F7` toggles the TagBar

* [Indent Motion](https://www.vim.org/scripts/script.php?script_id=3724): Vim motions to the start and end of the current indentation-delimited block 

  Useful commands:    
    `,]` move to the end of the current indentation-delimited block (very useful in Python and CoffeeScript)
    `,[` move to the beginning of the current indentation-delimited block (very useful in Python and CoffeeScript)

* [Emmet.vim](https://www.vim.org/scripts/script.php?script_id=2981): expanding abbreviation like emmet.

  Useful commands:
    `<ctrl-y>,` expand emmet abbreviation.

* [ack.vim](https://github.com/mileszs/ack.vim): run ack (a better grep) from vim, and shows the results in a split window.

  `:Ack [options] {pattern} [{directory}]`

* [Git Gutter](https://github.com/airblade/vim-gitgutter): shows a git diff in the 'gutter' (sign column). It shows whether each line has been added, modified, and where lines have been removed.

* [syntastic](https://github.com/vim-syntastic/syntastic): syntax checking hacks for vim.

* [vim-jsx](https://github.com/mxw/vim-jsx): React JSX syntax highlighting and indenting for vim. 

* [Node.vim](https://github.com/moll/vim-node): tools to make Vim superb for developing with Node.js.

Language specific supports
--------------------------

* Latex: Read `:help latex-suite.txt`
* Restructured Text: `ctrl-u 1~5` inserts Part/Chapter/Section headers
* HTML/XML: End tags are automatically completed after typing a begin tag. (Typing > twice pushes the end tag to a new line.)

Other good references
---------------------

* http://amix.dk/vim/vimrc.html
* http://spf13.com/post/perfect-vimrc-vim-config-file
