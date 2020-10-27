set nocompatible
syntax on

set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
"set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"""" enable 24bit true color (for Rigel)
"set termguicolors

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"lightline needs this
set laststatus=2
set noshowmode


call plug#begin('~/.config/nvim/pulgged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
"Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
"Plug 'git@github.com:ycm-core/YouCompleteMe.git'
Plug 'mbbill/undotree'

Plug 'mxw/vim-jsx'
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'

Plug 'itchyny/lightline.vim'

"https://gist.github.com/benfrain/4fe3aa3f54101d4565911998218ed724
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" https://github.com/nickjj/dotfiles/blob/master/.vimrc
" Zoom in and out of a specific split pane (similar to tmux).
Plug 'dhruvasagar/vim-zoom'
" Pass focus events from tmux to Vim (useful for autoread and linting
" tools).
Plug 'tmux-plugins/vim-tmux-focus-events'
"" Navigate and manipulate files in a tree view.
Plug 'scrooloose/nerdtree'
" Helpers for moving and manipulating files / directories.
Plug 'tpope/vim-eunuch'
"" Launch Ranger from Vim.
Plug 'francoiscabrol/ranger.vim'
" Run a diff on 2 directories.
Plug 'will133/vim-dirdiff'
"" Run a diff on 2 blocks of text.
Plug 'AndrewRadev/linediff.vim'
" Add spelling errors to the quickfix list (vim-ingo-library is a dependency).
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-SpellCheck'
" Briefly highlight which text was yanked.
Plug 'machakann/vim-highlightedyank'"
" Handle multi-file find and replace.
Plug 'mhinz/vim-grepper'
" Better display unwanted whitespace.
Plug 'ntpeters/vim-better-whitespace'
"" Toggle comments in various ways.
Plug 'tpope/vim-commentary'"
" Show git file changes in the gutter.
Plug 'mhinz/vim-signify'
" WAL theme
Plug 'dylanaraps/wal.vim'
" Languages and file types.
Plug 'cakebaker/scss-syntax.vim'
Plug 'chr4/nginx.vim'
Plug 'chrisbra/csv.vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'jvirtanen/vim-hcl'
Plug 'lifepillar/pgsql.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'stephpy/vim-yaml'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-git'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-rails'
Plug 'vim-python/python-syntax'
Plug 'vim-ruby/vim-ruby'
Plug 'wgwoods/vim-systemd-syntax'


" Color Schemes
Plug 'franbach/miramare'
Plug 'stillwwater/vim-nebula'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'relastle/bluewery.vim'
Plug 'gilgigilgil/anderson.vim'
Plug 'Rigellute/rigel'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'

Plug 'neovim/nvim-lspconfig'

Plug 'nvim-lua/completion-nvim'

call plug#end()

" enable ts syntax highlight
" https://medium.com/@s1n7ax/neovim-for-typescript-react-development-fdc7082c8a78
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

"colorscheme wal
colorscheme gruvbox
set background=dark

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require'nvim_lsp'.tsserver.setup{ on_attach=require'completion'.on_attach }

"colorscheme rigel
"let g:rigel_lightline = 1
"let g:lightline = { 'colorscheme': 'rigel' }

"colorscheme bluewery
"let g:lightline = { 'colorscheme': 'bluewery' }

"let g:rigel_airline = 1
"let g:airline_theme = 'rigel'


if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
"nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
"nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
"nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
"nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

" Sweet Sweet FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
