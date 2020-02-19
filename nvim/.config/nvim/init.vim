set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-tmux-navigator'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'rhysd/git-messenger.vim'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'
Plug 'psliwka/vim-smoothie'
Plug 'easymotion/vim-easymotion'
Plug 'edkolev/tmuxline.vim'
Plug 'freitass/todo.txt-vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'arcticicestudio/nord-vim'
Plug 'haya14busa/is.vim'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'sinetoami/lightline-hunks'
" Plug 'haya14busa/incsearch.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'sainnhe/gruvbox-material'
" Plug 'bling/vim-bufferline'
" Plug 'sainnhe/artify.vim'
" Plug 'itchyny/vim-gitbranch'
" Plug 'macthecadillac/lightline-gitdiff'
" Plug 'maximbaz/lightline-ale'
" Plug 'albertomontesg/lightline-asyncrun'
" Plug 'rmolin88/pomodoro.vim'
" Plug 'morhetz/gruvbox'
" Plug 'SirVer/ultisnips'
" Plug 'lifepillar/vim-gruvbox8'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'mhinz/vim-signify'
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'blueyed/vim-diminactive'
" Plug 'yuttie/comfortable-motion.vim'
" Plug 'vim-syntastic/syntastic'
" Plug 'hynek/vim-python-pep8-indent'
" Plug 'majutsushi/tagbar'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Plug 'liuchengxu/vista.vim'
" Plug 'dense-analysis/ale'
" Plug 'tmhedberg/SimpylFold'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'junegunn/limelight.vim'
" Plug 'junegunn/goyo.vim'
" Plug 'vim-scripts/indentpython.vim'
" Plug 'joshdick/onedark.vim'
" Plug 'KeitaNakamura/neodark.vim'
" Plug 'jacoborus/tender.vim'
" Plug 'airblade/vim-gitgutter'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'reedes/vim-pencil'
" Plug 'gabrielelana/vim-markdown'
" Plug 'plasticboy/vim-markdown'
" Plug 'freitass/todo.txt-vim'
" Plug 'rakr/vim-one'
" All of your Plugins must be added before the following line
call plug#end()            " required

filetype plugin indent on    " required
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
" let g:markdown_folding = 1
" set foldlevel=0
" set foldmethod=indent
" set foldcolumn=1
" set foldlevelstart=0

