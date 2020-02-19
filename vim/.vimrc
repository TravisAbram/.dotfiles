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
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'morhetz/gruvbox'
Plugin 'godlygeek/tabular'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mhinz/vim-signify'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'majutsushi/tagbar'
" Plugin 'nvie/vim-flake8'
" Plugin 'tmhedberg/SimpylFold'
" Plugin 'ycm-core/YouCompleteMe'
" Plugin 'junegunn/limelight.vim'
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin 'junegunn/goyo.vim'
" Plugin 'ryanoasis/vim-devicons'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'joshdick/onedark.vim'
" Plugin 'KeitaNakamura/neodark.vim'
" Plugin 'jacoborus/tender.vim'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plugin 'reedes/vim-pencil'
" Plugin 'gabrielelana/vim-markdown'
" Plugin 'plasticboy/vim-markdown'
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

" Adds fix for tmux colors
if (has("termguicolors"))
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
" endif

set encoding=utf-8

" Fold Options
let g:markdown_folding = 1
set foldlevel=99
set foldmethod=indent
" set foldcolumn=1
" set foldlevelstart=1

" Airline options
"" Enable powerline fonts
let g:airline_powerline_fonts = 1
"" Enable the tabline
let g:airline#extensions#tabline#enabled = 1
"" Change how files appear in the tabline
"let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnamemod = ':t'

"""""""""""""""""""""""""""""""""""
" COLORSCHEME
"""""""""""""""""""""""""""""""""""
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox

" colorscheme tender
" let g:airline_theme = 'tender'

" colorscheme neodark
" " let g:neodark#use_256color = 1
" let g:neodark#solid_vertsplit = 1

" colorscheme onedark
" let g:airline_theme='onedark'
" let g:onedark_hide_endofbuffer = 1
" let g:onedark_terminal_italics=1

" Enable mouse support
set mouse=n
" set ttymouse=xterm2 " Vim only

syntax on " Enables syntax highlighting

set number " This adds the line number in the gutter
set relativenumber " This sets relative line numbers

set noshowmode " This hides the default INSERT etc messages
set ttimeoutlen=10 " Minimizes airline update lag when switching between INSERT and NORMAL
set clipboard=unnamed " Allows for using OSX clipboard as * register
set linebreak " Wraps lines at the word

" Remapping for faster escape key
imap jk <Esc>

" Remap for easier window switching among splits
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

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
nmap <leader>n :enew<cr>

" Toggle Limelight
nmap <leader>L :Limelight!!<CR>
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
nmap <leader>v :e ~/.dotfiles/vim/.vimrc<CR>
" Re-source .vimrc
nmap <leader>r :source %<CR>
" Delete buffer
nmap <leader>d :bp\|bd #<CR>
" PluginInstall
nmap <leader>i :PluginInstall<CR>

" Launch Goyo
nmap <leader>g :Goyo<CR>

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
map <C-n> :NERDTreeToggle<CR>
" Close NERDTree after opening a file
let NERDTreeQuitOnOpen = 1
" Start NERDTree when opening VIM
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Disable NERDTREE C-j/C-k keys to reduce tmux motion interference
let g:NERDTreeMapJumpNextSibling = '<Nop>'
let g:NERDTreeMapJumpPrevSibling = '<Nop>'

" Custom NERDTree colors
" if (colorscheme=="gruvbox")
highlight link NERDTreeDir GruvboxBlue
highlight link NERDTreeDirSlash GruvboxBlue
highlight link NERDTreeLinkFile GruvboxBlue
highlight link NERDTreeOpenable GruvboxBlue
highlight link NERDTreeCloseable GruvboxBlue
highlight link NERDTreeFlags GruvboxYellow
highlight link NERDTreeCWD GruvboxPurple
" endif

let NERDTreeMinimalUI = 1 " Hides help at top of window

set hlsearch " Enable Highlight Search
set incsearch " Highlight while search
set ignorecase " Case Insensitivity Pattern Matching
set smartcase " Overrides ignorecase if pattern contains upcase

" Keep search results at the center of screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" noremap <silent> <leader><cr> :noh<cr> " Press <leader> Enter to remove search highlights

" Custom goyo functions with Tmux
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Signify options
let g:signify_realtime = 1

" Set up PEP-8 Formatting
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" let g:SimpylFold_docstring_preview=1

" Mark bad whitespace red
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" YouCompleteMe settings
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:syntastic_python_checkers = ['python']
let g:syntastic_python_python_exec = 'python3'
