" ******************************************************************************
" file: vimrc
" desc: vim configuratie
" date: 2016-04
" auth: dirk
" ******************************************************************************

" plugins laden
execute pathogen#infect()

syntax on                         " syntax highlighing
filetype on                       " try to detect filetypes

set number                        " regelnummering aan
syntax on                         " set syntax on
set ic                            " case insensitive search
set hls                           " highlight search
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅    " weergave spaties op einde regel etc

set ruler                         " toon regelnummer
set scrolloff=4                   " toon altijd boven, onder regels
set cursorline                    " toon regelcursor

" veel tabinstellingen, ze lijken niet allemaal nodig, werkt nu goed in python scripts
set textwidth=119 " lines longer than 79 columns will be broken
" set tabstop=4     " a hard TAB displays as 4 columns
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

filetype plugin indent on         " enable loading indent file for
set showmatch                     " show the matching part of the pair for [] {} and ()
color blue                        " colors


" *** syntastic instellingen ***
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5      " toon max regels met meldingen


" NERDTree, file browser
let NERDTreeShowHidden=1          " toon hidden files en directories
let NERDTreeIgnore=['\.pyc$', '\~$', '\.txt']
let NERDTreeQuitOnOpen=1          " sluit nerdtree nadat bestand gekozen is
let NERDTreeShowBookmarks = 1     " toon bookmarks
map <F3> :NERDTreeToggle<CR>      " map NERDTree met F3


map <F7> :TlistToggle<CR>
" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1


" mapping voor opslaan en laden werkomgeving
map <F11> :mksession! ~/vim_session <cr> " Quick write session with
map <F12> :source ~/vim_session <cr>     " And load session with


" mapping voor Tagbar, 201604
nmap <F8> :TagbarToggle<CR>
" nmap <S-F8> :TagbarOpen fj<CR>


" configuratie vim-airline, 201604
set laststatus=2

" color blue                        " colors
colorscheme blackboard

" 2016-07, markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" afwijkende config voor markdown
autocmd bufreadpre *.md setlocal textwidth=80

let g:tlist_markdown_settings = 'markdown;h:Headlins'


" ga naar laatste positie in het bestand
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

autocmd FileType markdown setlocal foldmethod=syntax
autocmd FileType markdown setlocal spell
autocmd FileType markdown setlocal spelllang=nl

" eof 

