if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
" Coc <3
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" JS
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

" Airline for the tabs
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'honza/vim-snippets'

" Unpaired
Plug 'tpope/vim-unimpaired'

" One dark theme
Plug 'joshdick/onedark.vim'

" Comments
Plug 'tomtom/tcomment_vim'

" Best plugin ever
Plug 'tpope/vim-surround'

" Every one should have a pair (Autogenerate pairs for "{[( )
Plug 'jiangmiao/auto-pairs'

" Navigation tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Git Diff
Plug 'airblade/vim-gitgutter'

" Vim Fugitive
Plug 'tpope/vim-fugitive'

" Vim Gitlabs
Plug 'shumphrey/fugitive-gitlab.vim'

" Multple cursors is hot
Plug 'terryma/vim-multiple-cursors'

""" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

" CoolIcons
Plug 'ryanoasis/vim-devicons'

" Ruby
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

" Run code with ,r
Plug 'xianzhon/vim-code-runner'

call plug#end()

" Indent Stuff

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? coc#rpc#request('doKeymap', ['snippets-expand-jump','']) :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

""" Ruby Stuff
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END

" Syntax highlighting and theme
syntax enable

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

set ignorecase

nnoremap <C-e> :NERDTreeToggle<CR>
set clipboard=unnamedplus

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Personal Configuration "

" Leader with ,
let mapleader=","

" Show number
set number

" show the cursor position.
set ruler

" More itens on history
set ruler

" Show incomplete commands
set showcmd

" Wildmenu for the win
set wildmenu

" Keep 5 lines on z enter.
set scrolloff=5

" High Light search
set hlsearch
set incsearch

" Backup files and backup dir
set backup
set backupdir=~/.backups

" Line Wrap
set lbr

" Follow last identation
set ai
set si "Smart Ident =D

" Remove highlights with leader + enter
nmap <Leader><CR> :nohlsearch<cr>


" Save file with leader w
map <leader>w :w!<CR>
map <C-s> :w!<CR>
map <leader>W :wall!<CR>
map <leader>n :bn<CR>
map <leader>p :bp<CR>
map <leader>b :Buffers<CR>
map <leader>F :Ag 

" Close a buffer
map <leader>d :bd!<CR>

" Edit multiple buffers
set hidden

nmap <C-p> :FZF<CR>

set ai sw=2 sts=2

" Colorscheme
set termguicolors
colorscheme onedark
set bg=dark

" Tabs for
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" Change tabs with , + 1...9
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Change tabs with ALT + 1...9
nmap <M-1> <Plug>AirlineSelectTab1
nmap <M-2> <Plug>AirlineSelectTab2
nmap <M-3> <Plug>AirlineSelectTab3
nmap <M-4> <Plug>AirlineSelectTab4
nmap <M-5> <Plug>AirlineSelectTab5
nmap <M-6> <Plug>AirlineSelectTab6
nmap <M-7> <Plug>AirlineSelectTab7
nmap <M-8> <Plug>AirlineSelectTab8
nmap <M-9> <Plug>AirlineSelectTab9

" Terminal integrated with F4
let g:term_buf = 0
function! Term_toggle()
  1wincmd w
  if g:term_buf == bufnr("")
    setlocal bufhidden=hide
    close
  else
    topleft vnew
    try
      exec "buffer ".g:term_buf
    catch
      call termopen("zsh", {"detach": 1 })
      let g:term_buf = bufnr("")
    endtry
    startinsert!
  endif
endfunction
nnoremap <f4> :call Term_toggle()<cr>

" Exit from terminal
:tnoremap <F5> <C-\><C-n>

nmap <silent><leader>B <plug>CodeRunner

" Vim-Fugitive
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gb :Gbrowse<CR>
nmap <leader>ga :Git add .<CR>:bd!<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gl :Glog
nmap <leader>ge :Gedit<CR>
nmap <leader>gh :Git checkout
nmap <leader>gg :Git pull<CR>
nmap <leader>gm :Git checkout master

" Recommend to run it first: git config --global push.default current
nmap <leader>gp :Git push<CR>bd!

" Rails Stuff
nmap <leader>rt :A<CR>
nmap <leader>rm :Emodel<CR>
nmap <leader>rc :Econtroller<CR>
nmap <leader>rv :Eview<CR>

nmap <leader>rwt :AV<CR>
nmap <leader>rwm :Vmodel<CR>
nmap <leader>rwc :Vcontroller<CR>
nmap <leader>rwv :Vview<CR>


" Personal configurations

let g:gitlab_api_keys = {'gitlab.com': 'your-api-key'}

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