"" Airline options
""" Enable powerline fonts
" let g:airline_powerline_fonts = 1
""""" Enable the tabline
" let g:airline#extensions#tabline#enabled = 1
""""" Change how files appear in the tabline
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline_focuslost_inactive = 1

"""""""""""""""""""""""""""""""""""
" COLORSCHEME
"""""""""""""""""""""""""""""""""""
" let g:gruvbox_italic=1
set background=dark
" colorscheme gruvbox
" let g:gruvbox_material_background = 'medium'
" let g:gruvbox_material_enable_italic = 1
" let g:gruvbox_material_enable_bold = 1
" let g:gruvbox_material_palette = 'original'
" let g:gruvbox_material_visual = 'blue background'
" let g:gruvbox_material_transparent_background = 1
colorscheme nord
" let g:airline_theme = 'gruvbox_material'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '%I:%M %p',
      \'c'    : '#W',
      \'win'  : '#I #W',
      \'cwin' : '#F #I #W',
      \'x'    : '',
      \'y'    : '%A, %B %d',
      \'z'    : ''}
let g:tmuxline_status_justify = 'centre'
let g:bufferline_echo = 0
let g:bufferline_active_buffer_left = ''
let g:bufferline_active_buffer_right = ''
let g:bufferline_show_bufnr = 0

set showtabline=2

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'lightline_hunks'],
	\             [ 'filetype',],
	\             [ 'readonly', ] ],
	\   'right':[ [ 'status_diagnostic',],
	\             [ 'fileformat']],
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
	\   'currentfunction': 'CocCurrentFunction',
	\   'fugitive': 'LightlineFugitive',
	\   'filetype': 'MyFiletype',
	\   'fileformat': 'MyFileformat',
	\   'lightline_hunks': 'lightline#hunks#composer',
	\   'status_diagnostic': 'StatusDiagnostic',
	\ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ [''] ],
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers',
      \   'gitstatus': 'GitStatus',
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel',
      \ },
      \ }

let g:lightline.separator = { 'left': "", 'right': "" }
let g:lightline.subseparator = { 'left': "", 'right': "" }
let g:lightline#bufferline#filename_modifier = ":t"
let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#number_separator = ". "
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#clickable = 1
let g:lightline.component_raw = {'buffers': 1}

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, ' ' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, ' ' . info['warning'])
  endif
  return join(msgs, ' ')
endfunction

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

function! LightlineFugitive()
    let _ = fugitive#head()
    return strlen(_) ? ' '._ : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
" let g:airline_theme = 'gruvbox8'
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
" set relativenumber " This sets relative line numbers

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
" nmap <leader>L :Limelight!!<CR>
" Move to the next buffer
nmap L :bnext<CR>

" Move to the previous buffer
nmap H :bprevious<CR>

" Show all open buffers and their status
" nmap <leader>bl :ls<CR>
" Open .vimrc in new buffer
nmap <leader>v :e ~/.config/nvim/init.vim<CR>
" Open todo.txt in new buffer
nmap <leader>t :e ~/Dropbox/todo/todo.txt<CR>
" Open zsh config
nmap <leader>z :e ~/.zshrc<CR>
" Re-source .vimrc
nmap <leader>rs :source %<CR>
" Delete buffer
nmap <leader>d :bp\|bd #<CR>
" PlugInstall
nmap <leader>i :PlugInstall<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

" Launch Goyo
" nmap <leader>g :Goyo<CR>

" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When on uses space instead of tabs
" set tabstop     =4
" set softtabstop =4
" set shiftwidth  =4
" set expandtab
autocmd FileType Jenkinsfile setlocal shiftwidth=2 softtabstop=2 expandtab
" Shift to the next round tab stop.
set shiftround

" Tagbar Toggle
" nmap <leader>t :TagbarToggle<CR>

" " Launch NERDTree
" map <C-n> :NERDTreeToggle<CR>
" Close NERDTree after opening a file
" let NERDTreeQuitOnOpen = 1
" Start NERDTree when opening VIM
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Disable NERDTREE C-j/C-k keys to reduce tmux motion interference
" let g:NERDTreeMapJumpNextSibling = '<Nop>'
" let g:NERDTreeMapJumpPrevSibling = '<Nop>'

" Custom NERDTree colors
" if (colorscheme=="gruvbox")
" highlight link NERDTreeDir GruvboxBlue
" highlight link NERDTreeDirSlash GruvboxBlue
" highlight link NERDTreeLinkFile GruvboxBlue
" highlight link NERDTreeOpenable GruvboxBlue
" highlight link NERDTreeCloseable GruvboxBlue
" highlight link NERDTreeFlags GruvboxYellow
" highlight link NERDTreeCWD GruvboxPurple
" endif

" let NERDTreeMinimalUI = 1 " Hides help at top of window

" set hlsearch " Enable Highlight Search
" set incsearch " Highlight while search
set nohlsearch
set ignorecase " Case Insensitivity Pattern Matching
set smartcase " Overrides ignorecase if pattern contains upcase
set cursorline

" Keep search results at the center of screen
" nnoremap n nzz
" nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap { {zz
nnoremap } }zz

" noremap <silent> <leader><cr> :noh<cr> " Press <leader> Enter to remove search highlights

" Custom goyo functions with Tmux
" function! s:goyo_enter()
"   if executable('tmux') && strlen($TMUX)
"     silent !tmux set status off
"     silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
"   endif
"   set noshowcmd
"   set scrolloff=999
"   Limelight
"   " ...
" endfunction

" function! s:goyo_leave()
"   if executable('tmux') && strlen($TMUX)
"     silent !tmux set status on
"     silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
"   endif
"   set showcmd
"   set scrolloff=5
"   Limelight!
"   " ...
" endfunction

" autocmd! User GoyoEnter nested call <SID>goyo_enter()
" autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Signify options
let g:signify_realtime = 1
hi SignColumn guibg=none
hi GruvboxGreenSign guibg=none
hi GruvboxAquaSign guibg=none
hi GruvboxRedSign guibg=none
" Set up PEP-8 Formatting
" au BufNewFile,BufRead *.py
"     \ set tabstop=4 |
"     \ set softtabstop=4 |
"     \ set shiftwidth=4 |
"     \ set textwidth=79 |
"     \ set expandtab |
"     \ set autoindent |
"     \ set fileformat=unix |

" let g:SimpylFold_docstring_preview=1

" Mark bad whitespace red
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" let g:syntastic_python_checkers = ['python']
" let g:syntastic_python_python_exec = 'python3'


"""""""""""""""""""""
" CoC settings
"""""""""""""""""""""""""""""""
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Set transparency
set winblend=0
set pumblend=0
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
" nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <C-d> <Plug>(coc-range-select)
" xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Search files
nnoremap <silent> <space>f  :<C-u>CocList files<cr>
" Show yanked lines
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
" Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" Hotkey to open explorer
nmap ge :CocCommand explorer<CR>
" let g:UltiSnipsExpandTrigger = "<nop>"
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_next = '<Tab>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
let g:coc_snippet_prev = '<S-Tab>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Navigate snippet placeholders using tab
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

