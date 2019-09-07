set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
" Plugin 'scrooloose/nerdtree'
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'joshdick/onedark.vim'
Plugin 'godlygeek/tabular'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'ryanoasis/vim-devicons'
" Plugin 'reedes/vim-pencil'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'gabrielelana/vim-markdown'
" Plugin 'freitass/todo.txt-vim'
" Plugin 'rakr/vim-one'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
" if (empty($TMUX))
if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
" endif

" Polyglot Options
" let g:polyglot_disabled = ["markdown"]


" Airline options
" Set airline them
let g:airline_theme='onedark'
" Enable powerline fonts
let g:airline_powerline_fonts = 1
" Enable the tabline
let g:airline#extensions#tabline#enabled = 1
" Change how files appear in the tabline
"let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnamemod = ':t'


" Markdown extension options
" let g:markdown_enable_spell_checking = 0


" Sets the colorscheme
colorscheme onedark
" Hides trailing buffer characters at the end of the file
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics=1


" Enable mouse support
set mouse=n
set ttymouse=xterm2

" Enables syntax highlighting
syntax on

" Adds line numbers to the left
set number
"set relativenumber


set noshowmode
" Minimizes airline update lag when switching between INSERT and NORMAL
set ttimeoutlen=10
" Allows for using OSX clipboard as * register
set clipboard=unnamed
" Wraps lines at the word
set linebreak

" Remapping for faster escape key
imap jk <Esc>

" Remap for easier window switching among splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" More naturally sets the new split below or to the right
set splitbelow
set splitright

" Set map leader key
:let mapleader = " "

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Open .vimrc in new buffer
nmap <leader>v :e ~/.vimrc<CR>
" Re-source .vimrc
nmap <leader>r :source %<CR>
" Delete buffer
nmap <leader>d :bd<CR>

" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When on uses space instead of tabs
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

" Shift to the next round tab stop.
set shiftround

" Launch NERDTree
" map <C-n> :NERDTreeToggle<CR>
" map <C-n> :Vex<CR>

" Disable NERDTREE C-j/C-k keys
" let g:NERDTreeMapJumpNextSibling = '<Nop>'
" let g:NERDTreeMapJumpPrevSibling = '<Nop>'

" Home & End should be placed next to each other
nnoremap - $

" Enable Highlight Search
" set hlsearch
" Highlight while search
set incsearch
" Case Insensitivity Pattern Matching
set ignorecase
" Overrides ignorecase if pattern contains upcase
set smartcase
" Keep search results at the center of screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Press <leader> Enter to remove search highlights
" noremap <silent> <leader><cr> :noh<cr>
