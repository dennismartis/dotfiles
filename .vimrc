set nocompatible           " disable backwards compatibility with vi
filetype plugin indent on  " enable filetype plugins and indent
syntax enable              " enable syntax highlighting
set incsearch              " highlight matches as you type
set hlsearch               " highlight matches once a search is complete
set clipboard=unnamed      " use system clipboard

" map leader to space
map <Space> <Leader>

" faster navigation
nnoremap H ^	" goto start of line
nnoremap L g_
nnoremap J 5j
nnoremap K 5k
vnoremap J 5j
vnoremap K 5k
nnoremap <Leader>j J
nnoremap <Leader>k K

" Improved window navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-\> <c-w>w

" clear search highlight
nnoremap <Leader><Space> :noh<CR>

" Create new tab with no name
map <Leader>tt :tabedit<CR>
" " Create new tab with a file for editing
" " Since there's no <CR> it allows you to specify a filename.
" " The name of a new file to create or an existing one.
map <Leader>te :tabedit
" " Close all tabs but the active one
map <Leader>to :tabonly<CR>

" map ; to :
nnoremap ; :
"
" " Remember that ; and , where used to repeat character searches
" " fix command that you shadowed with the prevoius one
nnoremap <Leader>; ;
" " for symmetry add the following command
nnoremap <Leader>, ,

" Toggle paste mode
set pastetoggle=<F2>

nnoremap <leader>p "*p

" Replace all is aliased to S
nnoremap S :%s//g<Left><Left>

" Enable statusline
set laststatus=2


set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage

