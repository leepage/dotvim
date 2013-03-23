" must be first, because it changes other options as side effect
set nocompatible

" use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#incubate()
call pathogen#helptags()

set hidden        " hides buffers instead of closing preserving changes
set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set expandtab     " insert spaces instead of tab character
set softtabstop=2 " recognise multiple spaces as tabstops
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type 

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup      " prevent vim writing backup files
set noswapfile

filetype plugin indent on

" assign the color scheme
set t_Co=256
colorscheme xoria256
syntax on

" assign command leader key
let mapleader = ","

set list          " enable whitespace highlighing
set listchars=trail:.,extends:#,nbsp:.

" in insert mode, press <F2> to disable autoindent
set pastetoggle=<F2>

" use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" prevent jumping long lines spanning multiple lines
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-left> <C-w>h
map <C-down> <C-w>j
map <C-up> <C-w>k
map <C-right> <C-w>l

" clear highlighted searches
nmap <silent> <leader>. :nohlsearch<CR>

" allow editing root files
cmap w!! w !sudo tee % >/dev/null

" change trigger key for XPT template from default <C-\>
let g:xptemplate_key = '<Tab>'

" open tree view if no files specified
autocmd vimenter * if !argc() | NERDTree | endif

" toggle tree view
map <silent> <leader>n :NERDTreeToggle<CR>

" allow vim to close if only tree view
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDcommenter toggle
" comment code with <leader>cc
" uncomment code with <leader>c<space>

" buffer view
let g:buffergator_viewport_split_policy = 'R'
let g:buffergator_suppress_keymaps = 0
nnoremap <silent> <Leader>b :BuffergatorToggle<CR>

" :xa save all and exit
" :qa discard all and exit
