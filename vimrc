" must be first, because it changes other options as side effect
set nocompatible

" use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#incubate()
call pathogen#helptags()

set t_Co=256      " set color range
colorscheme xoria256  " select color scheme

filetype plugin indent on " enable file type and indent

syntax on         " switch on syntax highlighting

set hidden        " hides buffers instead of closing preserving changes
set tabstop=2     " a tab is four spaces
set shiftwidth=2  " number of spaces to use for autoindenting
set softtabstop=2 " recognise multiple spaces as tabstops
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set expandtab     " insert spaces instead of tab character
set autoindent    " always set autoindenting on
set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type 
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.o,*.class,.git,.svn
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup      " prevent vim writing backup files
set noswapfile
set showmode      " show the current mode
"set showcmd       " show current command
set wildmenu      " improve command line completion
set wrapscan      " search scan to wrap lines
set mouse+=a      " enable mouse use in all modes, copy/paste witout line numbers between apps(MMB)

" system default for mappings is now the "," character
let mapleader = ","

" in insert mode, disable autoindent while pasting
set pastetoggle=<F2>

" window navigation
map <C-left> <C-w>h
map <C-down> <C-w>j
map <C-up> <C-w>k
map <C-right> <C-w>l

" save current buffer
nmap <leader>s :w<CR>

" close current buffer
nmap <leader>x :bw<CR>
nmap <leader>xx :bw!<CR>

" quit current window
nmap <leader>q :quit<CR>
nmap <leader>qq :quit!<CR>

" window split horizontal
nmap <leader>hh :split<CR>

" window split vertical
nmap <leader>vv :vsplit<CR>

" window resize 
noremap <S-left> :vertical resize -10<CR>
noremap <S-down> :resize -10<CR>
noremap <S-up> :resize +10<CR>
noremap <S-right> :vertical resize +10<CR>

" allow editing root files
cmap w!! w !sudo tee % >/dev/null

" clear highlighted searches
nmap <silent> <leader>n :nohlsearch<CR>

"---------------------------------------------------------------------
" NERDTree Settings
"---------------------------------------------------------------------
let NERDTreeShowBookmarks=1
nmap <leader>o :NERDTreeToggle<CR>

" allow vim to close if only tree view
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"---------------------------------------------------------------------
" Buffergator Settings
"---------------------------------------------------------------------
let g:buffergator_viewport_split_policy = 'R'
let g:buffergator_suppress_keymaps = 1
nmap <leader>b :BuffergatorToggle<CR> 

"---------------------------------------------------------------------
" Gundo Settings
"---------------------------------------------------------------------
nmap <leader>u :GundoToggle<CR>

"---------------------------------------------------------------------
" NERDCommenter Settings
"---------------------------------------------------------------------
" comment code with <leader>cc
" toggle comment with <leader>c<space>

"---------------------------------------------------------------------
" Syntastic Settings
"---------------------------------------------------------------------
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_quiet_warnings = 1
let g:syntastic_cpp_compiler_options = ' -std=c++11'
nmap <leader>e :Errors<CR>

"-----------------------------------------------------------------------------
" XPTemplate settings
"-----------------------------------------------------------------------------
let g:xptemplate_key = '<Tab>'
"let g:xptemplate_brace_complete = ''
set runtimepath+=~/.vim/xpt-personal

"-----------------------------------------------------------------------------
" FSwitch mappings
"-----------------------------------------------------------------------------
nmap <silent> ,of :FSHere<CR>
nmap <silent> ,ol :FSRight<CR>
nmap <silent> ,oL :FSSplitRight<CR>
nmap <silent> ,oh :FSLeft<CR>
nmap <silent> ,oH :FSSplitLeft<CR>
nmap <silent> ,ok :FSAbove<CR>
nmap <silent> ,oK :FSSplitAbove<CR>
nmap <silent> ,oj :FSBelow<CR>
nmap <silent> ,oJ :FSSplitBelow<CR>

"-----------------------------------------------------------------------------
" CtrlP mappings
"-----------------------------------------------------------------------------
let g:ctrlp_map = '<leader>f'
let g:ctrlp_cmd = 'CtrlP'

