" default instellingen voor vim

syntax on                         " syntax highlighing
filetype on                       " try to detect filetypes
filetype plugin indent on         " enable loading indent file for

set number                        " regelnummering aan
syntax on                         " set syntax on
set ic                            " case insensitive search
set hls                           " highlight search
color blue                        " colors

set ruler                         " toon regelnummer
set scrolloff=4                   " toon altijd boven, onder regels
set cursorline                    " toon regelcursor
set colorcolumn=100,120           " kleur deze kolommen

" veel tabinstellingen, ze lijken niet allemaal nodig, werkt nu goed in python scripts
set textwidth=119 " lines longer than 79 columns will be broken
" set tabstop=4     " a hard TAB displays as 4 columns
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

set showmatch                     " show the matching part of the pair for [] {} and ()

execute pathogen#infect()

" NERDTree, file browser
let NERDTreeShowHidden=1          " toon hidden files en directories
let NERDTreeIgnore=['\.pyc$', '\~$']
map <F3> :NERDTreeToggle<CR>      " map NERDTree met F3

" functietoetsen om python uit voeren
nnoremap <silent> <F5> :!clear;python %<CR>
nnoremap <silent> <F9> :!clear;python -m pdb %<CR>

map <F7> :TlistToggle<CR>

" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" sessies
map <F11> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F12> :source ~/vim_session <cr>     " And load session with F3

" kleuren schema
" colorscheme base
" colorscheme lanox
colorscheme blackboard

" eof 