" function! s:check_back_space() abort
" 	  let col = col('.') - 1
" 	    return !col || getline('.')[col - 1]  =~# '\s'
"     endfunction

"Run python script
" noremap <F5> :w !python "%"<CR>
" inoremap <F5> <ESC>:w !python "%"<CR>

" Sets indentLine_color_gui to gray
" let g:indentLine_color_gui = '#282828'
let g:indentLine_char = ''

" EasyMotion settings

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
 " `s{char}{label}`
 nmap s <Plug>(easymotion-overwin-f2)
 " or
 " `s{char}{char}{label}`
 " Need one more keystroke, but on average, it may be more comfortable.
 " nmap s <Plug>(easymotion-overwin-f2)

 " Turn on case-insensitive feature
 let g:EasyMotion_smartcase = 1

 " JK motions: Line motions
 " map <Leader>j <Plug>(easymotion-j)
 " map <Leader>k <Plug>(easymotion-k)

" <Leader>f{char} to move to {char}
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
" Gif config
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)

" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)
set hlsearch
" let g:incsearch#auto_nohlsearch = 1
" map n  <Plug>(incsearch-nohl-n)
" map N  <Plug>(incsearch-nohl-N)
" map *  <Plug>(incsearch-nohl-*)
" map #  <Plug>(incsearch-nohl-#)
" map g* <Plug>(incsearch-nohl-g*)
" map g# <Plug>(incsearch-nohl-g#)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
" let g:diminactive_enable_focus = 1
" hi ColorColumn guibg=#32302f
augroup BgHighlight
    autocmd!
    " autocmd FocusGained * let g:gruvbox_contrast_dark = 'medium' | colorscheme gruvbox | AirlineRefresh
    " autocmd FocusGained * colorscheme gruvbox8 | set cursorline | AirlineRefresh
    " autocmd FocusGained * AirlineRefresh
    autocmd FocusGained * set cursorline
    " autocmd FocusLost * colorscheme gruvbox8_soft | set nocursorline | AirlineRefresh
    " autocmd FocusLost * AirlineRefresh
    autocmd FocusLost * set nocursorline
augroup END

