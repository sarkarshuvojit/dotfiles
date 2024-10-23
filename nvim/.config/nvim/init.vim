" disable creation of .swp (swap) files 
set noswapfile
set so=15

" Per line character guide
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(400,999),",")

" set space as leader
" but also remove mapping from Space
nnoremap <SPACE> <Nop>
let mapleader=' '

" hybrid line numbers
set number relativenumber
set nu rnu

" indentation details
filetype plugin indent on 
filetype plugin on

" set tab size
set tabstop=4

" set tab space when indenting blocks of code 
set shiftwidth=4

" on pressing tab, expand into 4 spaces
set expandtab

" Remap ii to esc 
inoremap ii <Esc>

call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ayu-theme/ayu-vim' " or other package manager
    Plug 'Yggdroot/indentLine'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/playground'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    " Git support
    Plug 'tpope/vim-fugitive'
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdtree'
    " Note Keeping
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'puremourning/vimspector'

    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/nvim-treesitter-context'

    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    Plug 'kdheepak/lazygit.nvim'

    " Project-Wide Search
    Plug 'mileszs/ack.vim'

    " Splash Screen
    Plug 'mhinz/vim-startify'

call plug#end()


" Theme/Color Scheme Configuration
set termguicolors
let ayucolor="dark"
colorscheme ayu

" Bg Transparent
hi Normal guibg=NONE ctermbg=NONE

" IndentLine {{
let g:indentLine_char = '▏'
let g:indentLine_first_char = '▏'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" " }}

" Paste Toggle
set pastetoggle=<F2>

" CtrlP calls telescope files
nnoremap <C-P> <cmd>Telescope find_files<cr>

" Load lang rules for js
" autocmd Filetype javascript source ./lang/javascript.vim

" Toggle NerdTreeWindow
nmap <leader>nt <cmd>NERDTreeToggle <CR>


" Git Configuration
"   Shortucts 

" git status
" nmap <leader>gs :G <CR>
nmap <leader>gs :LazyGit <CR>

" git commit 
nmap <leader>gc :G commit <CR>

" git commit 
nmap <leader>gp :G push <CR>

" jump to definition
nmap <leader>jd <Plug>(coc-definition)

" jump to references
nmap <leader>jr <Plug>(coc-references)

" smart rename symbol
nmap <leader>rs <Plug>(coc-rename)

" search symbol
nmap <leader>@ :CocList outline <CR>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Use <Tab> <S-Tab> to navigate coc list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Airline Config
" Only uses first chars for folders
" /home/shuvojit/workspace/file.py becomes /h/s/w/file.py
let g:airline_section_c = '%{pathshorten(expand(''%:f''))}'

" Telescope Shorcuts
nnoremap <C-P> <cmd>Telescope find_files prompt_prefix=🔍<cr>
nmap <leader>p <cmd>Telescope commands prompt_prefix=🔍<cr>
nmap <leader>b <cmd>Telescope buffers prompt_prefix=🔍<cr>
nmap <leader>ca <Plug>(coc-codeaction)



" FileType based indentation
filetype on
filetype indent on
filetype plugin on
filetype indent plugin on


" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Golang shortcuts
autocmd FileType go nmap <leader>b  <cmd>GoBuild<CR>
autocmd FileType go nmap <leader>r  <cmd>GoRun<CR>
autocmd FileType go nmap <leader>t  <cmd>GoTest<CR>

" NerdTree Line numbers
" =======================

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber


" NerdTree Line numbers
" =======================
" ack.vim --- {{{

" Use ripgrep for searching ⚡️
" Options include:
" --vimgrep -> Needed to parse the rg response properly for ack.vim
" --type-not sql -> Avoid huge sql file dumps as it slows down the search
" --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

" Auto close the Quickfix list after pressing '<enter>' on a list item
let g:ack_autoclose = 1

" Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1

" Don't jump to first match
cnoreabbrev Ack Ack!

" Maps <leader>/ so we're ready to type the search keyword
nnoremap <Leader>/ :Ack!<Space>
" }}}

" Navigate quickfix list with ease
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
