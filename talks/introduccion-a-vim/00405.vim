                                                                                         ______________________________________________________________________________
                                                                                        |              |
                                                                                        | 3.-          |  Básicos
                                                                                        |______________|


         .-.
        /'v'\
       (/   \)
========'="="===< 
         |_|
         *
         *

         
         

         *

                                     $ cat $HOME/.vimrc | head
                                            set nocompatible
                                            syntax on
                                            filetype plugin indent on
                                            set backspace=indent,eol,start
                                            setlocal omnifunc=syntaxcomplete#Complete
                                            set expandtab
                                            set incsearch
                                            set cursorline
                                            set clipboard=unnamedplus
                                            autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif
