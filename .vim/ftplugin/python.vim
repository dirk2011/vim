"*******************************************************************************
" vim configuratie voor python
"*******************************************************************************

set number                        " regelnummering aan
syntax on                         " set syntax on
set ic                            " case insensitive search
set hls                           " highlight search

set ruler                         " toon regelnummer
set scrolloff=10                  " toon altijd boven, onder regels
set cursorline                    " toon regelcursor

set textwidth=119                 " lines longer than 79 columns will be broken
set colorcolumn=110,129           " kleur deze kolommen                                                             

" veel tabinstellingen, ze lijken niet allemaal nodig, werkt nu goed in python scripts
" set tabstop=4     " a hard TAB displays as 4 columns
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

filetype plugin indent on         " enable loading indent file for
set showmatch                     " show the matching part of the pair for [] {} and ()

" python keys
nnoremap <silent> <F5> :!clear;python %<CR>
nnoremap <silent> <F9> :!clear;idle %<CR>
" nnoremap <silent> <F9> :!clear;python -m pdb %<CR>

" 'za' to open and close a fold
set foldmethod=indent
set foldlevel=9

" eof
"
