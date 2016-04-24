"*******************************************************************************
" vim configuratie voor sql
"*******************************************************************************

set number                        " regelnummering aan
syntax on                         " set syntax on
set ic                            " case insensitive search
set hls                           " highlight search

set ruler                         " toon regelnummer
set scrolloff=10                  " toon altijd boven, onder regels
set cursorline                    " toon regelcursor

" veel tabinstellingen, ze lijken niet allemaal nodig, werkt nu goed in python scripts
set textwidth=119                  " lines longer than 79 columns will be broken
" set tabstop=4                    " a hard TAB displays as 4 columns
set shiftwidth=10                  " operation >> indents 4 columns; << unindents 4 columns
set expandtab                      " insert spaces when hitting TABs
set softtabstop=10                 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround                     " round indent to multiple of 'shiftwidth'
set autoindent                     " align the new line indent with the previous line

filetype plugin indent on         " enable loading indent file for
set showmatch                     " show the matching part of the pair for [] {} and ()

" eof

