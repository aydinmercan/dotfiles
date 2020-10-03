" [Base Neovim]

" indentation
filetype plugin indent on
" syntax highlight
syntax on
" show commands/selections
set showcmd
set showmatch
" sane indentation behaviour
set autoindent
set copyindent
" line numbering
set number
" show title
set title
" large undo
set undofile
set undolevels=1000
set undoreload=10000
" system clipboard integration
if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
else
    set clipboard=unnamed
endif
" disable default statusline
set noshowmode
" sane encoding/binary working
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
" i changed my mind, tabs are not necessary
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" add a little more bump when scrolling off edge
set scrolloff=3
set sidescrolloff=5
" don't push yourself too hard for trying to draw everything
set lazyredraw
" block selection
set virtualedit=block
" wildignore
set wildmode=list:longest,list:full
set wildignore+=*.o,*.d,*.obj,*.git,*.rbc,*.pyc,__pycache__,*.exe,*.elf,cscope.*,tags*,*.svn,*.hg,
            \build,dist,*sites/*/files/*,*/obj/*,bin,node_modules,bower_components,cache,compiled,
            \docs,example,bundle,vendor,*.md,*-lock.json,*.lock,*bundle*.js,*build*.js,.*rc*,*.json,
            \*.min.*,*.map,*.bak,*.zip,*.pyc,*.class,*.sln,*.Master,*.csproj,*.tmp,*.csproj.user,*.cache,
            \*.pdb,*.css,*.less,*.scss,*.dll,*.mp3,*.ogg,*.flac,*.swp,*.swo,*.bmp,*.gif,*.ico,*.jpg,*.png,
            \*.rar,*.zip,*.tar,*.tar.*,*.pdf,*.doc,*.docx,*.ppt,*.pptx

" Symbol support
set guifont=Symbols\ Nerd\ Font:h12
" sane mapleader
let g:mapleader = ','
" too slow to type properly everytime
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qa! qa!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qa qa
" help page is useless, i don't want it
nnoremap <F1> <ESC>
inoremap <F1> <ESC>
" clear search highlight with ^/
nmap <C-_> :nohlsearch<CR>
" regex goodness
set magic
nnoremap / /\v
vnoremap / /\v
" use Q as a macro quickloader
nnoremap Q @q
" split nav with control dir
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
nnoremap tv :vsplit<CR>
nnoremap th :split<CR>
"tab nav with alt
nnoremap <A-h> gT
nnoremap <A-l> gt
nnoremap <A-j> :tabm -1<CR>
nnoremap <A-k> :tabm +1<CR>
"tab management with t leader
nnoremap tn :tabnew<CR>
nnoremap tq :tabclose<CR>
"so that line wraps are per terminal line not per global line
nnoremap j gj
nnoremap k gk
set mouse=ni
" Sane mail composing
au BufNewFile,BufRead *.neomuttrc set filetype=neomuttrc
au BufNewFile,BufRead /tmp/mutt-* set tw=72

" [Plugins]

"" [NeoFormat]
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_c_clang_format = {
            \ 'exe': 'clang-format',
            \ 'args': ['-style=~/.clang-format'],
            \ }
let g:neoformat_cpp_clang_format = {
            \ 'exe': 'clang-format',
            \ 'args': ['-style=~/.clang-format'],
            \ }
let g:neoformat_enabled_c = ['clangformat']
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_java = ['clangformat']
let g:neoformat_enabled_javascript = ['clangformat']
nmap <C-f> :Neoformat<CR>

"" [Vim-Polyglot]
let g:polyglot_disabled = ['v'] " I want verilog not some stupid snakeoil

"" [Vim-Airline]
let g:lightline = {
            \ 'colorscheme': 'seoul256',
            \ 'active': {
            \   'left': [ ['mode', 'paste'],
            \             ['readonly', 'filename', 'modified'] ]
            \ },
            \ }

"" [FZF]
nnoremap <C-m> :FZF<CR>


"" [VimTeX]
let g:tex_flavor = "latex" " I don't really use plain tex

"" [NERDCommenter]
let g:NERDSpaceDelims = 1

"" [Rainbow]
let g:rainbow_active = 1
let g:rainbow_conf = {
            \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
            \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \   'guis': [''],
            \   'cterms': [''],
            \   'operators': '_,_',
            \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \   'separately': {
            \       '*': 0,
            \       'lisp': {
            \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \       },
            \       'scheme': {
            \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \       },
            \   }
            \}

"" [Vim-Wiki]
let g:vimwiki_list = [{'path': '~/docs/vimwiki', 'syntax': 'markdown'}]

"" [Vim-Plug]
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf.vim' " fzf is just the best
Plug 'junegunn/vim-easy-align' " lazy allignment aid
Plug 'itchyny/lightline.vim' " best statusline
Plug 'ntpeters/vim-better-whitespace' " be gone whitespace
Plug 'sbdchd/neoformat' " formatting aid
Plug 'lervag/vimtex' " latex stuff
Plug 'preservim/nerdcommenter' " sane commenting
Plug 'jalvesaq/nvim-r' " r stuff
Plug 'sheerun/vim-polyglot' " uber languagepack
Plug 'isaacmorneau/vim-update-daily' " plugin name says all
Plug 'luochen1990/rainbow'
Plug 'junegunn/seoul256.vim'
Plug 'vimwiki/vimwiki'
Plug 'kylelaker/riscv.vim'
call plug#end()

let g:seoul256_background=233
let g:seoul256_light_background=233
colo seoul256
hi Normal ctermbg=none
