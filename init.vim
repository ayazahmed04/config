" move b/w the buffers in the most best way
nnoremap <C-N> :bprev<CR>
nnoremap <C-M> :bnext<CR>

"remove the up left down and right arrow because they heve been causing a lot
"of disturbance
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


source $HOME/.config/nvim/vim-plug/plugins.vim
 autocmd FileType json syntax match Comment +\/\/.\+$+

 "Map leader key in the most best way of editing in the preception 
"let mapleader = "\"

"My one of the most best of finding in the function 
noremap <space> :NERDTreeToggle<cr>

"Exit the insert mode after creating a new line above or below the current line
"noremap o o<esc>
"noremap O O<esc>

"yank from the cursor to the end of the line in the most best way 
noremap Y y$

"split the key in the most best way 
"We can split the window in nvim by typing the command 
":split :vsplit

"Navigating the split view easier by pressing CTRL + j, CTRL + k, CTRL + h or
"CTRL + l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-s> :w<cr>


"Resize the split windows using the arrow key by pressing : 
"CTRL + UP , CTRL + DOWN , CTRL + LEFT  or CTRL + RIGHT
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
noremap <c-[> <Esc>

" Map the F3 key to toggle NERDTree open and close 
nnoremap <F3> :NERDTreeToggle<cr>

""Press \\ to jump back to the last cursor position
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


" used for the inmaping of the best way 
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


"Now adding the extra plugins for the development
set number
"set cursorline
"set cursorcolumn
"set shift width to be equal to the 4 spaces
set shiftwidth=4
"set tab width to 4 columns
set tabstop=4

"DOn't save the backup of the files
set nobackup
"Don't making the lines to be wrap
set nowrap
"While searching through the files highlight matching character as you type
set incsearch
"Ignore capital letters during search
set ignorecase
"OverRide the ignorecase option if searching for the capital letters
set smartcase
"Show partial command you type in the last line of the screen 
set showcmd
"Show the mode you are on the last lineoset showmode
set showmode
"Show matching the words during a search 
set showmatch
"Using highligh when doing search
set hlsearch
"Set the command to save in history default number is 20.
set history=5000

"Now we are adding the auto complete for the nvim
"
"Make wildmenu behaves simillar to like the bash menu 
"set wildmode=list:longest
"there are the lot of files i never want to be edit with the VIM
"	Wild menu will ignore files with this extension  => it's may be adding the
"	spaces in the best way 



"STATUS LINE
"----------------------------------------------- {{{

"Clear status line when vimrc is reloaded 
set statusline=

" STATUS line left side
set statusline+=\ %F\ %M\ %Y\ %R

"USe a divider to separate teh left side from the right side.
set statusline+=%=

"Status line right side 
"set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %1\ col:\ %c\ percent:\ %p%%

"Show the statusline on the second last line
set statusline=2

" }}}



"Disable compatible with the vim that has been shown the many errors 
set nocompatible 
"Detect the file type which will be able to try to detect the type of file is
"use
filetype on
"Enable plugins and load Plugin for the detected file type. 
filetype plugin on
" Load an Indent file for the detected file type.
filetype indent on
" Turn syntax highlighting on.
syntax on
"Use space chracter instead of the tabs
set expandtab
"DON't let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10
" Do not wrap lines. Allow long lines to extend as far as the goes. 
set nowrap
"SHwo the mode you are on the last line
set showmode
